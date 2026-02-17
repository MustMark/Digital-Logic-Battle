library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

use IEEE.NUMERIC_STD.ALL;



entity vga_controller is

    Port ( 

		  clk_25MHz : in STD_LOGIC;   -- 25 MHz clock input
		  round_in : in STD_LOGIC_VECTOR (3 downto 0);

		  p1_hp : in STD_LOGIC_VECTOR (3 downto 0);

		  p2_hp : in STD_LOGIC_VECTOR (3 downto 0);

		  winner : in STD_LOGIC_VECTOR (1 downto 0);
		  p1_act : in STD_LOGIC_VECTOR (1 downto 0);
		  p2_act : in STD_LOGIC_VECTOR (1 downto 0);
		  

        hsync : out STD_LOGIC;



        vsync : out STD_LOGIC;



        red   : out STD_LOGIC;



        green : out STD_LOGIC;



        blue  : out STD_LOGIC);



        



end vga_controller;



architecture Behavioral of vga_controller is



    constant H_ACTIVE      : integer := 640;    -- Visible pixels



    constant H_SYNC_PULSE  : integer := 96;     -- Sync pulse pixels



    constant H_TOTAL       : integer := 799;



    constant V_ACTIVE      : integer := 480;    -- Visible lines



    constant V_SYNC_PULSE  : integer := 2;      -- Sync pulse lines



    constant V_TOTAL       : integer := 524;



    signal x : integer range 0 to 799 := 0;  -- Horizontal pixel position



    signal y : integer range 0 to 524 := 0;  -- Vertical line position





type player_pic_type is array (0 to 33) of std_logic_vector(26 downto 0);

constant player_pic : player_pic_type := (

	 "000000000000000000000000100",

    "000000000000000000000001010",

    "000000000000000000000001010",

    "000000000000000000000001010",

    "000000000000000001000001010",

    "000000000000000010100001010",

    "000000000000000100010001010",

    "000000000000011000010001010",

    "000000000000100000010001010",

    "000000000000101111010001010",

    "000000000000111111110001010",

    "000000000000110111010011111",

    "000000000000110111011001110",

    "000000000000111000111000100",

    "000000000000111111111001010",

    "000000000000011111110010010",

    "000000000000010110100100100",

    "000000000000100000011001000",

    "000000000001000000000010000",

    "000000000010000110000100000",

    "000000001101001111001000000",

    "000111111000100110010000000",

    "111111110001100000010000000",

    "111111100011100000010000000",

    "111111100111101111010000000",

    "111111111111110000110000000",

    "011111111111000000010000000",

    "011111111111000000010000000",

    "011111111111000010001000000",

    "001111111110000111001000000",

    "000111111100001111100100000",

    "000000111100011111100100000",

    "000000000100110011110010000",

    "000000000011000000001110000"
);



type tie_type is array (0 to 6) of std_logic_vector(18 downto 0);

constant tie : tie_type := (

	"1111100111110011111",

	"0000100001000000100",

	"0000100001000000100",

	"0111100001000000100",

	"0000100001000000100",

	"0000100001000000100",

	"1111100111110000100"

);



type wins_type is array (0 to 6) of std_logic_vector(25 downto 0);

constant wins : wins_type := (

	"11110001000100111110010001",

	"00001001001100001000010001",

	"00001001010100001000010001",

	"01110001100100001000010101",

	"10000001000100001000011011",

	"10001001000100001000010001",

	"01110001000100111110010001"

);



type round_type is array (0 to 6) of std_logic_vector(32 downto 0);

constant round : round_type := (

	"011110010001001000100011100001111",

	"100010010011001000100100010010001",

	"100010010101001000100100010010001",

	"100010011001001000100100010001111",

	"100010010001001000100100010001001",

	"100010010001001000100100010010001",

	"011110010001000111000011100010001"

);



type digital_logic_battle_type is array (0 to 6) of std_logic_vector(137 downto 0);

constant digital_logic_battle : digital_logic_battle_type := (

	"111110000001001111100111110000100000111100000000001110001111100011100001110000000100000000000001000010000111110011111000111000111110001111",

	"000010000001000010000001000001010001000100000000010001000010000100010010001000000100000000000001000101000001000000100001000100001000010001",

	"000010000001000010000001000010001001000100000000000001000010000000010010001000000100000000000001001000100001000000100000000100001000010001",

	"011110000001000010000001000011111000111100000000000001000010000110010010001000000100000000000001001111100001000000100001100100001000010001",

	"000010000001000010000001000010001001000100000000000001000010000100010010001000000100000000000001001000100001000000100001000100001000010001",

	"000010000001000010000001000010001001000100000000010001000010000100010010001000000100000000000001001000100001000000100001000100001000010001",

	"111110011111000010000001000010001000111100000000001110001111100011100001110001111100000000011111001000100001000011111000111000111110001111"

);



type press_to_start_type is array (0 to 6) of std_logic_vector(95 downto 0);

constant press_to_start : press_to_start_type := (

	"111110001111000010000111110011110000000000011100011111000000000111100011110001111100011110001111",

	"001000010001000101000001000000001000000000100010000100000000000000010000001000000100100010010001",

	"001000010001001000100001000000001000000000100010000100000000000000010000001000000100100010010001",

	"001000001111001111100001000001110000000000100010000100000000000011100001110000111100011110001111",

	"001000001001001000100001000010000000000000100010000100000000000100000010000000000100010010000001",

	"001000010001001000100001000010001000000000100010000100000000000100010010001000000100100010000001",

	"001000010001001000100001000001110000000000011100000100000000000011100001110001111100100010000001"

);



type letter_0_single_type is array (0 to 6) of std_logic_vector(4 downto 0);

constant letter_0_single : letter_0_single_type := (

	"01110",

	"10001",

	"10001",

	"10001",

	"10001",

	"10001",

	"01110"

);



type char_array is array (0 to 6) of std_logic_vector(11 downto 0);

constant letter_0 : char_array := (

	"000000000000",

	"000000000000",

	"000000000000",

	"000000000000",

	"000000000000",

	"000000000000",

	"000000000000"

);



constant letter_1 : char_array := (

	"001000000000",

	"001100000000",

	"001010000000",

	"001000000000",

	"001000000000",

	"001000000000",

	"111110000000"

);



constant letter_2 : char_array := (

	"011100000000",

	"100010000000",

	"100000000000",

	"011000000000",

	"000100000000",

	"000010000000",

	"111110000000"

);



constant letter_3 : char_array := (

	"011100000000",

	"100010000000",

	"100000000000",

	"011000000000",

	"100000000000",

	"100010000000",

	"011100000000"

);



constant letter_4 : char_array := (

	"010010000000",

	"010010000000",

	"010010000000",

	"010010000000",

	"111110000000",

	"010000000000",

	"010000000000"

);



constant letter_5 : char_array := (

	"111110000000",

	"000010000000",

	"011110000000",

	"100000000000",

	"100000000000",

	"100010000000",

	"011100000000"

);



constant letter_6 : char_array := (

	"011100000000",

	"100010000000",

	"000010000000",

	"011110000000",

	"100010000000",

	"100010000000",

	"011100000000"

);



constant letter_7 : char_array := (

	"111110000000",

	"100000000000",

	"100000000000",

	"010000000000",

	"001000000000",

	"001000000000",

	"001000000000"

);



constant letter_8 : char_array := (

	"011100000000",

	"100010000000",

	"100010000000",

	"011100000000",

	"100010000000",

	"100010000000",

	"011100000000"

);



constant letter_9 : char_array := (

	"011100000000",

	"100010000000",

	"100010000000",

	"111100000000",

	"100000000000",

	"100010000000",

	"011100000000"

);



constant letter_10 : char_array := (

	"011100000100",

	"100010000110",

	"100010000101",

	"100010000100",

	"100010000100",

	"100010000100",

	"011100011111"

);



constant letter_11 : char_array := (

	"001000000100",

	"001100000110",

	"001010000101",

	"001000000100",

	"001000000100",

	"001000000100",

	"111110011111"

);



constant letter_12 : char_array := (

	"011100000100",

	"100010000110",

	"100000000101",

	"011000000100",

	"000100000100",

	"000010000100",

	"111110011111"

);



constant letter_13 : char_array := (

	"011100000100",

	"100010000110",

	"100000000101",

	"011000000100",

	"100000000100",

	"100010000100",

	"011100011111"

);



constant letter_14 : char_array := (

	"010010000100",

	"010010000110",

	"010010000101",

	"010010000100",

	"111110000100",

	"010000000100",

	"010000011111"

);



constant letter_15 : char_array := (

	"111110000100",

	"000010000110",

	"011110000101",

	"100000000100",

	"100000000100",

	"100010000100",

	"011100011111"

);



constant letter_p1 : char_array := (

	"001000001111",

	"001100010001",

	"001010010001",

	"001000001111",

	"001000000001",

	"001000000001",

	"111110000001"

);



constant letter_p2 : char_array := (

	"011100001111",

	"100010010001",

	"100000010001",

	"011000001111",

	"000100000001",

	"000010000001",

	"111110000001"

);

type action is array (0 to 14) of std_logic_vector(10 downto 0);
constant attack : action := (

    "00000000000",

    "00000000000",

    "00000000011",

    "00000000101",

    "00000001011",

    "00000010101",

    "00000101010",

    "00001010100",

    "11010101000",

    "11101010000",

    "01100100000",

    "11011000000",

    "10111100000",

    "11101100000",

    "11000000000"

);



constant life : action := (

    "00000100000",

    "00000100000",

    "00001110000",

    "00001110000",

    "00011111000",

    "00011111000",

    "00111111100",

    "01111111110",

    "01111111110",

    "11011111111",

    "11111111111",

    "11011111111",

    "01001111110",

    "01100111110",

    "00111111100"

);



constant counter : action := (

    "00001110000",

    "00010001000",

    "01100100110",

    "10001110001",

    "10111111101",

    "10111111101",

    "10111111101",

    "10111111101",

    "10111111101",

    "10011111001",

    "01011111010",

    "01001110010",

    "00100100100",

    "00010001000",

    "00001110000"

);




type letter_array is array (0 to 15) of char_array;



constant letters : letter_array := (

    letter_0, letter_1, letter_2, letter_3,

    letter_4, letter_5, letter_6, letter_7,

    letter_8, letter_9, letter_10, letter_11,

    letter_12, letter_13, letter_14, letter_15

);

    signal pixel_color : STD_LOGIC;
	 
	 -- Blinking Clock
    signal blink_clk : std_logic := '0';
    signal i   : integer := 0;


	begin
	 process(clk_25MHz)
    begin
        if rising_edge(clk_25MHz) then
            if i < 10000000 - 1 then
                i <= i + 1;
            else
                i <= 0;
                blink_clk <= not blink_clk;
            end if;
        end if;
    end process;
	 

    process(clk_25MHz)

    begin

        if rising_edge(clk_25MHz) then

            -- Horizontal Counter

            if x < H_TOTAL - 1 then

                x <= x + 1;

            else

                x <= 0;

                if y < V_TOTAL - 1 then

                    y <= y + 1;

                else

                    y <= 0;

                end if;

            end if;

				

            if x < H_SYNC_PULSE then

                hsync <= '0';

            else

                hsync <= '1';

            end if;

				

            if y < V_SYNC_PULSE then

                vsync <= '0';

            else

                vsync <= '1';

            end if;



            if x < H_ACTIVE and y < V_ACTIVE then

					if (x >= 190 and x < 298) and (y >= 284 and y < 420) then

						pixel_color <= player_pic((y - 284) / 4)(26 - ((x - 190) / 4));

						

					elsif (x >= 527 and x < 635) and (y >= 284 and y < 420) then							

						pixel_color <= player_pic((y - 284) / 4)((x - 527) / 4);

						

					elsif (x >= 275 and x < 551) and (y >= 50 and y < 64) then -- title

						pixel_color <= digital_logic_battle((y - 50) / 2)((x - 275) / 2);

						

					elsif (round_in = "0000") and (blink_clk = '1') and (x >= 365 and x < 461) and (y >= 440 and y < 447) then

						pixel_color <= press_to_start(y - 440)(x - 365);

						

					elsif (round_in /= "0000") and (x >= 388 and x < 421) and (y >= 90 and y < 97) then

						pixel_color <= round(y - 90)(x - 388);

					

					elsif (x >= 425 and x < 437) and (y >= 90 and y < 97) then

						pixel_color <= letters(to_integer(unsigned(round_in)))(y - 90)(x - 425);

						

					elsif (x >= 250 and x < 262) and (y >= 190 and y < 197) then

						pixel_color <= letters(to_integer(unsigned(p1_hp)))(y - 190)(x - 250);
						

					elsif (x >= 556 and x < 568) and (y >= 190 and y < 197) then

						pixel_color <= letters(to_integer(unsigned(p2_hp)))(y - 190)(x - 556);
						
					elsif (x >= 264 and x < 269) and (y >= 190 and y < 197) then

						pixel_color <= letter_0_single(y - 190)(x - 264);

					

					elsif (x >= 570 and x < 575) and (y >= 190 and y < 197) then

						pixel_color <= letter_0_single(y - 190)(x - 570);
						
					elsif (x >= 254 and x < 266) and (y >= 170 and y < 177) then

						pixel_color <= letter_P1(y - 170)(x - 254);

					elsif (x >= 560 and x < 572) and (y >= 170 and y < 177) then

						pixel_color <= letter_P2(y - 170)(x - 560);
					
					elsif (x >= 249 and x < 271) and (y >= 125 and y < 155) and (p1_act /= "00" and p2_act /= "00") then --action
							case p1_act is
								when "01" => pixel_color <= attack((y - 125) / 2)((x - 249) / 2);
								when "10" => pixel_color <= counter((y - 125) / 2)((x - 249) / 2);
								when "11" => pixel_color <= life((y - 125) / 2)((x - 249) / 2);
								when others => pixel_color <= '0';

							end case;
							
					elsif (x >= 555 and x < 577) and (y >= 125 and y < 155) and (p1_act /= "00" and p2_act /= "00") then --action
							case p2_act is
								when "01" => pixel_color <= attack((y - 125) / 2)((x - 555) / 2);
								when "10" => pixel_color <= counter((y - 125) / 2)((x - 555) / 2);
								when "11" => pixel_color <= life((y - 125) / 2)((x - 555) / 2);
								when others => pixel_color <= '0';
							end case;
											

					elsif (winner = "01" or winner = "10") and (x >= 400 and x < 452) and (y >= 270 and y < 284) then

						pixel_color <= wins((y - 270) / 2)((x - 400) / 2);

						

					elsif (winner = "01") and (x >= 368 and x < 392) and (y >= 270 and y < 284) then

						pixel_color <= letter_P1((y - 270) / 2)((x - 368) / 2);

	

					elsif (winner = "10") and (x >= 368 and x < 392) and (y >= 270 and y < 284) then

						pixel_color <= letter_P2((y - 270) / 2)((x - 368) / 2);

						

					elsif (winner = "11") and (x >= 394 and x < 432) and (y >= 270 and y < 284) then

						pixel_color <= tie((y - 270) / 2)((x - 394) / 2);

					else

                  pixel_color <= '0';

				end if;



            case pixel_color is

                when '0' =>

                    red   <= '0';

                    green <= '0';

                    blue  <= '0';

                when others =>

                    red   <= '1';

                    green <= '0';

                    blue  <= '0';

            end case;

            else

					red   <= '0';

					green <= '0';

					blue  <= '0'; 

            end if;

        end if; 

    end process;

end Behavioral;