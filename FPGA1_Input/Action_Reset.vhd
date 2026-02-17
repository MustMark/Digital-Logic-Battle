library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Action_reset is
    Port ( clk        : in  std_logic;
           p1_action  : in  std_logic_vector(1 downto 0);  -- Player 1 action (2 bits)
           p2_action  : in  std_logic_vector(1 downto 0);  -- Player 2 action (2 bits)
           delay_out  : out std_logic);  -- 1 pulse output after 3 seconds
end Action_reset;

architecture Behavioral of Action_reset is
    signal counter    : integer range 0 to 60000000 := 0;  -- Counter for 3 seconds at 20 MHz
    signal delay_flag : std_logic := '0';  -- Flag for output pulse
begin

    process(clk)
    begin
        if rising_edge(clk) then
            -- Check if both players have valid actions (not "00")
            if (p1_action /= "00") and (p2_action /= "00") then
                if counter < 60000000 then
                    counter <= counter + 1;  -- Increment counter
                    delay_flag <= '0';  -- Keep delay flag low during counting
                else
                    delay_flag <= '1';  -- After 3 seconds, set the pulse flag
                    counter <= 0;  -- Reset counter after 3-second delay
                end if;
            else
                delay_flag <= '0';    -- Reset the delay flag
            end if;
        end if;
    end process;

    -- Output the delay pulse
    delay_out <= delay_flag;

end Behavioral;