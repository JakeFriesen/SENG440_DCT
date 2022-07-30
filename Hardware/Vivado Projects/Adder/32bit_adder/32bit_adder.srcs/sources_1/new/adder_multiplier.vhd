----------------------------------------------------------------------------------
-- 
-- Adder Implementation
-- SENG 440 Project
-- 
-- Authors: Calem Bardy & Jake Friesen
-- 
----------------------------------------------------------------------------------

-- Include required libraries
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mult is
    Port (
           -- Inputs
           I1, I2 : in signed (0 downto 0);
           
           -- Output
           O : out signed (0 downto 0)
    );
end mult;

architecture behavioral of mult is

begin
    
    O <= I1;

end behavioral;