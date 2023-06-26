
-- VHDL Instantiation Created from source file BIN2BCD.vhd -- 23:53:34 06/23/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT BIN2BCD
	PORT(
		B : IN std_logic_vector(7 downto 0);          
		P : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	Inst_BIN2BCD: BIN2BCD PORT MAP(
		B => ,
		P => 
	);


