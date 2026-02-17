library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_20MHz_to_25MHz is
    port(
        clk_in : in std_logic;
        clk_out : out std_logic
    );
end clk_20MHz_to_25MHz;

architecture Behavioral of clk_20MHz_to_25MHz is
    component clk_wizard
        port (
            clk_in1 : in std_logic;
            clk_out1 : out std_logic;
            reset : in std_logic;
            locked : out std_logic
        );
    end component;
    signal clk_locked : std_logic;
begin
    clk_inst : clk_wizard
        port map (
            clk_in1 => clk_in,      -- เชื่อมสัญญาณ 20 MHz เข้ากับ Clocking Wizard
            clk_out1 => clk_out,    -- สัญญาณนาฬิกาออก 25 MHz ที่สร้างขึ้น
            reset => '0',                 -- กำหนด reset เป็น '0' ถ้าไม่ต้องการใช้งานการรีเซ็ต
                locked => clk_locked          -- สัญญาณล็อค (ใช้ตรวจสอบความเสถียรของ PLL)
                );    

end Behavioral;