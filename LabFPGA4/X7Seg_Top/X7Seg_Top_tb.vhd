--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:41:00 05/24/2023
-- Design Name:   
-- Module Name:   C:/Users/David/Documents/LabsFPGADigital/LabFPGA4/X7Seg_Top/X7Seg_Top_tb.vhd
-- Project Name:  X7Seg_Top
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: X7Seg_top
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY X7Seg_Top_tb IS
END X7Seg_Top_tb;
 
ARCHITECTURE behavior OF X7Seg_Top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT X7Seg_top
    PORT(
         Cin : IN  std_logic;
         B : IN  std_logic_vector(3 downto 0);
         A : IN  std_logic_vector(3 downto 0);
         mclk : IN  std_logic;
         clr : IN  std_logic;
         an : OUT  std_logic_vector(3 downto 0);
         a_to_g : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Cin : std_logic := '0';
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal mclk : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal an : std_logic_vector(3 downto 0);
   signal a_to_g : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant mclk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: X7Seg_top PORT MAP (
          Cin => Cin,
          B => B,
          A => A,
          mclk => mclk,
          clr => clr,
          an => an,
          a_to_g => a_to_g
        );

   -- Clock process definitions
   mclk_process :process
   begin
		mclk <= '0';
		wait for mclk_period/2;
		mclk <= '1';
		wait for mclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	

      wait for mclk_period*10;

      -- insert stimulus here 
		
			clr <= '1';
			A 	 <= x"1";
			B 	 <= x"3";
			cin <= '1';
			wait for 20 ns; 
			
			clr <= '0';
			A 	 <= x"5";
			B 	 <= x"4";
			cin <= '0';
			wait for 20971520 ns; 
			
			A 	 <= x"F";
			B 	 <= x"3";
			cin <= '0';
			wait for 20971520 ns; 
			
			A 	 <= x"E";
			B 	 <= x"1";
			cin <= '0';
			wait for 20971520 ns; 
			
      wait;
   end process;

END;
