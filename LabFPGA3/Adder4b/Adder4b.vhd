----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:16:16 05/04/2023 
-- Design Name: 
-- Module Name:    Adder4b - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder4b is port(
		A : in std_logic_vector(3 downto 0); 
		B : in std_logic_vector(3 downto 0); 
		CIN : in std_logic;
		COUT : out std_logic;
		S : out std_logic_vector(3 downto 0)
	);
	end Adder4b;

architecture Behavioral of Adder4b is

begin

	process(A,B,Cin)
	variable temp :
	
	std_logic_vector(4 downto 0);
	
begin	

	temp := ('0' & A) + ('0' & B) + ("0000" & Cin);
	S <= temp(3 downto 0); Cout <= temp(4);

	end process; 
end Behavioral;

