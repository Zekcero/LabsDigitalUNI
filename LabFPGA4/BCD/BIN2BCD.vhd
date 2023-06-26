----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:20:16 06/23/2022 
-- Design Name: 
-- Module Name:    BIN2BCD - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BIN2BCD is
    Port ( B : in  STD_LOGIC_VECTOR (7 downto 0);
           P : out  STD_LOGIC_VECTOR (9 downto 0));
end BIN2BCD;

architecture Behavioral of BIN2BCD is

begin
bcd1: process(B)
	  variable z: std_logic_vector(17 downto 0);
	  
	  begin
				for i in 0 to 17 loop
							z(i) := '0';
				end loop; 
				z(10 downto 3) := B;
				
				for i in 0 to 4 loop
						if z(11 downto 8) > 4 then
								z(11 downto 8) := z(11 downto 8) + 3;
						end if;
						
						if z(15 downto 12) > 4 then
								z(15 downto 12) := z(15 downto 12)+ 3;
						end if;
						z(17 downto 1) := z(16 downto 0);
				end loop;
				
				P <= z(17 downto 8);
		end process bcd1;

end Behavioral;