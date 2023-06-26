
-- VHDL Instantiation Created from source file X7Seg.vhd -- 15:13:49 06/22/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT X7Seg
	PORT(
		x : IN std_logic_vector(15 downto 0);
		clr : IN std_logic;
		clk : IN std_logic;          
		a_to_g : OUT std_logic_vector(6 downto 0);
		an : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_X7Seg: X7Seg PORT MAP(
		a_to_g => ,
		x => ,
		clr => ,
		an => ,
		clk => 
	);


