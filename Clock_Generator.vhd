----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:56:16 11/29/2017 
-- Design Name: 
-- Module Name:    Clock_Generator - Behavioral 
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
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Clock_Generator is
    Port ( MCLK : in  STD_LOGIC;
           HUNDREDHZCLOCK : out  STD_LOGIC);
end Clock_Generator;

architecture Behavioral of Clock_Generator is

		SIGNAL COUNTER : STD_LOGIC_VECTOR(18 DOWNTO 0) := "0000000000000000000";
		
begin

	CLK_PROCESS: PROCESS(MCLK)
	
	BEGIN
		
		IF(MCLK'EVENT AND MCLK = '1') THEN
			IF(COUNTER < "1111010000100100000") THEN
				COUNTER <= COUNTER + 1;
			ELSE
				COUNTER <= "0000000000000000000";
			END IF;
		END IF;			
	END PROCESS;
		
		HUNDREDHZCLOCK <= '1' WHEN COUNTER = "1111010000100100000" ELSE '0';
		
end Behavioral;
