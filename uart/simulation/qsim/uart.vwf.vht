-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/10/2020 21:28:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UART
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UART_vhd_vec_tst IS
END UART_vhd_vec_tst;
ARCHITECTURE UART_arch OF UART_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOckIn : STD_LOGIC;
SIGNAL RESet : STD_LOGIC;
SIGNAL text1 : STD_LOGIC;
SIGNAL TX : STD_LOGIC;
COMPONENT UART
	PORT (
	CLOckIn : IN STD_LOGIC;
	RESet : IN STD_LOGIC;
	text1 : BUFFER STD_LOGIC;
	TX : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UART
	PORT MAP (
-- list connections between master ports and signals
	CLOckIn => CLOckIn,
	RESet => RESet,
	text1 => text1,
	TX => TX
	);

-- CLOckIn
t_prcs_CLOckIn: PROCESS
BEGIN
LOOP
	CLOckIn <= '0';
	WAIT FOR 10000 ps;
	CLOckIn <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOckIn;

-- RESet
t_prcs_RESet: PROCESS
BEGIN
	RESet <= '0';
WAIT;
END PROCESS t_prcs_RESet;
END UART_arch;
