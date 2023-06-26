----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:43:01 05/07/2023 
-- Design Name: 
-- Module Name:    Sub4bLogic - Behavioral 
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

entity Sub4bLogic is

    Port ( A1 : in  STD_LOGIC_VECTOR (3 downto 0);
           B1 : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin1 : in  STD_LOGIC;
           Cout1 : out  STD_LOGIC;
           S1 : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
			  
end Sub4bLogic;

architecture Behavioral of Sub4bLogic is

	COMPONENT Adder1b
		PORT(
			A : IN std_logic;
			B : IN std_logic;
			Cin : IN std_logic;          
			Cout : OUT std_logic;
			S : OUT std_logic
		);
	END COMPONENT;
	
	signal c1, c2, c3 : std_logic;
	signal Bn : std_logic_vector(3 downto 0);
	
begin

	Bn <= not B1;

U1: Adder1b 
	PORT MAP(
		A => A1(0),
		B => Bn(0),
		Cin => '1', 
		Cout => c1, 
		S => S1(0)
	);
	
U2: Adder1b 
	PORT MAP( 
		A => A1(1),
		B => Bn(1),
		Cin => c1, 
		Cout => c2, 
		S => S1(1)
	);
	
U3: Adder1b 
	PORT MAP( 
		A => A1(2),
		B => Bn(2),
		Cin => c2, 
		Cout => c3, 
		S => S1(2)
	);
	
U4: Adder1b 
	PORT MAP( 
		A => A1(3),
		B => Bn(3),
		Cin => c3, 
		Cout => Cout1, 
		S => S1(3)
	);

end Behavioral;

