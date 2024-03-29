----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:07:38 11/08/2017 
-- Design Name: 
-- Module Name:    RANDOM_GENERATOR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use ieee.math_real.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RANDOM_GENERATOR is
    Port ( LuckyNumber : out  STD_LOGIC);
end RANDOM_GENERATOR;

architecture Behavioral of RANDOM_GENERATOR is

signal rand_num : integer := 0;

begin

process
    variable seed1, seed2: positive;               -- seed values for random generator
    variable rand: real;                           -- random real-number value in range 0 to 1.0  
    variable range_of_rand : real := 1000.0;       -- the range of random values created will be 0 to +1000.
begin
    uniform(seed1, seed2, rand);                   -- generate random number
    rand_num <= integer(rand*range_of_rand);       -- rescale to 0..1000, convert integer part 
    wait for 10 ns;
end process;

end Behavioral;

























