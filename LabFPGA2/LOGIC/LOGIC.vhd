----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:40:37 04/13/2023 
-- Design Name: 
-- Module Name:    LOGIC - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LOGIC is
	Port (
			J : in STD_LOGIC;
			K : in STD_LOGIC;
			L : in STD_LOGIC;
			M : in STD_LOGIC;
			N : in STD_LOGIC;
			P : out STD_LOGIC;
			Q : out STD_LOGIC);
end LOGIC;

architecture Behavioral of LOGIC is
COMPONENT ANDOR
	PORT(
			A : IN std_logic;
			B : IN std_logic;
			C : IN std_logic;
			F : OUT std_logic
);
END COMPONENT;

signal F1 : std_logic;
begin
	U1: ANDOR PORT MAP(
		A => J,
		B => K,
		C => L,
		F => F1
		);
	U2: ANDOR PORT MAP(
		A => F1,
		B => M,
		C => N,
		F => Q
		);
	P <= F1;
	
end Behavioral;
