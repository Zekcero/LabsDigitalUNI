
-- VHDL Instantiation Created from source file MuxN.vhd -- 15:00:51 06/27/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MuxN
	PORT(
		add : IN std_logic_vector(7 downto 0);
		sub : IN std_logic_vector(7 downto 0);
		sel : IN std_logic_vector(1 downto 0);          
		salida : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_MuxN: MuxN PORT MAP(
		add => ,
		sub => ,
		sel => ,
		salida => 
	);


