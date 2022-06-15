----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2022 02:37:02 PM
-- Design Name: 
-- Module Name: adder_multiplier - Behavioral
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

entity adder_multiplier is
    Port ( A : in signed (31 downto 0);
           B : in signed (31 downto 0);
           C : in signed (15 downto 0);
           SUM : out signed (31 downto 0);
           MUL : out signed (31 downto 0);
           L1 : out signed (31 downto 0);
           L2 : out signed (31 downto 0));
end adder_multiplier;

architecture Behavioral of adder_multiplier is
    signal loeffler : unsigned (31 downto 0);
begin
    SUM <= A + B;
    MUL <= A(15 downto 0) * B(15 downto 0);
    L1 <= (A(15 downto 0) + B(15 downto 0)) * C;
    L2 <= (A(15 downto 0) - B(15 downto 0)) * C;

end Behavioral;
