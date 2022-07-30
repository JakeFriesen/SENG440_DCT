----------------------------------------------------------------------------------
-- 
-- Adder Test Bench
-- SENG 440 Project
-- 
-- Authors: Calem Bardy & Jake Friesen
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mult_testbench is
end mult_testbench;

architecture behavioral of mult_testbench is
    signal O : signed (0 downto 0);
    signal I1, I2 : signed (0 downto 0);
begin

uut : entity work.mult port map(O=>O, I1=>I1, I2=>I2);

process begin

    -- Set values to 0
    I1 <= "0";
    I2 <= "0";
    wait for 10ns;

    I1 <= "1"; -- 15
    I2 <= "0"; -- 20
    wait for 100ns;

end process;
end behavioral;
