--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:52:16 04/13/2023
-- Design Name:   
-- Module Name:   /home/ise/LOGIC/LOGIC_tb.vhd
-- Project Name:  LOGIC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LOGIC
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
 
ENTITY LOGIC_tb IS
END LOGIC_tb;
 
ARCHITECTURE behavior OF LOGIC_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LOGIC
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         L : IN  std_logic;
         M : IN  std_logic;
         N : IN  std_logic;
         P : OUT  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal L : std_logic := '0';
   signal M : std_logic := '0';
   signal N : std_logic := '0';

 	--Outputs
   signal P : std_logic;
   signal Q : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LOGIC PORT MAP (
          J => J,
          K => K,
          L => L,
          M => M,
          N => N,
          P => P,
          Q => Q
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

	J <= '0';
	K <= '0';
	L <= '0';
	M <= '0';
	N <= '0';
	wait for 100 ns;
	J <= '0';
	K <= '0';
	L <= '0';
	M <= '0';
	N <= '1';
	wait for 100 ns;
	J <= '0';
	K <= '0';
	L <= '0';
	M <= '1';
	N <= '0';
	wait for 100 ns;
	J <= '0';
	K <= '0';
	L <= '0';
	M <= '1';
	N <= '1';
	wait for 100 ns;
      wait;
   end process;

END;
