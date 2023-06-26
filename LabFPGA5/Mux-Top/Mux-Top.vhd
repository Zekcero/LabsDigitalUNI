----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:16:39 05/30/2023 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_Top is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           Ax : in  STD_LOGIC_VECTOR (3 downto 0);
           Bx : in  STD_LOGIC_VECTOR (3 downto 0);
           Sel1 : in  STD_LOGIC;
			  Sel2 : in  STD_LOGIC;
           Cinx : in  STD_LOGIC;
           anx : out  STD_LOGIC_VECTOR (3 downto 0);
           a_to_gx : out  STD_LOGIC_VECTOR (6 downto 0);
           Ledx : out  STD_LOGIC_VECTOR (7 downto 0);
           Coutx : out  STD_LOGIC
			  );
end Mux_Top;

architecture Behavioral of Mux_Top is
	COMPONENT Adder4bLogic
		PORT(
			A1 : IN std_logic_vector(3 downto 0);
			B1 : IN std_logic_vector(3 downto 0);
			CIN1 : IN std_logic;          
			COUT1 : OUT std_logic;
			S1 : OUT std_logic_vector(3 downto 0)
			);
	END COMPONENT;
	
	COMPONENT Sub4bLogic
		PORT(
			A1 : IN std_logic_vector(3 downto 0);
			B1 : IN std_logic_vector(3 downto 0);
			Cin1 : IN std_logic;          
			Cout1 : OUT std_logic;
			S1 : OUT std_logic_vector(3 downto 0)
			);
	END COMPONENT;

	COMPONENT Mult4bLogic
	PORT(
		A1 : IN std_logic_vector(3 downto 0);
		B1 : IN std_logic_vector(3 downto 0);          
		M : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT divider
	PORT(
		operanda : IN std_logic_vector(3 downto 0);
		operandb : IN std_logic_vector(3 downto 0);          
		errorsig : OUT std_logic;
		result_low : OUT std_logic_vector(3 downto 0);
		result_high : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;	
	
	COMPONENT X7Seg
		PORT(
			x : IN std_logic_vector(15 downto 0);
			clk : IN std_logic;
			clr : IN std_logic;          
			an : OUT std_logic_vector(3 downto 0);
			a_to_g : OUT std_logic_vector(6 downto 0)
			);
	END COMPONENT;	
	
	COMPONENT MuxN
		PORT(
			sub : IN std_logic_vector(7 downto 0);
			add : IN std_logic_vector(7 downto 0);
			Mult : IN std_logic_vector(7 downto 0);
			Div : IN std_logic_vector(7 downto 0);
			Sel1 : IN std_logic;   
			Sel2 : IN std_logic;		
			salida : OUT std_logic_vector(7 downto 0)
			);
	END COMPONENT;
	
	COMPONENT BIN2BCD
		PORT(
			B : IN std_logic_vector(7 downto 0);          
			P : OUT std_logic_vector(9 downto 0)
			);
	END COMPONENT;
	
	signal x1 : std_logic_vector(15 downto 0);
	signal num_bcd : std_logic_vector (9 downto 0);
	signal sCout : std_logic;
	signal sS : std_logic_vector (3 downto 0);
	signal rCout : std_logic_vector (3 downto 0);
	signal rS : std_logic_vector (3 downto 0);
	signal add1 : std_logic_vector (7 downto 0);
	signal sub1 : std_logic_vector(7 downto 0);
	signal SalidaM : std_logic_vector (7 downto 0);
	signal num_bin : std_logic_vector (7 downto 0);
	signal Multip : std_logic_vector (7 downto 0);
	signal Divis : std_logic_vector (7 downto 0);
	signal rsdiv : std_logic_vector(3 downto 0);
	signal mCout : std_logic;

begin

x1 <= "000000" & num_bcd;
add1 <= "000" & sCout & sS;
sub1 <= "0000" & rS;
Divis <= "0000" & rsdiv;

U1: Adder4bLogic PORT MAP(
		A1 => Ax,
		B1 => Bx,
		CIN1 => Cinx,
		COUT1 => sCout,
		S1 => sS
	);

U2: Sub4bLogic PORT MAP(
		A1 => Ax,
		B1 => Bx,
		Cout1 => Coutx,
		Cin1 => '1',
		S1 => rS
	);

U3: Mult4blogic PORT MAP(
		A1 => Ax,
		B1 => Bx,
		M => Multip
	);

U4: divider PORT MAP(
		operanda => Ax,
		operandb => Bx,
		result_high => rsdiv
	);
	
U5: MuxN PORT MAP(
		sub => Sub1,
		add => Add1,
		Mult=> Multip,
		Div=> Divis,
		Sel1 => Sel1,
		Sel2 => Sel2,
		salida => SalidaM
	);

U6: BIN2BCD PORT MAP(
		B => SalidaM,
		P => num_bcd
	);
	
U7: X7Seg PORT MAP(
		x => x1,
		clk => Clk,
		clr => Clr,
		an => anx,
		a_to_g => a_to_gx
	);
	
Ledx <= SalidaM;

end Behavioral;

