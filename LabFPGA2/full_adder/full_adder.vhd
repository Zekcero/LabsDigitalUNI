--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:26:56 04/27/2023
-- Design Name:   
-- Module Name:   /home/ise/Elec._digital_1/LabFPGA2/full_adder/full_adder.vhd
-- Project Name:  full_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_addder
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
 
ENTITY full_adder IS
END full_adder;
 
ARCHITECTURE behavior OF full_adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_addder
    PORT(
         p : IN  std_logic;
         m : IN  std_logic;
         n : IN  std_logic;
         s : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal p : std_logic := '0';
   signal m : std_logic := '0';
   signal n : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_addder PORT MAP (
          p => p,
          m => m,
          n => n,
          s => s,
          cout => cout
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--  end process;
 

   --Stimulus process
   stim_proc: process
   begin		
--      hold reset state for 100 ns.
      wait for 100 ns;	

    --  wait for <clock>_period*10;

      -- insert stimulus here  
		
		p <= '0';
		m <= '0';
		n <= '0';
		wait for 100 ns; 
		p <= '1';
		m <= '0';
		n <= '0';
		wait for 100 ns; 
		p <= '0';
		m <= '1';
		n <= '0';
		wait for 100 ns; 
		p <= '1';
		m <= '1';
		n <= '0';
		wait for 100 ns; 
			

      wait;
   end process;

END;
