--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:36:52 04/13/2023
-- Design Name:   
-- Module Name:   /home/ise/Lab2FPGA/ANDOR_tb.vhd
-- Project Name:  Lab2FPGA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ANDOR
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
 
ENTITY ANDOR_tb IS
END ANDOR_tb;
 
ARCHITECTURE behavior OF ANDOR_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ANDOR
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         F : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal F : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ANDOR PORT MAP (
          A => A,
          B => B,
          C => C,
          F => F
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 
		
		a <= '0';
		b <= '0';
		c <= '0';
		wait for 100 ns;
		a <= '1';
		b <= '1';
		c <= '1';
		wait for 100 ns;
		a <= '0';
		b <= '0';
		c <= '1';
		wait for 100 ns;
		a <= '0';
		b <= '1';
		c <= '0';
		wait for 100 ns;
		a <= '0';
		b <= '1';
		c <= '1';
		wait for 100 ns;
		a <= '1';
		b <= '0';
		c <= '0';
		wait for 100 ns;
		a <= '1';
		b <= '0';
		c <= '1';
		wait for 100 ns;
		a <= '1';
		b <= '1';
		c <= '0';
		wait for 100 ns;
		
      wait;
   end process;

END;
