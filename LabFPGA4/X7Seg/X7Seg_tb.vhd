--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:13:16 05/18/2023
-- Design Name:   
-- Module Name:   C:/Users/David/Documents/LabsFPGADigital/LabFPGA4/X7Seg/X7Seg_tb.vhd
-- Project Name:  X7Seg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: X7Seg
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
 
ENTITY X7Seg_tb IS
END X7Seg_tb;
 
ARCHITECTURE behavior OF X7Seg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT X7Seg
    PORT(
         clk : IN  std_logic;
         clr : IN  std_logic;
         x : IN  std_logic_vector(15 downto 0);
         an : OUT  std_logic_vector(3 downto 0);
         a_to_g : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal x : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal an : std_logic_vector(3 downto 0);
   signal a_to_g : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: X7Seg PORT MAP (
          clk => clk,
          clr => clr,
          x => x,
          an => an,
          a_to_g => a_to_g
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		
			x 	 <= x"D";
			clr <= '1';
			wait for 20971520 ns; 
			
			x 	 <= x"7";
			clr <= '1';
			wait for 20971520 ns; 
			
			x 	 <= x"F";
			clr <= '1';
			wait for 20971520 ns; 
			
			x 	 <= x"5";
			clr <= '1';
			wait for 20971520 ns; 
			
      wait;
   end process;

END;
