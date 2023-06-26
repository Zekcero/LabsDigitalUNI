--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:24:21 05/11/2023
-- Design Name:   
-- Module Name:   /home/ise/VirtualBox/Div4bLogic/Div4BitLogic_tb.vhd
-- Project Name:  Div4bLogic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divider
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
 
ENTITY Div4BitLogic_tb IS
END Div4BitLogic_tb;
 
ARCHITECTURE behavior OF Div4BitLogic_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divider
    PORT(
         operanda : IN  std_logic_vector(3 downto 0);
         operandb : IN  std_logic_vector(3 downto 0);
         errorsig : OUT  std_logic;
         result_low : OUT  std_logic_vector(3 downto 0);
         result_high : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal operanda : std_logic_vector(3 downto 0) := (others => '0');
   signal operandb : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal errorsig : std_logic;
   signal result_low : std_logic_vector(3 downto 0);
   signal result_high : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divider PORT MAP (
          operanda => operanda,
          operandb => operandb,
          errorsig => errorsig,
          result_low => result_low,
          result_high => result_high
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
--      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 

 operanda <= "1000";  -- 8
        operandb <= "0010";  -- 2
        wait for 100 ns;
        operandb <= "0100";  -- 4
        wait for 100 ns;    
        operandb <= "1000";  -- 8
        wait for 100 ns;
        operanda <= "1111";  -- 15
        operandb <= "0011";  -- 3
        wait for 100 ns;
        operandb <= (others => '0');
        wait for 100 ns;
        operanda <= "1101";  -- 13
        operandb <= "0111";  -- 7
        wait for 100 ns;
      wait;
   end process;

END;
