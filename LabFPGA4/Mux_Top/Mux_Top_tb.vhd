--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:46:25 06/24/2022
-- Design Name:   
-- Module Name:   D:/Labs digital 1/Mux_Top/Mux_Top_tb.vhd
-- Project Name:  Mux_Top
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
 
ENTITY Mux_Top_tb IS
END Mux_Top_tb;
 
ARCHITECTURE behavior OF Mux_Top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_Top
    PORT(
         clr : IN  std_logic;
         clk : IN  std_logic;
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         cin : IN  std_logic;
         an : OUT  std_logic_vector(3 downto 0);
         a_to_g : OUT  std_logic_vector(6 downto 0);
         Led : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clr : std_logic := '0';
   signal clk : std_logic := '0';
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(1 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal an : std_logic_vector(3 downto 0);
   signal a_to_g : std_logic_vector(6 downto 0);
   signal Led : std_logic_vector(7 downto 0);
   signal Cout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_Top PORT MAP (
          clr => clr,
          clk => clk,
          A => A,
          B => B,
          sel => sel,
          cin => cin,
          an => an,
          a_to_g => a_to_g,
          Led => Led,
          Cout => Cout
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

      --wait for clk_period*10;

      -- insert stimulus here 
		
		clr <= '1';
		A <= x"0";
		B <= x"0";
		sel <= "00";
		Cin <= '0';
		wait for 20 ns;
		clr <= '0';
		A <= x"4";
		B <= x"5";
		sel <= "01";
		Cin <= '0';
		wait for 20971520 ns;
		clr <= '0';
		A <= x"A";
		B <= x"5";
		sel <= "00";
		Cin <= '0';
		wait for 20971520 ns;
      clr <= '0';
		A <= x"8";
		B <= x"5";
		sel <= "00";
		Cin <= '0';
		wait for 20971520 ns;
		clr <= '0';
		A <= x"8";
		B <= x"5";
		sel <= "01";
		Cin <= '1';
		wait for 20971520 ns;

      wait;
   end process;

END;
