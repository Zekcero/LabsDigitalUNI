----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:06:11 05/03/2023 
-- Design Name: 
-- Module Name:    Adder4bLogic - Behavioral 
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

entity Adder4bLogic is

    Port ( A1 : in  STD_LOGIC_VECTOR (3 downto 0);
           B1 : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin1 : in  STD_LOGIC;
           Cout1 : out  STD_LOGIC;
           S1 : out  STD_LOGIC_VECTOR (3 downto 0)
	  );
			  
end Adder4bLogic;

architecture Behavioral of Adder4bLogic is

	COMPONENT Adder1b
		PORT(
			A : IN std_logic;
			B : IN std_logic;
			CIN : IN std_logic;          
			COUT : OUT std_logic;
			S : OUT std_logic
			);
	END COMPONENT;
	
	signal C1, C2, C3: std_logic;
	
begin

	U1: Adder1b PORT MAP(
			A =>  A1(0),
			B => B1(0),
			CIN => Cin1,
			COUT => C1,
			S => S1(0)
	);
		
	U2: Adder1b PORT MAP(
			A => A1(1),
			B => B1(1),
			CIN => C1,
			COUT => C2,
			S => S1(1)
	);
		
	U3: Adder1b PORT MAP(
			A => A1(2),
			B => B1(2),
			CIN => C2,
			COUT => C3,
			S => S1(2)
	);
		
	U4: Adder1b PORT MAP(
			A => A1(3),
			B => B1(3),
			CIN => C3,
			COUT => Cout1,
			S => S1(3)
	);
	
end Behavioral;

