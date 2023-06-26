--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Sub4bLogic_synthesis.vhd
-- /___/   /\     Timestamp: Sun May 07 20:03:35 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -filter C:/Users/David/Documents/LabsFPGADigital/LabFPGA3/Sub4bLogic/iseconfig/filter.filter -intstyle ise -ar Structure -tm Sub4bLogic -w -dir netgen/synthesis -ofmt vhdl -sim Sub4bLogic.ngc Sub4bLogic_synthesis.vhd 
-- Device	: xc3s100e-5-cp132
-- Input file	: Sub4bLogic.ngc
-- Output file	: C:\Users\David\Documents\LabsFPGADigital\LabFPGA3\Sub4bLogic\netgen\synthesis\Sub4bLogic_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Sub4bLogic
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Sub4bLogic is
  port (
    Cin1 : in STD_LOGIC := 'X'; 
    Cout1 : out STD_LOGIC; 
    S1 : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    A1 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B1 : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end Sub4bLogic;

architecture Structure of Sub4bLogic is
  signal A1_0_IBUF_4 : STD_LOGIC; 
  signal A1_1_IBUF_5 : STD_LOGIC; 
  signal A1_2_IBUF_6 : STD_LOGIC; 
  signal A1_3_IBUF_7 : STD_LOGIC; 
  signal B1_0_IBUF_12 : STD_LOGIC; 
  signal B1_1_IBUF_13 : STD_LOGIC; 
  signal B1_2_IBUF_14 : STD_LOGIC; 
  signal B1_3_IBUF_15 : STD_LOGIC; 
  signal Cin1_IBUF_17 : STD_LOGIC; 
  signal Cout1_OBUF_19 : STD_LOGIC; 
  signal S1_0_OBUF_24 : STD_LOGIC; 
  signal S1_1_OBUF_25 : STD_LOGIC; 
  signal S1_2_OBUF_26 : STD_LOGIC; 
  signal S1_3_OBUF_27 : STD_LOGIC; 
  signal c1 : STD_LOGIC; 
  signal c2 : STD_LOGIC; 
  signal c3 : STD_LOGIC; 
begin
  U1_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => A1_0_IBUF_4,
      I1 => B1_0_IBUF_12,
      I2 => Cin1_IBUF_17,
      O => S1_0_OBUF_24
    );
  U2_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => A1_1_IBUF_5,
      I1 => B1_1_IBUF_13,
      I2 => c1,
      O => S1_1_OBUF_25
    );
  U3_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => A1_2_IBUF_6,
      I1 => B1_2_IBUF_14,
      I2 => c2,
      O => S1_2_OBUF_26
    );
  U4_Cout1 : LUT3
    generic map(
      INIT => X"8E"
    )
    port map (
      I0 => A1_3_IBUF_7,
      I1 => c3,
      I2 => B1_3_IBUF_15,
      O => Cout1_OBUF_19
    );
  U3_Cout1 : LUT3
    generic map(
      INIT => X"8E"
    )
    port map (
      I0 => A1_2_IBUF_6,
      I1 => c2,
      I2 => B1_2_IBUF_14,
      O => c3
    );
  U2_Cout1 : LUT3
    generic map(
      INIT => X"8E"
    )
    port map (
      I0 => A1_1_IBUF_5,
      I1 => c1,
      I2 => B1_1_IBUF_13,
      O => c2
    );
  U1_Cout1 : LUT3
    generic map(
      INIT => X"8E"
    )
    port map (
      I0 => A1_0_IBUF_4,
      I1 => Cin1_IBUF_17,
      I2 => B1_0_IBUF_12,
      O => c1
    );
  U4_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => A1_3_IBUF_7,
      I1 => B1_3_IBUF_15,
      I2 => c3,
      O => S1_3_OBUF_27
    );
  Cin1_IBUF : IBUF
    port map (
      I => Cin1,
      O => Cin1_IBUF_17
    );
  A1_3_IBUF : IBUF
    port map (
      I => A1(3),
      O => A1_3_IBUF_7
    );
  A1_2_IBUF : IBUF
    port map (
      I => A1(2),
      O => A1_2_IBUF_6
    );
  A1_1_IBUF : IBUF
    port map (
      I => A1(1),
      O => A1_1_IBUF_5
    );
  A1_0_IBUF : IBUF
    port map (
      I => A1(0),
      O => A1_0_IBUF_4
    );
  B1_3_IBUF : IBUF
    port map (
      I => B1(3),
      O => B1_3_IBUF_15
    );
  B1_2_IBUF : IBUF
    port map (
      I => B1(2),
      O => B1_2_IBUF_14
    );
  B1_1_IBUF : IBUF
    port map (
      I => B1(1),
      O => B1_1_IBUF_13
    );
  B1_0_IBUF : IBUF
    port map (
      I => B1(0),
      O => B1_0_IBUF_12
    );
  Cout1_OBUF : OBUF
    port map (
      I => Cout1_OBUF_19,
      O => Cout1
    );
  S1_3_OBUF : OBUF
    port map (
      I => S1_3_OBUF_27,
      O => S1(3)
    );
  S1_2_OBUF : OBUF
    port map (
      I => S1_2_OBUF_26,
      O => S1(2)
    );
  S1_1_OBUF : OBUF
    port map (
      I => S1_1_OBUF_25,
      O => S1(1)
    );
  S1_0_OBUF : OBUF
    port map (
      I => S1_0_OBUF_24,
      O => S1(0)
    );

end Structure;

