----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:58:00 05/30/2023 
-- Design Name: 
-- Module Name:    MuxN - Behavioral 
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MuxN is
generic (N: integer :=8; M: integer :=2);
Port ( 	
			sub : in STD_LOGIC_VECTOR (N-1 downto 0);--Resta 
			add : in STD_LOGIC_VECTOR (N-1 downto 0);--Suma
			Mult : in STD_LOGIC_VECTOR (N-1 downto 0);--Mult
			Div : in STD_LOGIC_VECTOR (N-1 downto 0);--Div
			Sel1 :  in  STD_LOGIC;
			Sel2 :  in  STD_LOGIC;
			salida : out STD_LOGIC_VECTOR (N-1 downto 0));
			
			
end MuxN;
architecture Behavioral of MuxN is 
begin
p1: process (add,sub,Sel1,Sel2,Mult,Div)
		begin
			if ( Sel1 ='0' and Sel2='0') then
				salida <= sub;
		elsif ( Sel1 ='0' and Sel2='1') then
				salida <= add;
		elsif ( Sel1 ='1' and Sel2='0') then
				salida <= Mult;
		elsif ( Sel1='1' and Sel2='1') then
				salida <= Div;
		end if; 
	end process;
end Behavioral;