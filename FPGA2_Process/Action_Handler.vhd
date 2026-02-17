library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Game is
    Port (
        clk          : in  std_logic;
        reset        : in  std_logic;
        p1_action    : in  std_logic_vector(1 downto 0);  -- 00 = attack, 01 = counter, 10 = life steal
        p2_action    : in  std_logic_vector(1 downto 0);
        p1_hp        : out std_logic_vector(3 downto 0);  -- P1 HP
        p2_hp        : out std_logic_vector(3 downto 0);  -- P2 HP
        winner       : out std_logic_vector(1 downto 0);  -- 00 = ongoing, 01 = player1 wins, 10 = player2 wins, 11 = tie
        round        : out std_logic_vector(3 downto 0)   -- Round number (5 bits for up to 32 rounds)
    );
end Game;

architecture Behavioral of Game is
    signal p1_health    : integer range 0 to 10 := 10;
    signal p2_health    : integer range 0 to 10 := 10;
    signal game_winner  : std_logic_vector(1 downto 0) := "00"; -- ongoing game
    signal round_count  : integer range 0 to 15 := 0;  -- Round counter (max 15 rounds)

begin
    process(clk, reset)
        variable p1_change : integer := 0;
        variable p2_change : integer := 0;
    begin
        if reset = '1' then
            p1_health    <= 10;
            p2_health    <= 10;
            game_winner  <= "00"; -- ongoing game
            round_count  <= 0;
        elsif rising_edge(clk) then
            -- Reset health change variables at each clock cycle
            p1_change := 0;
            p2_change := 0;

            -- Use a case structure to check the round and actions
            case round_count is
                when 0 =>
                    -- Initial state, waiting for any action to start round 1
                    if (p1_action & p2_action) /= "0000" then
                        round_count <= round_count + 1;
								p1_health    <= 10;
								p2_health    <= 10;
								game_winner  <= "00";
                    end if;
                
                when others =>
                    -- Define health changes based on actions
                    case p1_action & p2_action is
                        when "0101" => -- Attack vs Attack
                            p1_change := -2;
                            p2_change := -2;

                        when "1010" => -- Counter vs Counter
                            p1_change := -1;
                            p2_change := -1;

                        when "0110" => -- Attack vs Counter
                            p1_change := -3;

                        when "1001" => -- Counter vs Attack
                            p2_change := -3;

                        when "1110" => -- Life-Steal vs Counter
                            p1_change := 2; 
                            p2_change := -2;
                            
                        when "1011" => -- Counter vs Life-Steal
                            p1_change := -2; 
                            p2_change := 2;

                        when "0111" => -- Attack vs Life-Steal
                            p2_change := -2;

                        when "1101" => -- Life-Steal vs Attack
                            p1_change := -2;

                        when others =>
                            null;
                    end case;

                    -- Apply health adjustments with bounds checking
                    if p1_health + p1_change > 10 then
                        p1_health <= 10;
                    elsif p1_health + p1_change < 0 then
                        p1_health <= 0;
                    else
                        p1_health <= p1_health + p1_change;
                    end if;

                    if p2_health + p2_change > 10 then
                        p2_health <= 10;
                    elsif p2_health + p2_change < 0 then
                        p2_health <= 0;
                    else
                        p2_health <= p2_health + p2_change;
                    end if;

                    -- Determine winner and handle max rounds
                    if p1_health + p1_change <= 0 and p2_health + p2_change <= 0 then
                        game_winner <= "11"; -- Tie
								round_count  <= 0;
                    elsif p1_health + p1_change <= 0 then
                        game_winner <= "10"; -- Player 2 wins
								round_count  <= 0;
                    elsif p2_health + p2_change <= 0 then
                        game_winner <= "01"; -- Player 1 wins
								round_count  <= 0;
                    else
                        if round_count = 15 then
                            -- Decide winner based on remaining health at round 15
                            if p1_health + p1_change > p2_health + p2_change then
                                game_winner <= "01"; -- Player 1 wins
                            elsif p1_health + p1_change < p2_health + p2_change then
                                game_winner <= "10"; -- Player 2 wins
                            else
                                game_winner <= "11"; -- Tie
                            end if;
											round_count  <= 0;
                        else
                            round_count <= round_count + 1;
                        end if;
                    end if;
            end case;
        end if;
    end process;

    -- Convert p1_health and p2_health to binary for output
    p1_hp <= std_logic_vector(to_unsigned(p1_health, 4));
    p2_hp <= std_logic_vector(to_unsigned(p2_health, 4));
    winner <= game_winner;
    round <= std_logic_vector(to_unsigned(round_count, 4));

end Behavioral;