--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:31 05/08/2023
-- Design Name:   
-- Module Name:   C:/Users/David/Documents/LabsFPGADigital/LabFPGA3/Sub4bLogic/Sub4bLogic_tb.vhd
-- Project Name:  Sub4bLogic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sub4bLogic
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
 
ENTITY Sub4bLogic_tb IS
END Sub4bLogic_tb;
 
ARCHITECTURE behavior OF Sub4bLogic_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sub4bLogic
    PORT(
         A1 : IN  std_logic_vector(3 downto 0);
         B1 : IN  std_logic_vector(3 downto 0);
         Cin1 : IN  std_logic;
         Cout1 : OUT  std_logic;
         S1 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A1 : std_logic_vector(3 downto 0) := (others => '0');
   signal B1 : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin1 : std_logic := '0';

 	--Outputs
   signal Cout1 : std_logic;
   signal S1 : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sub4bLogic PORT MAP (
          A1 => A1,
          B1 => B1,
          Cin1 => Cin1,
          Cout1 => Cout1,
          S1 => S1
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
			A1 <= x"5";
			B1 <= x"1";
			wait for 100 ns; 
			A1 <= x"D";
			B1 <= x"2";
			wait for 100 ns; 
			A1 <= x"F";
			B1 <= x"1";
			wait for 100 ns; 
			A1 <= x"5";
			B1 <= x"4";
			wait for 100 ns; 

      wait;
   end process;

END;
