----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:04:48 04/27/2023 
-- Design Name: 
-- Module Name:    full_addder - Behavioral 
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

entity full_addder is
    Port ( p : in  STD_LOGIC;
           m : in  STD_LOGIC;
           n : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end full_addder;

architecture Behavioral of full_addder is
COMPONENT half_adder
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		c : OUT std_logic;
		d : OUT std_logic
		);
	END COMPONENT;
	
signal S1 : std_logic;
signal C1 : std_logic;
signal S2 : std_logic;
signal C2 : std_logic;

begin

	U1 : half_adder PORT MAP(
		a => p,
		b => S1,
		c => S2,
		d => C2
	);

	U2 : half_adder PORT MAP(
		a => m,
		b => n,
		c => S1,
		d => C1
	);
	
	cout <= C2 or C1;
	s <= S2;
end Behavioral;

