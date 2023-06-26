----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:47:13 06/23/2022 
-- Design Name: 
-- Module Name:    Mux_Top - Behavioral 
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

entity Mux_Top is

   Port ( clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_vector(1 downto 0);
           cin : in  STD_LOGIC;
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           a_to_g : out  STD_LOGIC_VECTOR (6 downto 0);
           Led : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);





end Mux_Top;

architecture Behavioral of Mux_Top is

 COMPONENT Adder4bLogic
	PORT(
		A : IN std_logic_vector(3 downto 0);
		B : IN std_logic_vector(3 downto 0);
		Cin : IN std_logic;          
		Cout : OUT std_logic;
		S : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	 COMPONENT Sub4bLogic
	PORT(
		A : IN std_logic_vector(3 downto 0);
		B : IN std_logic_vector(3 downto 0);
		Cin : IN std_logic;          
		Cout : OUT std_logic;
		S : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	 COMPONENT MuxN
	PORT(
		add : IN std_logic_vector(7 downto 0);
		sub : IN std_logic_vector(7 downto 0);
		sel : IN std_logic_vector(1 downto 0);          
		salida : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
   
	COMPONENT BIN2BCD
	PORT(
		B : IN std_logic_vector(7 downto 0);          
		P : OUT std_logic_vector(11 downto 0)
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
   
	signal adder: std_logic_vector (7 downto 0);
	signal subt: std_logic_vector (7 downto 0);
	signal result: std_logic_vector(7 downto 0);
	signal resultbcd: std_logic_vector (11 downto 0);
	signal resultout: std_logic_vector (15 downto 0);

	
	
	
	

begin 
  adder (7 downto 5) <="000";
  
  U1: Adder4bLogic PORT MAP(
		A => A,
		B => B ,
		Cin => cin,
		Cout => adder(4),
		S => adder (3 downto 0)
	);
    subt(7 downto 4) <= "0000";
	 
	U2: Sub4bLogic PORT MAP(
		A => A ,
		B => B,
		Cin => cin,
		Cout => Cout,
		S => subt(3 downto 0)
	); 
	
	U3: MuxN PORT MAP(
		add => adder,
		sub => subt ,
		sel => sel  ,
		salida => result
	);
	led <= result;
	 U4: BIN2BCD PORT MAP(
		B => result,
		P => resultbcd
	);
	
	 U5: X7Seg PORT MAP(
		a_to_g => a_to_g ,
		x => resultout ,
		Clr => clr ,
		an =>  an,
		clk => clk
	);

end Behavioral;

