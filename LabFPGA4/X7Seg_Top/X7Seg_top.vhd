----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:08 06/22/2022 
-- Design Name: 
-- Module Name:    X7Seg_top - Behavioral 
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

entity X7Seg_top is
        Port ( Cin : in  STD_LOGIC;
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           A : in  STD_LOGIC_VECTOR (3 downto 0);
           mclk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           a_to_g : out  STD_LOGIC_VECTOR (6 downto 0));


end X7Seg_top;

architecture Behavioral of X7Seg_top is

  COMPONENT Adder4bLogic
	PORT(
		A : IN std_logic_vector(3 downto 0);
		B : IN std_logic_vector(3 downto 0);
		Cin : IN std_logic;          
		Cout : OUT std_logic;
		S : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
  
  COMPONENT X7Seg
	PORT(
		x : IN std_logic_vector(15 downto 0);
		clr : IN std_logic;
		clk : IN std_logic;          
		a_to_g : OUT std_logic_vector(6 downto 0);
		an : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	signal x: std_logic_vector(15 downto 0);
   signal Cout: std_logic;
	signal S: std_logic_vector(3 downto 0);
	

begin
   x(15 downto 12) <= B;
   x(11 downto 8) <=A;
   x(7 downto 4) <= "000" & Cout;
   x(3 downto 0 ) <= S;
	
	
	U5: Adder4bLogic PORT MAP(
		A => A,
		B => B,
		Cin => Cin ,
		Cout => Cout ,
		S => S
	);
    
	 U6: X7Seg PORT MAP(
		a_to_g => a_to_g,
		x => x,
		clr => clr ,
		an => an,
		clk => mclk
	);
end Behavioral;

