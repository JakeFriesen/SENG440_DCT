----------------------------------------------------------------------------------
-- 
-- Butterfly Operation Implementation
-- SENG 440 Project
-- 
-- Authors: Calem Bardy & Jake Friesen
-- 
----------------------------------------------------------------------------------

-- Include required libraries
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity butterfly is
    Port (
           -- Inputs
           I1, I2 : in signed (15 downto 0);
           C1, C2 : in signed (15 downto 0); -- C1: kcos(npi/16) ; C2: ksin(npi/16)
           
           -- Output
           O : out signed (31 downto 0)
    );
end butterfly;

architecture behavioral of butterfly is
    signal temp1, temp2, temp3, temp4, temp5, temp6 : signed (31 downto 0);
    signal temp7, temp8 : signed (15 downto 0);
begin
    
    -- Multiplications
    temp1 <= C1 * I1;
    temp2 <= C2 * I2;
    temp3 <= -C2 * I1;
    temp4 <= C1 * I2;
    
    -- Additions
    temp5 <= temp1 + temp2;
    temp6 <= temp3 + temp4;
    
    -- Concatenate
    temp7 <= temp5(15 downto 0);
    temp8 <= temp6(15 downto 0);
    
    O <= temp7 & temp8;

end behavioral;