----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:30 05/11/2023 
-- Design Name: 
-- Module Name:    Mult4bLogic - Behavioral 
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

entity Mult4bLogic is

    Port ( A1 : in  STD_LOGIC_VECTOR (3 downto 0);
           B1 : in  STD_LOGIC_VECTOR (3 downto 0);
           M : out  STD_LOGIC_VECTOR (7 downto 0)
	  );
			  
end Mult4bLogic;

architecture Behavioral of Mult4bLogic is

COMPONENT Adder4bLogic

	PORT(
		A1 : IN std_logic_vector(3 downto 0);
		B1 : IN std_logic_vector(3 downto 0);
		Cin1 : IN std_logic;          
		Cout1 : OUT std_logic;
		S1 : OUT std_logic_vector(3 downto 0)
	);
		
END COMPONENT;

-- Signals creations

signal F, G, H, I, J, K: std_logic_vector (4 downto 1);
signal S, Q, R: std_logic_vector (3 downto 0);
signal CI, CO, C1, C2, RO: std_logic;

begin

	CI <= '0';
	RO <= A1(0) AND B1(0);
	G(1) <= A1(0) AND B1(1);
	G(2) <= A1(0) AND B1(2);
	G(3) <= A1(0) AND B1(3);
	G(4) <= '0';
	
	F(1) <= A1(1) AND B1(0);
	F(2) <= A1(1) AND B1(1);
	F(3) <= A1(1) AND B1(2);
	F(4) <= A1(1) AND B1(3);
	
	H(1) <= A1(2) AND B1(0);
	H(2) <= A1(2) AND B1(1);
	H(3) <= A1(2) AND B1(2);
	H(4) <= A1(2) AND B1(3);
	
	J(1) <= A1(3) AND B1(0);
	J(2) <= A1(3) AND B1(1);
	J(3) <= A1(3) AND B1(2);
	J(4) <= A1(3) AND B1(3); 


	U1: Adder4bLogic port map(F, G, CI, C1, S);
	I(1) <= S(1);
	I(2) <= S(2);
	I(3) <= S(3);
	I(4) <= C1;

	U2: Adder4bLogic port map(H, I, CI, C2, Q);
	K(1) <= Q(1);
	K(2) <= Q(2);
	K(3) <= Q(3);
	K(4) <= C2;

	U3: Adder4bLogic port map (J, K, CI, CO, R);

	M(0) <= RO;
	M(1) <= S(0);
	M(2) <= Q(0);
	M(3) <= R(0);
	M(4) <= R(1);
	M(5) <= R(2);
	M(6) <= R(3);
	M(7) <= CO;
	
end Behavioral;

