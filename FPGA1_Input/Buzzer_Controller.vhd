library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Buzzer_Controller is
    Port (
        clk     : in STD_LOGIC;          -- 20 MHz clock
        action  : in STD_LOGIC_VECTOR(1 downto 0); -- 2-bit action input
        buzzer  : out STD_LOGIC          -- Buzzer output
    );
end Buzzer_Controller;

architecture Behavioral of Buzzer_Controller is
    constant DURATION_COUNT : integer := 4000000; -- 0.2 seconds at 20 MHz
    signal count            : integer := 0;
    signal buzzer_active    : STD_LOGIC := '0';
	 signal triggered_once   : STD_LOGIC := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if action /= "00" and triggered_once = '0' then
                -- Start buzzer and counter whenever action is not "00"
                buzzer_active <= '1';
                buzzer <= '1';
                count <= 1;
					 triggered_once <= '1';
            elsif buzzer_active = '1' then
                if count < DURATION_COUNT then
                    count <= count + 1;
                else
                    -- Stop buzzer after 0.2 seconds
                    buzzer <= '0';
                    buzzer_active <= '0';
						  triggered_once <= '1';
                    count <= 0;
                end if;
				elsif action = "00" then
					triggered_once <= '0';
            end if;
        end if;
    end process;
end Behavioral;