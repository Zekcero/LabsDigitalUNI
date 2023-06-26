--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:27:01 06/07/2023
-- Design Name:   
-- Module Name:   C:/Users/David/Documents/LabsFPGADigital/LabFPGA5/Mux-Top/MuxTop_tb.vhd
-- Project Name:  Mux-Top
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_Top
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
 
ENTITY MuxTop_tb IS
END MuxTop_tb;
 
ARCHITECTURE behavior OF MuxTop_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_Top
    PORT(
         clk : IN  std_logic;
         clr : IN  std_logic;
         Ax : IN  std_logic_vector(3 downto 0);
         Bx : IN  std_logic_vector(3 downto 0);
         Sel1 : IN  std_logic;
         Sel2 : IN  std_logic;
         Cinx : IN  std_logic;
         anx : OUT  std_logic_vector(3 downto 0);
         a_to_gx : OUT  std_logic_vector(6 downto 0);
         Ledx : OUT  std_logic_vector(7 downto 0);
         Coutx : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal Ax : std_logic_vector(3 downto 0) := (others => '0');
   signal Bx : std_logic_vector(3 downto 0) := (others => '0');
   signal Sel1 : std_logic := '0';
   signal Sel2 : std_logic := '0';
   signal Cinx : std_logic := '0';

 	--Outputs
   signal anx : std_logic_vector(3 downto 0);
   signal a_to_gx : std_logic_vector(6 downto 0);
   signal Ledx : std_logic_vector(7 downto 0);
   signal Coutx : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_Top PORT MAP (
          clk => clk,
          clr => clr,
          Ax => Ax,
          Bx => Bx,
          Sel1 => Sel1,
          Sel2 => Sel2,
          Cinx => Cinx,
          anx => anx,
          a_to_gx => a_to_gx,
          Ledx => Ledx,
          Coutx => Coutx
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

      wait;
   end process;

END;
