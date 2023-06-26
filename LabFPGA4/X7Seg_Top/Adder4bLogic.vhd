----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:59:46 06/22/2022 
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
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end Adder4bLogic;

architecture Behavioral of Adder4bLogic is
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
begin


  U1: Adder1b PORT MAP(
		A => A(0) ,
		B => B(0) ,
		Cin => Cin,
		Cout => c1 ,
		S => S(0)
	);
	U2: Adder1b PORT MAP(
		A => A(1) ,
		B => B(1) ,
		Cin => c1 ,
		Cout => c2,
		S => S(1)
	);
	
	U3: Adder1b PORT MAP(
		A => A(2),
		B => B(2) ,
		Cin => c2,
		Cout => c3 ,
		S => S(2) 
	);
	
	U4: Adder1b PORT MAP(
		A => A(3),
		B => B(3) ,
		Cin => c3 ,
		Cout => Cout ,
		S => S(3)
	);






end Behavioral;

