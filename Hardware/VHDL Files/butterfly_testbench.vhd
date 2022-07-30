----------------------------------------------------------------------------------
-- 
-- Butterfly Operation Test Bench
-- SENG 440 Project
-- 
-- Authors: Calem Bardy & Jake Friesen
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity butterfly_testbench is
end butterfly_testbench;

architecture behavioral of butterfly_testbench is
    signal O : signed (31 downto 0);
    signal I1, I2, C1, C2 : signed (15 downto 0);
begin

uut : entity work.butterfly port map(O=>O, I1=>I1, I2=>I2, C1=>C1, C2=>C2);

process begin

    -- Set values to 0
    C1 <= x"0000";
    C2 <= x"0000";
    I1 <= x"0000";
    I2 <= x"0000";
    wait for 10ns;

    -- Set input values
    
    -- C values shifted 8 bits (n = 1)
    C1 <= x"00FB"; -- 251
    C2 <= x"0032"; -- 51
    I1 <= x"000F"; -- 15
    I2 <= x"0014"; -- 20
    wait for 100ns;
    
    -- Expected output: (4765) & (4272) = x"129D10B0"

end process;
end behavioral;
