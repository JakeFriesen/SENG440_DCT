----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2022 02:37:30 PM
-- Design Name: 
-- Module Name: adder_multiplier_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_multiplier_test is
--  Port ( );
end adder_multiplier_test;

architecture Behavioral of adder_multiplier_test is
    signal A, B, SUM, MUL, L1, L2 : signed (31 downto 0);
    signal C : signed (15 downto 0);
begin

uut : entity work.adder_multiplier port map(A=>A, B=>B, C=>C, SUM=>SUM, MUL=>MUL, L1=>L1, L2=>L2);

process begin
    A <= x"00000000";
    B <= x"00000000";
    C <= x"0000";
    wait for 100ns;
    A <= x"00000009"; -- 9
    B <= x"0000000F"; -- 15
    C <= x"0002"; -- *2
    wait for 100ns;
--    (9+15)*2 = 42d = 30
--    (9-15)*2 = -12 = FFFF FFF4
end process;
end Behavioral;
