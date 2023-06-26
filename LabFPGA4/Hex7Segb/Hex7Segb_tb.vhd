--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:28:28 05/15/2023
-- Design Name:   
-- Module Name:   C:/Users/David/Documents/LabsFPGADigital/LabsConseguidos/Hex7Segb/Hex7Segb_tb.vhd
-- Project Name:  Hex7Segb
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Hex7Segb
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
USE ieee.std_logic_UNSIGNED.ALL; 
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Hex7Segb_tb IS
END Hex7Segb_tb;
 
ARCHITECTURE behavior OF Hex7Segb_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Hex7Segb
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         a_to_g : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal a_to_g : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Hex7Segb PORT MAP (
          x => x,
          a_to_g => a_to_g
        );

   -- Clock process definitions
--   clk_process :process
--   begin
--		clk <= '0';
--		wait for clk_period/2;
--		clk <= '1';
--		wait for clk_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for clk_period*10;

      -- insert stimulus here 
			x <= "0001";
			wait for 100 ns; 
			x <= "0010";
			wait for 100 ns; 
			x <= "0011";
			wait for 100 ns; 
			x <= "0100";
			wait for 100 ns; 
      wait;
   end process;

END;
