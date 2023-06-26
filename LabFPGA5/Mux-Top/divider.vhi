
-- VHDL Instantiation Created from source file divider.vhd -- 09:20:54 06/07/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT divider
	PORT(
		operanda : IN std_logic_vector(3 downto 0);
		operandb : IN std_logic_vector(3 downto 0);          
		errorsig : OUT std_logic;
		result_low : OUT std_logic_vector(3 downto 0);
		result_high : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_divider: divider PORT MAP(
		operanda => ,
		operandb => ,
		errorsig => ,
		result_low => ,
		result_high => 
	);


