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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "02/11/2020 16:30:57"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UART IS
    PORT (
	CLOckIn : IN std_logic;
	RX : IN std_logic;
	TX : BUFFER std_logic;
	RESet : IN std_logic;
	text1 : BUFFER std_logic_vector(0 TO 7)
	);
END UART;

-- Design Ports Information
-- TX	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[5]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESet	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOckIn	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOckIn : std_logic;
SIGNAL ww_RX : std_logic;
SIGNAL ww_TX : std_logic;
SIGNAL ww_RESet : std_logic;
SIGNAL ww_text1 : std_logic_vector(0 TO 7);
SIGNAL \r1|f1|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t1|f1|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOckIn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESet~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TX~output_o\ : std_logic;
SIGNAL \text1[7]~output_o\ : std_logic;
SIGNAL \text1[6]~output_o\ : std_logic;
SIGNAL \text1[5]~output_o\ : std_logic;
SIGNAL \text1[4]~output_o\ : std_logic;
SIGNAL \text1[3]~output_o\ : std_logic;
SIGNAL \text1[2]~output_o\ : std_logic;
SIGNAL \text1[1]~output_o\ : std_logic;
SIGNAL \text1[0]~output_o\ : std_logic;
SIGNAL \CLOckIn~input_o\ : std_logic;
SIGNAL \CLOckIn~inputclkctrl_outclk\ : std_logic;
SIGNAL \r1|f1|Add0~33\ : std_logic;
SIGNAL \r1|f1|Add0~34_combout\ : std_logic;
SIGNAL \r1|f1|Add0~35\ : std_logic;
SIGNAL \r1|f1|Add0~36_combout\ : std_logic;
SIGNAL \r1|f1|Add0~37\ : std_logic;
SIGNAL \r1|f1|Add0~38_combout\ : std_logic;
SIGNAL \r1|f1|Add0~39\ : std_logic;
SIGNAL \r1|f1|Add0~40_combout\ : std_logic;
SIGNAL \r1|f1|Add0~41\ : std_logic;
SIGNAL \r1|f1|Add0~42_combout\ : std_logic;
SIGNAL \r1|f1|Add0~43\ : std_logic;
SIGNAL \r1|f1|Add0~44_combout\ : std_logic;
SIGNAL \r1|f1|Add0~45\ : std_logic;
SIGNAL \r1|f1|Add0~46_combout\ : std_logic;
SIGNAL \r1|f1|Add0~47\ : std_logic;
SIGNAL \r1|f1|Add0~48_combout\ : std_logic;
SIGNAL \r1|f1|i~0_combout\ : std_logic;
SIGNAL \r1|f1|Add0~0_combout\ : std_logic;
SIGNAL \r1|f1|Add0~1\ : std_logic;
SIGNAL \r1|f1|Add0~2_combout\ : std_logic;
SIGNAL \r1|f1|Add0~3\ : std_logic;
SIGNAL \r1|f1|Add0~4_combout\ : std_logic;
SIGNAL \r1|f1|Add0~5\ : std_logic;
SIGNAL \r1|f1|Add0~6_combout\ : std_logic;
SIGNAL \r1|f1|Equal0~1_combout\ : std_logic;
SIGNAL \r1|f1|i~3_combout\ : std_logic;
SIGNAL \r1|f1|Add0~7\ : std_logic;
SIGNAL \r1|f1|Add0~8_combout\ : std_logic;
SIGNAL \r1|f1|i~1_combout\ : std_logic;
SIGNAL \r1|f1|Add0~9\ : std_logic;
SIGNAL \r1|f1|Add0~10_combout\ : std_logic;
SIGNAL \r1|f1|Add0~11\ : std_logic;
SIGNAL \r1|f1|Add0~12_combout\ : std_logic;
SIGNAL \r1|f1|i~2_combout\ : std_logic;
SIGNAL \r1|f1|Add0~13\ : std_logic;
SIGNAL \r1|f1|Add0~14_combout\ : std_logic;
SIGNAL \r1|f1|Equal0~2_combout\ : std_logic;
SIGNAL \r1|f1|Add0~15\ : std_logic;
SIGNAL \r1|f1|Add0~16_combout\ : std_logic;
SIGNAL \r1|f1|Add0~17\ : std_logic;
SIGNAL \r1|f1|Add0~18_combout\ : std_logic;
SIGNAL \r1|f1|Add0~19\ : std_logic;
SIGNAL \r1|f1|Add0~20_combout\ : std_logic;
SIGNAL \r1|f1|Add0~21\ : std_logic;
SIGNAL \r1|f1|Add0~22_combout\ : std_logic;
SIGNAL \r1|f1|Equal0~3_combout\ : std_logic;
SIGNAL \r1|f1|Equal0~4_combout\ : std_logic;
SIGNAL \r1|f1|i~4_combout\ : std_logic;
SIGNAL \r1|f1|Add0~23\ : std_logic;
SIGNAL \r1|f1|Add0~24_combout\ : std_logic;
SIGNAL \r1|f1|Add0~25\ : std_logic;
SIGNAL \r1|f1|Add0~26_combout\ : std_logic;
SIGNAL \r1|f1|Equal0~0_combout\ : std_logic;
SIGNAL \r1|f1|Equal0~5_combout\ : std_logic;
SIGNAL \r1|f1|Equal0~6_combout\ : std_logic;
SIGNAL \r1|f1|Equal0~7_combout\ : std_logic;
SIGNAL \r1|f1|i~5_combout\ : std_logic;
SIGNAL \r1|f1|Add0~27\ : std_logic;
SIGNAL \r1|f1|Add0~28_combout\ : std_logic;
SIGNAL \r1|f1|Add0~29\ : std_logic;
SIGNAL \r1|f1|Add0~30_combout\ : std_logic;
SIGNAL \r1|f1|i[15]~feeder_combout\ : std_logic;
SIGNAL \r1|f1|Add0~31\ : std_logic;
SIGNAL \r1|f1|Add0~32_combout\ : std_logic;
SIGNAL \t1|f1|Add0~1\ : std_logic;
SIGNAL \t1|f1|Add0~3\ : std_logic;
SIGNAL \t1|f1|Add0~5\ : std_logic;
SIGNAL \t1|f1|Add0~7\ : std_logic;
SIGNAL \t1|f1|Add0~9\ : std_logic;
SIGNAL \t1|f1|Add0~11\ : std_logic;
SIGNAL \t1|f1|Add0~13\ : std_logic;
SIGNAL \t1|f1|Add0~15\ : std_logic;
SIGNAL \t1|f1|Add0~17\ : std_logic;
SIGNAL \t1|f1|Add0~19\ : std_logic;
SIGNAL \t1|f1|Add0~21\ : std_logic;
SIGNAL \t1|f1|Add0~23\ : std_logic;
SIGNAL \t1|f1|Add0~25\ : std_logic;
SIGNAL \t1|f1|Add0~27\ : std_logic;
SIGNAL \t1|f1|Add0~29\ : std_logic;
SIGNAL \t1|f1|Add0~30_combout\ : std_logic;
SIGNAL \t1|f1|Add0~31\ : std_logic;
SIGNAL \t1|f1|Add0~32_combout\ : std_logic;
SIGNAL \t1|f1|Add0~33\ : std_logic;
SIGNAL \t1|f1|Add0~34_combout\ : std_logic;
SIGNAL \t1|f1|Add0~35\ : std_logic;
SIGNAL \t1|f1|Add0~36_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~5_combout\ : std_logic;
SIGNAL \t1|f1|Add0~4_combout\ : std_logic;
SIGNAL \t1|f1|Add0~0_combout\ : std_logic;
SIGNAL \t1|f1|Add0~2_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~0_combout\ : std_logic;
SIGNAL \t1|f1|Add0~12_combout\ : std_logic;
SIGNAL \t1|f1|Add0~8_combout\ : std_logic;
SIGNAL \t1|f1|Add0~6_combout\ : std_logic;
SIGNAL \t1|f1|Add0~10_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~1_combout\ : std_logic;
SIGNAL \t1|f1|Add0~18_combout\ : std_logic;
SIGNAL \t1|f1|Add0~20_combout\ : std_logic;
SIGNAL \t1|f1|Add0~14_combout\ : std_logic;
SIGNAL \t1|f1|Add0~16_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~2_combout\ : std_logic;
SIGNAL \t1|f1|Add0~24_combout\ : std_logic;
SIGNAL \t1|f1|Add0~22_combout\ : std_logic;
SIGNAL \t1|f1|Add0~26_combout\ : std_logic;
SIGNAL \t1|f1|Add0~28_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~3_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~4_combout\ : std_logic;
SIGNAL \t1|f1|Add0~37\ : std_logic;
SIGNAL \t1|f1|Add0~39\ : std_logic;
SIGNAL \t1|f1|Add0~41\ : std_logic;
SIGNAL \t1|f1|Add0~43\ : std_logic;
SIGNAL \t1|f1|Add0~45\ : std_logic;
SIGNAL \t1|f1|Add0~46_combout\ : std_logic;
SIGNAL \t1|f1|Add0~44_combout\ : std_logic;
SIGNAL \t1|f1|Add0~38_combout\ : std_logic;
SIGNAL \t1|f1|Add0~40_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~6_combout\ : std_logic;
SIGNAL \t1|f1|Add0~42_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~7_combout\ : std_logic;
SIGNAL \t1|f1|temp~0_combout\ : std_logic;
SIGNAL \t1|f1|temp~q\ : std_logic;
SIGNAL \t1|f1|temp~clkctrl_outclk\ : std_logic;
SIGNAL \RESet~input_o\ : std_logic;
SIGNAL \t1|Add0~0_combout\ : std_logic;
SIGNAL \t1|Selector36~0_combout\ : std_logic;
SIGNAL \RESet~inputclkctrl_outclk\ : std_logic;
SIGNAL \t1|Add0~1\ : std_logic;
SIGNAL \t1|Add0~2_combout\ : std_logic;
SIGNAL \t1|Selector35~0_combout\ : std_logic;
SIGNAL \t1|Add0~3\ : std_logic;
SIGNAL \t1|Add0~4_combout\ : std_logic;
SIGNAL \t1|Selector34~0_combout\ : std_logic;
SIGNAL \t1|Add0~5\ : std_logic;
SIGNAL \t1|Add0~6_combout\ : std_logic;
SIGNAL \t1|Selector33~0_combout\ : std_logic;
SIGNAL \t1|Equal0~8_combout\ : std_logic;
SIGNAL \t1|Add0~7\ : std_logic;
SIGNAL \t1|Add0~8_combout\ : std_logic;
SIGNAL \t1|Selector32~0_combout\ : std_logic;
SIGNAL \t1|Add0~9\ : std_logic;
SIGNAL \t1|Add0~10_combout\ : std_logic;
SIGNAL \t1|Selector31~0_combout\ : std_logic;
SIGNAL \t1|Add0~11\ : std_logic;
SIGNAL \t1|Add0~12_combout\ : std_logic;
SIGNAL \t1|Selector30~0_combout\ : std_logic;
SIGNAL \t1|Add0~13\ : std_logic;
SIGNAL \t1|Add0~14_combout\ : std_logic;
SIGNAL \t1|Selector29~0_combout\ : std_logic;
SIGNAL \t1|Add0~15\ : std_logic;
SIGNAL \t1|Add0~16_combout\ : std_logic;
SIGNAL \t1|Selector28~0_combout\ : std_logic;
SIGNAL \t1|Add0~17\ : std_logic;
SIGNAL \t1|Add0~18_combout\ : std_logic;
SIGNAL \t1|Selector27~0_combout\ : std_logic;
SIGNAL \t1|Add0~19\ : std_logic;
SIGNAL \t1|Add0~20_combout\ : std_logic;
SIGNAL \t1|Selector26~0_combout\ : std_logic;
SIGNAL \t1|Add0~21\ : std_logic;
SIGNAL \t1|Add0~22_combout\ : std_logic;
SIGNAL \t1|Selector25~0_combout\ : std_logic;
SIGNAL \t1|Equal0~6_combout\ : std_logic;
SIGNAL \t1|Add0~23\ : std_logic;
SIGNAL \t1|Add0~24_combout\ : std_logic;
SIGNAL \t1|Selector24~0_combout\ : std_logic;
SIGNAL \t1|Add0~25\ : std_logic;
SIGNAL \t1|Add0~26_combout\ : std_logic;
SIGNAL \t1|Selector23~0_combout\ : std_logic;
SIGNAL \t1|Add0~27\ : std_logic;
SIGNAL \t1|Add0~28_combout\ : std_logic;
SIGNAL \t1|Selector22~0_combout\ : std_logic;
SIGNAL \t1|Add0~29\ : std_logic;
SIGNAL \t1|Add0~30_combout\ : std_logic;
SIGNAL \t1|Selector21~0_combout\ : std_logic;
SIGNAL \t1|Equal0~5_combout\ : std_logic;
SIGNAL \t1|Equal0~7_combout\ : std_logic;
SIGNAL \t1|Equal0~9_combout\ : std_logic;
SIGNAL \t1|Selector2~0_combout\ : std_logic;
SIGNAL \t1|Add0~31\ : std_logic;
SIGNAL \t1|Add0~32_combout\ : std_logic;
SIGNAL \t1|Selector20~0_combout\ : std_logic;
SIGNAL \t1|Add0~33\ : std_logic;
SIGNAL \t1|Add0~34_combout\ : std_logic;
SIGNAL \t1|Selector19~0_combout\ : std_logic;
SIGNAL \t1|Add0~35\ : std_logic;
SIGNAL \t1|Add0~36_combout\ : std_logic;
SIGNAL \t1|Selector18~0_combout\ : std_logic;
SIGNAL \t1|Add0~37\ : std_logic;
SIGNAL \t1|Add0~38_combout\ : std_logic;
SIGNAL \t1|Selector17~0_combout\ : std_logic;
SIGNAL \t1|Add0~39\ : std_logic;
SIGNAL \t1|Add0~40_combout\ : std_logic;
SIGNAL \t1|Selector16~0_combout\ : std_logic;
SIGNAL \t1|Add0~41\ : std_logic;
SIGNAL \t1|Add0~42_combout\ : std_logic;
SIGNAL \t1|Selector15~0_combout\ : std_logic;
SIGNAL \t1|Add0~43\ : std_logic;
SIGNAL \t1|Add0~44_combout\ : std_logic;
SIGNAL \t1|Selector14~0_combout\ : std_logic;
SIGNAL \t1|Add0~45\ : std_logic;
SIGNAL \t1|Add0~46_combout\ : std_logic;
SIGNAL \t1|Selector13~0_combout\ : std_logic;
SIGNAL \t1|Add0~47\ : std_logic;
SIGNAL \t1|Add0~48_combout\ : std_logic;
SIGNAL \t1|Selector12~0_combout\ : std_logic;
SIGNAL \t1|Add0~49\ : std_logic;
SIGNAL \t1|Add0~50_combout\ : std_logic;
SIGNAL \t1|Selector11~0_combout\ : std_logic;
SIGNAL \t1|Add0~51\ : std_logic;
SIGNAL \t1|Add0~52_combout\ : std_logic;
SIGNAL \t1|Selector10~0_combout\ : std_logic;
SIGNAL \t1|Add0~53\ : std_logic;
SIGNAL \t1|Add0~54_combout\ : std_logic;
SIGNAL \t1|Selector9~0_combout\ : std_logic;
SIGNAL \t1|Equal0~1_combout\ : std_logic;
SIGNAL \t1|Add0~55\ : std_logic;
SIGNAL \t1|Add0~56_combout\ : std_logic;
SIGNAL \t1|Selector8~0_combout\ : std_logic;
SIGNAL \t1|Add0~57\ : std_logic;
SIGNAL \t1|Add0~58_combout\ : std_logic;
SIGNAL \t1|Selector7~0_combout\ : std_logic;
SIGNAL \t1|Add0~59\ : std_logic;
SIGNAL \t1|Add0~60_combout\ : std_logic;
SIGNAL \t1|Selector6~0_combout\ : std_logic;
SIGNAL \t1|Equal0~0_combout\ : std_logic;
SIGNAL \t1|Equal0~2_combout\ : std_logic;
SIGNAL \t1|Equal0~3_combout\ : std_logic;
SIGNAL \t1|Equal0~4_combout\ : std_logic;
SIGNAL \t1|Selector2~1_combout\ : std_logic;
SIGNAL \t1|Selector3~2_combout\ : std_logic;
SIGNAL \t1|Selector3~0_combout\ : std_logic;
SIGNAL \t1|Selector3~3_combout\ : std_logic;
SIGNAL \t1|Selector3~1_combout\ : std_logic;
SIGNAL \t1|Selector3~4_combout\ : std_logic;
SIGNAL \t1|Selector3~5_combout\ : std_logic;
SIGNAL \t1|Selector3~6_combout\ : std_logic;
SIGNAL \t1|Selector3~7_combout\ : std_logic;
SIGNAL \t1|Selector3~8_combout\ : std_logic;
SIGNAL \t1|Selector3~9_combout\ : std_logic;
SIGNAL \t1|Selector2~2_combout\ : std_logic;
SIGNAL \t1|TXState.IDLE~0_combout\ : std_logic;
SIGNAL \t1|TXState.IDLE~q\ : std_logic;
SIGNAL \t1|Selector1~0_combout\ : std_logic;
SIGNAL \t1|TXState.TXR~q\ : std_logic;
SIGNAL \t1|Selector2~3_combout\ : std_logic;
SIGNAL \t1|TXState.TXING~q\ : std_logic;
SIGNAL \t1|Selector5~0_combout\ : std_logic;
SIGNAL \t1|Add0~61\ : std_logic;
SIGNAL \t1|Add0~62_combout\ : std_logic;
SIGNAL \t1|Selector3~10_combout\ : std_logic;
SIGNAL \t1|TXState.TXE~q\ : std_logic;
SIGNAL \t1|TX~0_combout\ : std_logic;
SIGNAL \r1|f1|temp~0_combout\ : std_logic;
SIGNAL \r1|f1|temp~feeder_combout\ : std_logic;
SIGNAL \r1|f1|temp~q\ : std_logic;
SIGNAL \r1|f1|temp~clkctrl_outclk\ : std_logic;
SIGNAL \RX~input_o\ : std_logic;
SIGNAL \r1|Selector0~0_combout\ : std_logic;
SIGNAL \r1|RXState.IDLE~q\ : std_logic;
SIGNAL \r1|Selector2~0_combout\ : std_logic;
SIGNAL \r1|Selector2~1_combout\ : std_logic;
SIGNAL \r1|RXState.RXING~q\ : std_logic;
SIGNAL \r1|Selector4~0_combout\ : std_logic;
SIGNAL \r1|n[17]~0_combout\ : std_logic;
SIGNAL \r1|Add0~1\ : std_logic;
SIGNAL \r1|Add0~2_combout\ : std_logic;
SIGNAL \r1|Selector34~0_combout\ : std_logic;
SIGNAL \r1|Add0~3\ : std_logic;
SIGNAL \r1|Add0~4_combout\ : std_logic;
SIGNAL \r1|Selector33~0_combout\ : std_logic;
SIGNAL \r1|Add0~5\ : std_logic;
SIGNAL \r1|Add0~6_combout\ : std_logic;
SIGNAL \r1|Selector32~0_combout\ : std_logic;
SIGNAL \r1|Add0~7\ : std_logic;
SIGNAL \r1|Add0~8_combout\ : std_logic;
SIGNAL \r1|Selector31~0_combout\ : std_logic;
SIGNAL \r1|Add0~9\ : std_logic;
SIGNAL \r1|Add0~10_combout\ : std_logic;
SIGNAL \r1|Selector30~0_combout\ : std_logic;
SIGNAL \r1|Add0~11\ : std_logic;
SIGNAL \r1|Add0~12_combout\ : std_logic;
SIGNAL \r1|Selector29~0_combout\ : std_logic;
SIGNAL \r1|Add0~13\ : std_logic;
SIGNAL \r1|Add0~14_combout\ : std_logic;
SIGNAL \r1|Selector28~0_combout\ : std_logic;
SIGNAL \r1|Add0~15\ : std_logic;
SIGNAL \r1|Add0~16_combout\ : std_logic;
SIGNAL \r1|Selector27~0_combout\ : std_logic;
SIGNAL \r1|Add0~17\ : std_logic;
SIGNAL \r1|Add0~18_combout\ : std_logic;
SIGNAL \r1|Selector26~0_combout\ : std_logic;
SIGNAL \r1|Add0~19\ : std_logic;
SIGNAL \r1|Add0~20_combout\ : std_logic;
SIGNAL \r1|Selector25~0_combout\ : std_logic;
SIGNAL \r1|Add0~21\ : std_logic;
SIGNAL \r1|Add0~22_combout\ : std_logic;
SIGNAL \r1|Selector24~0_combout\ : std_logic;
SIGNAL \r1|Add0~23\ : std_logic;
SIGNAL \r1|Add0~24_combout\ : std_logic;
SIGNAL \r1|Selector23~0_combout\ : std_logic;
SIGNAL \r1|Add0~25\ : std_logic;
SIGNAL \r1|Add0~26_combout\ : std_logic;
SIGNAL \r1|Selector22~0_combout\ : std_logic;
SIGNAL \r1|Add0~27\ : std_logic;
SIGNAL \r1|Add0~28_combout\ : std_logic;
SIGNAL \r1|Selector21~0_combout\ : std_logic;
SIGNAL \r1|Add0~29\ : std_logic;
SIGNAL \r1|Add0~30_combout\ : std_logic;
SIGNAL \r1|Selector20~0_combout\ : std_logic;
SIGNAL \r1|Add0~31\ : std_logic;
SIGNAL \r1|Add0~32_combout\ : std_logic;
SIGNAL \r1|Selector19~0_combout\ : std_logic;
SIGNAL \r1|Add0~33\ : std_logic;
SIGNAL \r1|Add0~34_combout\ : std_logic;
SIGNAL \r1|Selector18~0_combout\ : std_logic;
SIGNAL \r1|Add0~35\ : std_logic;
SIGNAL \r1|Add0~36_combout\ : std_logic;
SIGNAL \r1|Selector17~0_combout\ : std_logic;
SIGNAL \r1|Add0~37\ : std_logic;
SIGNAL \r1|Add0~38_combout\ : std_logic;
SIGNAL \r1|Selector16~0_combout\ : std_logic;
SIGNAL \r1|Add0~39\ : std_logic;
SIGNAL \r1|Add0~40_combout\ : std_logic;
SIGNAL \r1|Selector15~0_combout\ : std_logic;
SIGNAL \r1|Add0~41\ : std_logic;
SIGNAL \r1|Add0~42_combout\ : std_logic;
SIGNAL \r1|Selector14~0_combout\ : std_logic;
SIGNAL \r1|Add0~43\ : std_logic;
SIGNAL \r1|Add0~44_combout\ : std_logic;
SIGNAL \r1|Selector13~0_combout\ : std_logic;
SIGNAL \r1|Add0~45\ : std_logic;
SIGNAL \r1|Add0~46_combout\ : std_logic;
SIGNAL \r1|Selector12~0_combout\ : std_logic;
SIGNAL \r1|Add0~47\ : std_logic;
SIGNAL \r1|Add0~48_combout\ : std_logic;
SIGNAL \r1|Selector11~0_combout\ : std_logic;
SIGNAL \r1|Add0~49\ : std_logic;
SIGNAL \r1|Add0~50_combout\ : std_logic;
SIGNAL \r1|Selector10~0_combout\ : std_logic;
SIGNAL \r1|Add0~51\ : std_logic;
SIGNAL \r1|Add0~52_combout\ : std_logic;
SIGNAL \r1|Selector9~0_combout\ : std_logic;
SIGNAL \r1|Add0~53\ : std_logic;
SIGNAL \r1|Add0~54_combout\ : std_logic;
SIGNAL \r1|Selector8~0_combout\ : std_logic;
SIGNAL \r1|Add0~55\ : std_logic;
SIGNAL \r1|Add0~56_combout\ : std_logic;
SIGNAL \r1|Selector7~0_combout\ : std_logic;
SIGNAL \r1|Add0~57\ : std_logic;
SIGNAL \r1|Add0~58_combout\ : std_logic;
SIGNAL \r1|Selector6~0_combout\ : std_logic;
SIGNAL \r1|Add0~59\ : std_logic;
SIGNAL \r1|Add0~60_combout\ : std_logic;
SIGNAL \r1|Selector5~0_combout\ : std_logic;
SIGNAL \r1|Add0~61\ : std_logic;
SIGNAL \r1|Add0~62_combout\ : std_logic;
SIGNAL \r1|Add0~0_combout\ : std_logic;
SIGNAL \r1|Selector3~4_combout\ : std_logic;
SIGNAL \r1|Selector3~5_combout\ : std_logic;
SIGNAL \r1|Selector3~6_combout\ : std_logic;
SIGNAL \r1|Selector3~7_combout\ : std_logic;
SIGNAL \r1|Selector3~8_combout\ : std_logic;
SIGNAL \r1|Selector3~9_combout\ : std_logic;
SIGNAL \r1|Selector3~10_combout\ : std_logic;
SIGNAL \r1|Selector3~11_combout\ : std_logic;
SIGNAL \r1|Selector3~12_combout\ : std_logic;
SIGNAL \r1|Selector3~13_combout\ : std_logic;
SIGNAL \r1|Selector3~14_combout\ : std_logic;
SIGNAL \r1|Selector3~15_combout\ : std_logic;
SIGNAL \r1|RXState.RXE~q\ : std_logic;
SIGNAL \r1|Selector35~0_combout\ : std_logic;
SIGNAL \r1|Decoder0~0_combout\ : std_logic;
SIGNAL \r1|Decoder0~1_combout\ : std_logic;
SIGNAL \r1|charnR[5]~0_combout\ : std_logic;
SIGNAL \r1|TESTOUT[2]~feeder_combout\ : std_logic;
SIGNAL \r1|TESTOUT[7]~0_combout\ : std_logic;
SIGNAL \r1|Decoder0~4_combout\ : std_logic;
SIGNAL \r1|charnR[4]~3_combout\ : std_logic;
SIGNAL \r1|Decoder0~3_combout\ : std_logic;
SIGNAL \r1|charnR[7]~2_combout\ : std_logic;
SIGNAL \r1|TESTOUT[0]~1_combout\ : std_logic;
SIGNAL \r1|Decoder0~2_combout\ : std_logic;
SIGNAL \r1|charnR[6]~1_combout\ : std_logic;
SIGNAL \r1|TESTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \t1|Mux0~0_combout\ : std_logic;
SIGNAL \t1|Mux0~1_combout\ : std_logic;
SIGNAL \r1|Decoder0~8_combout\ : std_logic;
SIGNAL \r1|charnR[0]~7_combout\ : std_logic;
SIGNAL \r1|TESTOUT[7]~3_combout\ : std_logic;
SIGNAL \r1|Decoder0~5_combout\ : std_logic;
SIGNAL \r1|charnR[2]~4_combout\ : std_logic;
SIGNAL \r1|Decoder0~7_combout\ : std_logic;
SIGNAL \r1|charnR[3]~6_combout\ : std_logic;
SIGNAL \r1|TESTOUT[4]~2_combout\ : std_logic;
SIGNAL \r1|Decoder0~6_combout\ : std_logic;
SIGNAL \r1|charnR[1]~5_combout\ : std_logic;
SIGNAL \r1|TESTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \t1|Mux0~2_combout\ : std_logic;
SIGNAL \t1|Mux0~3_combout\ : std_logic;
SIGNAL \t1|TX~1_combout\ : std_logic;
SIGNAL \t1|TX~2_combout\ : std_logic;
SIGNAL \t1|TX~q\ : std_logic;
SIGNAL \r1|TESTOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \t1|n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \r1|charnR\ : std_logic_vector(0 TO 7);
SIGNAL \r1|f1|i\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \r1|n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \t1|f1|ALT_INV_temp~clkctrl_outclk\ : std_logic;
SIGNAL \r1|f1|ALT_INV_temp~clkctrl_outclk\ : std_logic;
SIGNAL \t1|ALT_INV_TX~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOckIn <= CLOckIn;
ww_RX <= RX;
TX <= ww_TX;
ww_RESet <= RESet;
text1 <= ww_text1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\r1|f1|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \r1|f1|temp~q\);

\t1|f1|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \t1|f1|temp~q\);

\CLOckIn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOckIn~input_o\);

\RESet~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESet~input_o\);
\t1|f1|ALT_INV_temp~clkctrl_outclk\ <= NOT \t1|f1|temp~clkctrl_outclk\;
\r1|f1|ALT_INV_temp~clkctrl_outclk\ <= NOT \r1|f1|temp~clkctrl_outclk\;
\t1|ALT_INV_TX~q\ <= NOT \t1|TX~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y7_N23
\TX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|ALT_INV_TX~q\,
	devoe => ww_devoe,
	o => \TX~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\text1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \text1[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\text1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \text1[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\text1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \text1[5]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\text1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \text1[4]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\text1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \text1[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\text1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \text1[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\text1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \text1[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\text1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \text1[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLOckIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOckIn,
	o => \CLOckIn~input_o\);

-- Location: CLKCTRL_G2
\CLOckIn~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOckIn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOckIn~inputclkctrl_outclk\);

-- Location: FF_X1_Y6_N23
\r1|f1|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(23));

-- Location: LCCOMB_X1_Y6_N8
\r1|f1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~32_combout\ = (\r1|f1|i\(16) & (\r1|f1|Add0~31\ $ (GND))) # (!\r1|f1|i\(16) & (!\r1|f1|Add0~31\ & VCC))
-- \r1|f1|Add0~33\ = CARRY((\r1|f1|i\(16) & !\r1|f1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(16),
	datad => VCC,
	cin => \r1|f1|Add0~31\,
	combout => \r1|f1|Add0~32_combout\,
	cout => \r1|f1|Add0~33\);

-- Location: LCCOMB_X1_Y6_N10
\r1|f1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~34_combout\ = (\r1|f1|i\(17) & (!\r1|f1|Add0~33\)) # (!\r1|f1|i\(17) & ((\r1|f1|Add0~33\) # (GND)))
-- \r1|f1|Add0~35\ = CARRY((!\r1|f1|Add0~33\) # (!\r1|f1|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(17),
	datad => VCC,
	cin => \r1|f1|Add0~33\,
	combout => \r1|f1|Add0~34_combout\,
	cout => \r1|f1|Add0~35\);

-- Location: FF_X1_Y6_N11
\r1|f1|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(17));

-- Location: LCCOMB_X1_Y6_N12
\r1|f1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~36_combout\ = (\r1|f1|i\(18) & (\r1|f1|Add0~35\ $ (GND))) # (!\r1|f1|i\(18) & (!\r1|f1|Add0~35\ & VCC))
-- \r1|f1|Add0~37\ = CARRY((\r1|f1|i\(18) & !\r1|f1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(18),
	datad => VCC,
	cin => \r1|f1|Add0~35\,
	combout => \r1|f1|Add0~36_combout\,
	cout => \r1|f1|Add0~37\);

-- Location: FF_X1_Y6_N13
\r1|f1|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(18));

-- Location: LCCOMB_X1_Y6_N14
\r1|f1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~38_combout\ = (\r1|f1|i\(19) & (!\r1|f1|Add0~37\)) # (!\r1|f1|i\(19) & ((\r1|f1|Add0~37\) # (GND)))
-- \r1|f1|Add0~39\ = CARRY((!\r1|f1|Add0~37\) # (!\r1|f1|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(19),
	datad => VCC,
	cin => \r1|f1|Add0~37\,
	combout => \r1|f1|Add0~38_combout\,
	cout => \r1|f1|Add0~39\);

-- Location: FF_X1_Y6_N15
\r1|f1|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(19));

-- Location: LCCOMB_X1_Y6_N16
\r1|f1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~40_combout\ = (\r1|f1|i\(20) & (\r1|f1|Add0~39\ $ (GND))) # (!\r1|f1|i\(20) & (!\r1|f1|Add0~39\ & VCC))
-- \r1|f1|Add0~41\ = CARRY((\r1|f1|i\(20) & !\r1|f1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(20),
	datad => VCC,
	cin => \r1|f1|Add0~39\,
	combout => \r1|f1|Add0~40_combout\,
	cout => \r1|f1|Add0~41\);

-- Location: FF_X1_Y6_N17
\r1|f1|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(20));

-- Location: LCCOMB_X1_Y6_N18
\r1|f1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~42_combout\ = (\r1|f1|i\(21) & (!\r1|f1|Add0~41\)) # (!\r1|f1|i\(21) & ((\r1|f1|Add0~41\) # (GND)))
-- \r1|f1|Add0~43\ = CARRY((!\r1|f1|Add0~41\) # (!\r1|f1|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(21),
	datad => VCC,
	cin => \r1|f1|Add0~41\,
	combout => \r1|f1|Add0~42_combout\,
	cout => \r1|f1|Add0~43\);

-- Location: FF_X1_Y6_N19
\r1|f1|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(21));

-- Location: LCCOMB_X1_Y6_N20
\r1|f1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~44_combout\ = (\r1|f1|i\(22) & (\r1|f1|Add0~43\ $ (GND))) # (!\r1|f1|i\(22) & (!\r1|f1|Add0~43\ & VCC))
-- \r1|f1|Add0~45\ = CARRY((\r1|f1|i\(22) & !\r1|f1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(22),
	datad => VCC,
	cin => \r1|f1|Add0~43\,
	combout => \r1|f1|Add0~44_combout\,
	cout => \r1|f1|Add0~45\);

-- Location: FF_X1_Y6_N21
\r1|f1|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(22));

-- Location: LCCOMB_X1_Y6_N22
\r1|f1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~46_combout\ = (\r1|f1|i\(23) & (!\r1|f1|Add0~45\)) # (!\r1|f1|i\(23) & ((\r1|f1|Add0~45\) # (GND)))
-- \r1|f1|Add0~47\ = CARRY((!\r1|f1|Add0~45\) # (!\r1|f1|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(23),
	datad => VCC,
	cin => \r1|f1|Add0~45\,
	combout => \r1|f1|Add0~46_combout\,
	cout => \r1|f1|Add0~47\);

-- Location: FF_X1_Y6_N25
\r1|f1|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(24));

-- Location: LCCOMB_X1_Y6_N24
\r1|f1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~48_combout\ = \r1|f1|Add0~47\ $ (!\r1|f1|i\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \r1|f1|i\(24),
	cin => \r1|f1|Add0~47\,
	combout => \r1|f1|Add0~48_combout\);

-- Location: LCCOMB_X2_Y7_N24
\r1|f1|i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|i~0_combout\ = (!\r1|f1|Equal0~7_combout\ & \r1|f1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|Equal0~7_combout\,
	datad => \r1|f1|Add0~4_combout\,
	combout => \r1|f1|i~0_combout\);

-- Location: FF_X2_Y7_N25
\r1|f1|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(2));

-- Location: LCCOMB_X1_Y7_N8
\r1|f1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~0_combout\ = \r1|f1|i\(0) $ (VCC)
-- \r1|f1|Add0~1\ = CARRY(\r1|f1|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(0),
	datad => VCC,
	combout => \r1|f1|Add0~0_combout\,
	cout => \r1|f1|Add0~1\);

-- Location: FF_X1_Y7_N9
\r1|f1|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(0));

-- Location: LCCOMB_X1_Y7_N10
\r1|f1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~2_combout\ = (\r1|f1|i\(1) & (!\r1|f1|Add0~1\)) # (!\r1|f1|i\(1) & ((\r1|f1|Add0~1\) # (GND)))
-- \r1|f1|Add0~3\ = CARRY((!\r1|f1|Add0~1\) # (!\r1|f1|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(1),
	datad => VCC,
	cin => \r1|f1|Add0~1\,
	combout => \r1|f1|Add0~2_combout\,
	cout => \r1|f1|Add0~3\);

-- Location: FF_X1_Y7_N1
\r1|f1|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	asdata => \r1|f1|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(1));

-- Location: LCCOMB_X1_Y7_N12
\r1|f1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~4_combout\ = (\r1|f1|i\(2) & (\r1|f1|Add0~3\ $ (GND))) # (!\r1|f1|i\(2) & (!\r1|f1|Add0~3\ & VCC))
-- \r1|f1|Add0~5\ = CARRY((\r1|f1|i\(2) & !\r1|f1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(2),
	datad => VCC,
	cin => \r1|f1|Add0~3\,
	combout => \r1|f1|Add0~4_combout\,
	cout => \r1|f1|Add0~5\);

-- Location: FF_X1_Y7_N15
\r1|f1|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(3));

-- Location: LCCOMB_X1_Y7_N14
\r1|f1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~6_combout\ = (\r1|f1|i\(3) & (!\r1|f1|Add0~5\)) # (!\r1|f1|i\(3) & ((\r1|f1|Add0~5\) # (GND)))
-- \r1|f1|Add0~7\ = CARRY((!\r1|f1|Add0~5\) # (!\r1|f1|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(3),
	datad => VCC,
	cin => \r1|f1|Add0~5\,
	combout => \r1|f1|Add0~6_combout\,
	cout => \r1|f1|Add0~7\);

-- Location: LCCOMB_X1_Y7_N0
\r1|f1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal0~1_combout\ = (\r1|f1|Add0~4_combout\ & (!\r1|f1|Add0~0_combout\ & (!\r1|f1|Add0~2_combout\ & !\r1|f1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add0~4_combout\,
	datab => \r1|f1|Add0~0_combout\,
	datac => \r1|f1|Add0~2_combout\,
	datad => \r1|f1|Add0~6_combout\,
	combout => \r1|f1|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y7_N6
\r1|f1|i~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|i~3_combout\ = (\r1|f1|Add0~14_combout\ & !\r1|f1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|Add0~14_combout\,
	datad => \r1|f1|Equal0~7_combout\,
	combout => \r1|f1|i~3_combout\);

-- Location: FF_X2_Y7_N7
\r1|f1|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|i~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(7));

-- Location: LCCOMB_X1_Y7_N16
\r1|f1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~8_combout\ = (\r1|f1|i\(4) & (\r1|f1|Add0~7\ $ (GND))) # (!\r1|f1|i\(4) & (!\r1|f1|Add0~7\ & VCC))
-- \r1|f1|Add0~9\ = CARRY((\r1|f1|i\(4) & !\r1|f1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(4),
	datad => VCC,
	cin => \r1|f1|Add0~7\,
	combout => \r1|f1|Add0~8_combout\,
	cout => \r1|f1|Add0~9\);

-- Location: LCCOMB_X2_Y7_N28
\r1|f1|i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|i~1_combout\ = (\r1|f1|Add0~8_combout\ & !\r1|f1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r1|f1|Add0~8_combout\,
	datad => \r1|f1|Equal0~7_combout\,
	combout => \r1|f1|i~1_combout\);

-- Location: FF_X2_Y7_N29
\r1|f1|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(4));

-- Location: LCCOMB_X1_Y7_N18
\r1|f1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~10_combout\ = (\r1|f1|i\(5) & (!\r1|f1|Add0~9\)) # (!\r1|f1|i\(5) & ((\r1|f1|Add0~9\) # (GND)))
-- \r1|f1|Add0~11\ = CARRY((!\r1|f1|Add0~9\) # (!\r1|f1|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(5),
	datad => VCC,
	cin => \r1|f1|Add0~9\,
	combout => \r1|f1|Add0~10_combout\,
	cout => \r1|f1|Add0~11\);

-- Location: FF_X1_Y7_N3
\r1|f1|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	asdata => \r1|f1|Add0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(5));

-- Location: LCCOMB_X1_Y7_N20
\r1|f1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~12_combout\ = (\r1|f1|i\(6) & (\r1|f1|Add0~11\ $ (GND))) # (!\r1|f1|i\(6) & (!\r1|f1|Add0~11\ & VCC))
-- \r1|f1|Add0~13\ = CARRY((\r1|f1|i\(6) & !\r1|f1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(6),
	datad => VCC,
	cin => \r1|f1|Add0~11\,
	combout => \r1|f1|Add0~12_combout\,
	cout => \r1|f1|Add0~13\);

-- Location: LCCOMB_X2_Y7_N20
\r1|f1|i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|i~2_combout\ = (\r1|f1|Add0~12_combout\ & !\r1|f1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|Add0~12_combout\,
	datad => \r1|f1|Equal0~7_combout\,
	combout => \r1|f1|i~2_combout\);

-- Location: FF_X2_Y7_N21
\r1|f1|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(6));

-- Location: LCCOMB_X1_Y7_N22
\r1|f1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~14_combout\ = (\r1|f1|i\(7) & (!\r1|f1|Add0~13\)) # (!\r1|f1|i\(7) & ((\r1|f1|Add0~13\) # (GND)))
-- \r1|f1|Add0~15\ = CARRY((!\r1|f1|Add0~13\) # (!\r1|f1|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(7),
	datad => VCC,
	cin => \r1|f1|Add0~13\,
	combout => \r1|f1|Add0~14_combout\,
	cout => \r1|f1|Add0~15\);

-- Location: LCCOMB_X1_Y7_N2
\r1|f1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal0~2_combout\ = (\r1|f1|Add0~14_combout\ & (\r1|f1|Add0~8_combout\ & (!\r1|f1|Add0~10_combout\ & \r1|f1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add0~14_combout\,
	datab => \r1|f1|Add0~8_combout\,
	datac => \r1|f1|Add0~10_combout\,
	datad => \r1|f1|Add0~12_combout\,
	combout => \r1|f1|Equal0~2_combout\);

-- Location: FF_X1_Y7_N31
\r1|f1|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(11));

-- Location: LCCOMB_X1_Y7_N24
\r1|f1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~16_combout\ = (\r1|f1|i\(8) & (\r1|f1|Add0~15\ $ (GND))) # (!\r1|f1|i\(8) & (!\r1|f1|Add0~15\ & VCC))
-- \r1|f1|Add0~17\ = CARRY((\r1|f1|i\(8) & !\r1|f1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(8),
	datad => VCC,
	cin => \r1|f1|Add0~15\,
	combout => \r1|f1|Add0~16_combout\,
	cout => \r1|f1|Add0~17\);

-- Location: FF_X1_Y7_N25
\r1|f1|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(8));

-- Location: LCCOMB_X1_Y7_N26
\r1|f1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~18_combout\ = (\r1|f1|i\(9) & (!\r1|f1|Add0~17\)) # (!\r1|f1|i\(9) & ((\r1|f1|Add0~17\) # (GND)))
-- \r1|f1|Add0~19\ = CARRY((!\r1|f1|Add0~17\) # (!\r1|f1|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(9),
	datad => VCC,
	cin => \r1|f1|Add0~17\,
	combout => \r1|f1|Add0~18_combout\,
	cout => \r1|f1|Add0~19\);

-- Location: FF_X1_Y7_N5
\r1|f1|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	asdata => \r1|f1|Add0~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(9));

-- Location: LCCOMB_X1_Y7_N28
\r1|f1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~20_combout\ = (\r1|f1|i\(10) & (\r1|f1|Add0~19\ $ (GND))) # (!\r1|f1|i\(10) & (!\r1|f1|Add0~19\ & VCC))
-- \r1|f1|Add0~21\ = CARRY((\r1|f1|i\(10) & !\r1|f1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(10),
	datad => VCC,
	cin => \r1|f1|Add0~19\,
	combout => \r1|f1|Add0~20_combout\,
	cout => \r1|f1|Add0~21\);

-- Location: FF_X1_Y7_N29
\r1|f1|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(10));

-- Location: LCCOMB_X1_Y7_N30
\r1|f1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~22_combout\ = (\r1|f1|i\(11) & (!\r1|f1|Add0~21\)) # (!\r1|f1|i\(11) & ((\r1|f1|Add0~21\) # (GND)))
-- \r1|f1|Add0~23\ = CARRY((!\r1|f1|Add0~21\) # (!\r1|f1|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(11),
	datad => VCC,
	cin => \r1|f1|Add0~21\,
	combout => \r1|f1|Add0~22_combout\,
	cout => \r1|f1|Add0~23\);

-- Location: LCCOMB_X1_Y7_N4
\r1|f1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal0~3_combout\ = (!\r1|f1|Add0~22_combout\ & (!\r1|f1|Add0~16_combout\ & (!\r1|f1|Add0~18_combout\ & !\r1|f1|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add0~22_combout\,
	datab => \r1|f1|Add0~16_combout\,
	datac => \r1|f1|Add0~18_combout\,
	datad => \r1|f1|Add0~20_combout\,
	combout => \r1|f1|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y7_N6
\r1|f1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal0~4_combout\ = (\r1|f1|Equal0~1_combout\ & (\r1|f1|Equal0~2_combout\ & (\r1|f1|Equal0~3_combout\ & !\r1|f1|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Equal0~1_combout\,
	datab => \r1|f1|Equal0~2_combout\,
	datac => \r1|f1|Equal0~3_combout\,
	datad => \r1|f1|Add0~32_combout\,
	combout => \r1|f1|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y6_N30
\r1|f1|i~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|i~4_combout\ = (\r1|f1|Add0~24_combout\ & !\r1|f1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|Add0~24_combout\,
	datad => \r1|f1|Equal0~7_combout\,
	combout => \r1|f1|i~4_combout\);

-- Location: FF_X1_Y6_N31
\r1|f1|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|i~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(12));

-- Location: LCCOMB_X1_Y6_N0
\r1|f1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~24_combout\ = (\r1|f1|i\(12) & (\r1|f1|Add0~23\ $ (GND))) # (!\r1|f1|i\(12) & (!\r1|f1|Add0~23\ & VCC))
-- \r1|f1|Add0~25\ = CARRY((\r1|f1|i\(12) & !\r1|f1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(12),
	datad => VCC,
	cin => \r1|f1|Add0~23\,
	combout => \r1|f1|Add0~24_combout\,
	cout => \r1|f1|Add0~25\);

-- Location: LCCOMB_X1_Y6_N2
\r1|f1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~26_combout\ = (\r1|f1|i\(13) & (!\r1|f1|Add0~25\)) # (!\r1|f1|i\(13) & ((\r1|f1|Add0~25\) # (GND)))
-- \r1|f1|Add0~27\ = CARRY((!\r1|f1|Add0~25\) # (!\r1|f1|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(13),
	datad => VCC,
	cin => \r1|f1|Add0~25\,
	combout => \r1|f1|Add0~26_combout\,
	cout => \r1|f1|Add0~27\);

-- Location: LCCOMB_X1_Y6_N28
\r1|f1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal0~0_combout\ = (\r1|f1|Add0~24_combout\ & (\r1|f1|Add0~26_combout\ & (!\r1|f1|Add0~28_combout\ & !\r1|f1|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add0~24_combout\,
	datab => \r1|f1|Add0~26_combout\,
	datac => \r1|f1|Add0~28_combout\,
	datad => \r1|f1|Add0~30_combout\,
	combout => \r1|f1|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y7_N12
\r1|f1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal0~5_combout\ = (!\r1|f1|Add0~34_combout\ & (!\r1|f1|Add0~36_combout\ & (\r1|f1|Equal0~4_combout\ & \r1|f1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add0~34_combout\,
	datab => \r1|f1|Add0~36_combout\,
	datac => \r1|f1|Equal0~4_combout\,
	datad => \r1|f1|Equal0~0_combout\,
	combout => \r1|f1|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y7_N18
\r1|f1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal0~6_combout\ = (!\r1|f1|Add0~42_combout\ & (!\r1|f1|Add0~38_combout\ & (!\r1|f1|Add0~40_combout\ & \r1|f1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add0~42_combout\,
	datab => \r1|f1|Add0~38_combout\,
	datac => \r1|f1|Add0~40_combout\,
	datad => \r1|f1|Equal0~5_combout\,
	combout => \r1|f1|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y7_N16
\r1|f1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal0~7_combout\ = (!\r1|f1|Add0~46_combout\ & (!\r1|f1|Add0~44_combout\ & (!\r1|f1|Add0~48_combout\ & \r1|f1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add0~46_combout\,
	datab => \r1|f1|Add0~44_combout\,
	datac => \r1|f1|Add0~48_combout\,
	datad => \r1|f1|Equal0~6_combout\,
	combout => \r1|f1|Equal0~7_combout\);

-- Location: LCCOMB_X2_Y7_N30
\r1|f1|i~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|i~5_combout\ = (!\r1|f1|Equal0~7_combout\ & \r1|f1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|Equal0~7_combout\,
	datad => \r1|f1|Add0~26_combout\,
	combout => \r1|f1|i~5_combout\);

-- Location: FF_X2_Y7_N31
\r1|f1|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|i~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(13));

-- Location: LCCOMB_X1_Y6_N4
\r1|f1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~28_combout\ = (\r1|f1|i\(14) & (\r1|f1|Add0~27\ $ (GND))) # (!\r1|f1|i\(14) & (!\r1|f1|Add0~27\ & VCC))
-- \r1|f1|Add0~29\ = CARRY((\r1|f1|i\(14) & !\r1|f1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(14),
	datad => VCC,
	cin => \r1|f1|Add0~27\,
	combout => \r1|f1|Add0~28_combout\,
	cout => \r1|f1|Add0~29\);

-- Location: FF_X1_Y6_N29
\r1|f1|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	asdata => \r1|f1|Add0~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(14));

-- Location: LCCOMB_X1_Y6_N6
\r1|f1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add0~30_combout\ = (\r1|f1|i\(15) & (!\r1|f1|Add0~29\)) # (!\r1|f1|i\(15) & ((\r1|f1|Add0~29\) # (GND)))
-- \r1|f1|Add0~31\ = CARRY((!\r1|f1|Add0~29\) # (!\r1|f1|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(15),
	datad => VCC,
	cin => \r1|f1|Add0~29\,
	combout => \r1|f1|Add0~30_combout\,
	cout => \r1|f1|Add0~31\);

-- Location: LCCOMB_X1_Y6_N26
\r1|f1|i[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|i[15]~feeder_combout\ = \r1|f1|Add0~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r1|f1|Add0~30_combout\,
	combout => \r1|f1|i[15]~feeder_combout\);

-- Location: FF_X1_Y6_N27
\r1|f1|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|i[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(15));

-- Location: FF_X1_Y6_N9
\r1|f1|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|i\(16));

-- Location: LCCOMB_X3_Y7_N8
\t1|f1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~0_combout\ = (\r1|f1|i\(1) & (\r1|f1|i\(0) $ (VCC))) # (!\r1|f1|i\(1) & (\r1|f1|i\(0) & VCC))
-- \t1|f1|Add0~1\ = CARRY((\r1|f1|i\(1) & \r1|f1|i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(1),
	datab => \r1|f1|i\(0),
	datad => VCC,
	combout => \t1|f1|Add0~0_combout\,
	cout => \t1|f1|Add0~1\);

-- Location: LCCOMB_X3_Y7_N10
\t1|f1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~2_combout\ = (\r1|f1|i\(2) & (!\t1|f1|Add0~1\)) # (!\r1|f1|i\(2) & ((\t1|f1|Add0~1\) # (GND)))
-- \t1|f1|Add0~3\ = CARRY((!\t1|f1|Add0~1\) # (!\r1|f1|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(2),
	datad => VCC,
	cin => \t1|f1|Add0~1\,
	combout => \t1|f1|Add0~2_combout\,
	cout => \t1|f1|Add0~3\);

-- Location: LCCOMB_X3_Y7_N12
\t1|f1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~4_combout\ = (\r1|f1|i\(3) & (\t1|f1|Add0~3\ $ (GND))) # (!\r1|f1|i\(3) & (!\t1|f1|Add0~3\ & VCC))
-- \t1|f1|Add0~5\ = CARRY((\r1|f1|i\(3) & !\t1|f1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(3),
	datad => VCC,
	cin => \t1|f1|Add0~3\,
	combout => \t1|f1|Add0~4_combout\,
	cout => \t1|f1|Add0~5\);

-- Location: LCCOMB_X3_Y7_N14
\t1|f1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~6_combout\ = (\r1|f1|i\(4) & (!\t1|f1|Add0~5\)) # (!\r1|f1|i\(4) & ((\t1|f1|Add0~5\) # (GND)))
-- \t1|f1|Add0~7\ = CARRY((!\t1|f1|Add0~5\) # (!\r1|f1|i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(4),
	datad => VCC,
	cin => \t1|f1|Add0~5\,
	combout => \t1|f1|Add0~6_combout\,
	cout => \t1|f1|Add0~7\);

-- Location: LCCOMB_X3_Y7_N16
\t1|f1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~8_combout\ = (\r1|f1|i\(5) & (\t1|f1|Add0~7\ $ (GND))) # (!\r1|f1|i\(5) & (!\t1|f1|Add0~7\ & VCC))
-- \t1|f1|Add0~9\ = CARRY((\r1|f1|i\(5) & !\t1|f1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(5),
	datad => VCC,
	cin => \t1|f1|Add0~7\,
	combout => \t1|f1|Add0~8_combout\,
	cout => \t1|f1|Add0~9\);

-- Location: LCCOMB_X3_Y7_N18
\t1|f1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~10_combout\ = (\r1|f1|i\(6) & (!\t1|f1|Add0~9\)) # (!\r1|f1|i\(6) & ((\t1|f1|Add0~9\) # (GND)))
-- \t1|f1|Add0~11\ = CARRY((!\t1|f1|Add0~9\) # (!\r1|f1|i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(6),
	datad => VCC,
	cin => \t1|f1|Add0~9\,
	combout => \t1|f1|Add0~10_combout\,
	cout => \t1|f1|Add0~11\);

-- Location: LCCOMB_X3_Y7_N20
\t1|f1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~12_combout\ = (\r1|f1|i\(7) & (\t1|f1|Add0~11\ $ (GND))) # (!\r1|f1|i\(7) & (!\t1|f1|Add0~11\ & VCC))
-- \t1|f1|Add0~13\ = CARRY((\r1|f1|i\(7) & !\t1|f1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(7),
	datad => VCC,
	cin => \t1|f1|Add0~11\,
	combout => \t1|f1|Add0~12_combout\,
	cout => \t1|f1|Add0~13\);

-- Location: LCCOMB_X3_Y7_N22
\t1|f1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~14_combout\ = (\r1|f1|i\(8) & (!\t1|f1|Add0~13\)) # (!\r1|f1|i\(8) & ((\t1|f1|Add0~13\) # (GND)))
-- \t1|f1|Add0~15\ = CARRY((!\t1|f1|Add0~13\) # (!\r1|f1|i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(8),
	datad => VCC,
	cin => \t1|f1|Add0~13\,
	combout => \t1|f1|Add0~14_combout\,
	cout => \t1|f1|Add0~15\);

-- Location: LCCOMB_X3_Y7_N24
\t1|f1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~16_combout\ = (\r1|f1|i\(9) & (\t1|f1|Add0~15\ $ (GND))) # (!\r1|f1|i\(9) & (!\t1|f1|Add0~15\ & VCC))
-- \t1|f1|Add0~17\ = CARRY((\r1|f1|i\(9) & !\t1|f1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(9),
	datad => VCC,
	cin => \t1|f1|Add0~15\,
	combout => \t1|f1|Add0~16_combout\,
	cout => \t1|f1|Add0~17\);

-- Location: LCCOMB_X3_Y7_N26
\t1|f1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~18_combout\ = (\r1|f1|i\(10) & (!\t1|f1|Add0~17\)) # (!\r1|f1|i\(10) & ((\t1|f1|Add0~17\) # (GND)))
-- \t1|f1|Add0~19\ = CARRY((!\t1|f1|Add0~17\) # (!\r1|f1|i\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(10),
	datad => VCC,
	cin => \t1|f1|Add0~17\,
	combout => \t1|f1|Add0~18_combout\,
	cout => \t1|f1|Add0~19\);

-- Location: LCCOMB_X3_Y7_N28
\t1|f1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~20_combout\ = (\r1|f1|i\(11) & (\t1|f1|Add0~19\ $ (GND))) # (!\r1|f1|i\(11) & (!\t1|f1|Add0~19\ & VCC))
-- \t1|f1|Add0~21\ = CARRY((\r1|f1|i\(11) & !\t1|f1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(11),
	datad => VCC,
	cin => \t1|f1|Add0~19\,
	combout => \t1|f1|Add0~20_combout\,
	cout => \t1|f1|Add0~21\);

-- Location: LCCOMB_X3_Y7_N30
\t1|f1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~22_combout\ = (\r1|f1|i\(12) & (!\t1|f1|Add0~21\)) # (!\r1|f1|i\(12) & ((\t1|f1|Add0~21\) # (GND)))
-- \t1|f1|Add0~23\ = CARRY((!\t1|f1|Add0~21\) # (!\r1|f1|i\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(12),
	datad => VCC,
	cin => \t1|f1|Add0~21\,
	combout => \t1|f1|Add0~22_combout\,
	cout => \t1|f1|Add0~23\);

-- Location: LCCOMB_X3_Y6_N0
\t1|f1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~24_combout\ = (\r1|f1|i\(13) & (\t1|f1|Add0~23\ $ (GND))) # (!\r1|f1|i\(13) & (!\t1|f1|Add0~23\ & VCC))
-- \t1|f1|Add0~25\ = CARRY((\r1|f1|i\(13) & !\t1|f1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(13),
	datad => VCC,
	cin => \t1|f1|Add0~23\,
	combout => \t1|f1|Add0~24_combout\,
	cout => \t1|f1|Add0~25\);

-- Location: LCCOMB_X3_Y6_N2
\t1|f1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~26_combout\ = (\r1|f1|i\(14) & (!\t1|f1|Add0~25\)) # (!\r1|f1|i\(14) & ((\t1|f1|Add0~25\) # (GND)))
-- \t1|f1|Add0~27\ = CARRY((!\t1|f1|Add0~25\) # (!\r1|f1|i\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(14),
	datad => VCC,
	cin => \t1|f1|Add0~25\,
	combout => \t1|f1|Add0~26_combout\,
	cout => \t1|f1|Add0~27\);

-- Location: LCCOMB_X3_Y6_N4
\t1|f1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~28_combout\ = (\r1|f1|i\(15) & (\t1|f1|Add0~27\ $ (GND))) # (!\r1|f1|i\(15) & (!\t1|f1|Add0~27\ & VCC))
-- \t1|f1|Add0~29\ = CARRY((\r1|f1|i\(15) & !\t1|f1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(15),
	datad => VCC,
	cin => \t1|f1|Add0~27\,
	combout => \t1|f1|Add0~28_combout\,
	cout => \t1|f1|Add0~29\);

-- Location: LCCOMB_X3_Y6_N6
\t1|f1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~30_combout\ = (\r1|f1|i\(16) & (!\t1|f1|Add0~29\)) # (!\r1|f1|i\(16) & ((\t1|f1|Add0~29\) # (GND)))
-- \t1|f1|Add0~31\ = CARRY((!\t1|f1|Add0~29\) # (!\r1|f1|i\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(16),
	datad => VCC,
	cin => \t1|f1|Add0~29\,
	combout => \t1|f1|Add0~30_combout\,
	cout => \t1|f1|Add0~31\);

-- Location: LCCOMB_X3_Y6_N8
\t1|f1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~32_combout\ = (\r1|f1|i\(17) & (\t1|f1|Add0~31\ $ (GND))) # (!\r1|f1|i\(17) & (!\t1|f1|Add0~31\ & VCC))
-- \t1|f1|Add0~33\ = CARRY((\r1|f1|i\(17) & !\t1|f1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(17),
	datad => VCC,
	cin => \t1|f1|Add0~31\,
	combout => \t1|f1|Add0~32_combout\,
	cout => \t1|f1|Add0~33\);

-- Location: LCCOMB_X3_Y6_N10
\t1|f1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~34_combout\ = (\r1|f1|i\(18) & (!\t1|f1|Add0~33\)) # (!\r1|f1|i\(18) & ((\t1|f1|Add0~33\) # (GND)))
-- \t1|f1|Add0~35\ = CARRY((!\t1|f1|Add0~33\) # (!\r1|f1|i\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(18),
	datad => VCC,
	cin => \t1|f1|Add0~33\,
	combout => \t1|f1|Add0~34_combout\,
	cout => \t1|f1|Add0~35\);

-- Location: LCCOMB_X3_Y6_N12
\t1|f1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~36_combout\ = (\r1|f1|i\(19) & (\t1|f1|Add0~35\ $ (GND))) # (!\r1|f1|i\(19) & (!\t1|f1|Add0~35\ & VCC))
-- \t1|f1|Add0~37\ = CARRY((\r1|f1|i\(19) & !\t1|f1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(19),
	datad => VCC,
	cin => \t1|f1|Add0~35\,
	combout => \t1|f1|Add0~36_combout\,
	cout => \t1|f1|Add0~37\);

-- Location: LCCOMB_X3_Y6_N28
\t1|f1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~5_combout\ = (!\t1|f1|Add0~30_combout\ & (!\t1|f1|Add0~32_combout\ & (!\t1|f1|Add0~34_combout\ & !\t1|f1|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~30_combout\,
	datab => \t1|f1|Add0~32_combout\,
	datac => \t1|f1|Add0~34_combout\,
	datad => \t1|f1|Add0~36_combout\,
	combout => \t1|f1|Equal0~5_combout\);

-- Location: LCCOMB_X3_Y7_N0
\t1|f1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~0_combout\ = (!\t1|f1|Add0~4_combout\ & (\r1|f1|i\(0) & (!\t1|f1|Add0~0_combout\ & \t1|f1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~4_combout\,
	datab => \r1|f1|i\(0),
	datac => \t1|f1|Add0~0_combout\,
	datad => \t1|f1|Add0~2_combout\,
	combout => \t1|f1|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y7_N6
\t1|f1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~1_combout\ = (\t1|f1|Add0~12_combout\ & (!\t1|f1|Add0~8_combout\ & (\t1|f1|Add0~6_combout\ & \t1|f1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~12_combout\,
	datab => \t1|f1|Add0~8_combout\,
	datac => \t1|f1|Add0~6_combout\,
	datad => \t1|f1|Add0~10_combout\,
	combout => \t1|f1|Equal0~1_combout\);

-- Location: LCCOMB_X3_Y7_N4
\t1|f1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~2_combout\ = (!\t1|f1|Add0~18_combout\ & (!\t1|f1|Add0~20_combout\ & (!\t1|f1|Add0~14_combout\ & !\t1|f1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~18_combout\,
	datab => \t1|f1|Add0~20_combout\,
	datac => \t1|f1|Add0~14_combout\,
	datad => \t1|f1|Add0~16_combout\,
	combout => \t1|f1|Equal0~2_combout\);

-- Location: LCCOMB_X4_Y7_N28
\t1|f1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~3_combout\ = (\t1|f1|Add0~24_combout\ & (\t1|f1|Add0~22_combout\ & (!\t1|f1|Add0~26_combout\ & !\t1|f1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~24_combout\,
	datab => \t1|f1|Add0~22_combout\,
	datac => \t1|f1|Add0~26_combout\,
	datad => \t1|f1|Add0~28_combout\,
	combout => \t1|f1|Equal0~3_combout\);

-- Location: LCCOMB_X4_Y7_N4
\t1|f1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~4_combout\ = (\t1|f1|Equal0~0_combout\ & (\t1|f1|Equal0~1_combout\ & (\t1|f1|Equal0~2_combout\ & \t1|f1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Equal0~0_combout\,
	datab => \t1|f1|Equal0~1_combout\,
	datac => \t1|f1|Equal0~2_combout\,
	datad => \t1|f1|Equal0~3_combout\,
	combout => \t1|f1|Equal0~4_combout\);

-- Location: LCCOMB_X3_Y6_N14
\t1|f1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~38_combout\ = (\r1|f1|i\(20) & (!\t1|f1|Add0~37\)) # (!\r1|f1|i\(20) & ((\t1|f1|Add0~37\) # (GND)))
-- \t1|f1|Add0~39\ = CARRY((!\t1|f1|Add0~37\) # (!\r1|f1|i\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(20),
	datad => VCC,
	cin => \t1|f1|Add0~37\,
	combout => \t1|f1|Add0~38_combout\,
	cout => \t1|f1|Add0~39\);

-- Location: LCCOMB_X3_Y6_N16
\t1|f1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~40_combout\ = (\r1|f1|i\(21) & (\t1|f1|Add0~39\ $ (GND))) # (!\r1|f1|i\(21) & (!\t1|f1|Add0~39\ & VCC))
-- \t1|f1|Add0~41\ = CARRY((\r1|f1|i\(21) & !\t1|f1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(21),
	datad => VCC,
	cin => \t1|f1|Add0~39\,
	combout => \t1|f1|Add0~40_combout\,
	cout => \t1|f1|Add0~41\);

-- Location: LCCOMB_X3_Y6_N18
\t1|f1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~42_combout\ = (\r1|f1|i\(22) & (!\t1|f1|Add0~41\)) # (!\r1|f1|i\(22) & ((\t1|f1|Add0~41\) # (GND)))
-- \t1|f1|Add0~43\ = CARRY((!\t1|f1|Add0~41\) # (!\r1|f1|i\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(22),
	datad => VCC,
	cin => \t1|f1|Add0~41\,
	combout => \t1|f1|Add0~42_combout\,
	cout => \t1|f1|Add0~43\);

-- Location: LCCOMB_X3_Y6_N20
\t1|f1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~44_combout\ = (\r1|f1|i\(23) & (\t1|f1|Add0~43\ $ (GND))) # (!\r1|f1|i\(23) & (!\t1|f1|Add0~43\ & VCC))
-- \t1|f1|Add0~45\ = CARRY((\r1|f1|i\(23) & !\t1|f1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|i\(23),
	datad => VCC,
	cin => \t1|f1|Add0~43\,
	combout => \t1|f1|Add0~44_combout\,
	cout => \t1|f1|Add0~45\);

-- Location: LCCOMB_X3_Y6_N22
\t1|f1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~46_combout\ = \r1|f1|i\(24) $ (\t1|f1|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|i\(24),
	cin => \t1|f1|Add0~45\,
	combout => \t1|f1|Add0~46_combout\);

-- Location: LCCOMB_X3_Y6_N30
\t1|f1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~6_combout\ = (!\t1|f1|Add0~38_combout\ & !\t1|f1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|f1|Add0~38_combout\,
	datad => \t1|f1|Add0~40_combout\,
	combout => \t1|f1|Equal0~6_combout\);

-- Location: LCCOMB_X3_Y6_N24
\t1|f1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~7_combout\ = (!\t1|f1|Add0~46_combout\ & (!\t1|f1|Add0~44_combout\ & (\t1|f1|Equal0~6_combout\ & !\t1|f1|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~46_combout\,
	datab => \t1|f1|Add0~44_combout\,
	datac => \t1|f1|Equal0~6_combout\,
	datad => \t1|f1|Add0~42_combout\,
	combout => \t1|f1|Equal0~7_combout\);

-- Location: LCCOMB_X4_Y7_N30
\t1|f1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|temp~0_combout\ = \t1|f1|temp~q\ $ (((\t1|f1|Equal0~5_combout\ & (\t1|f1|Equal0~4_combout\ & \t1|f1|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Equal0~5_combout\,
	datab => \t1|f1|temp~q\,
	datac => \t1|f1|Equal0~4_combout\,
	datad => \t1|f1|Equal0~7_combout\,
	combout => \t1|f1|temp~0_combout\);

-- Location: FF_X4_Y7_N13
\t1|f1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	asdata => \t1|f1|temp~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|temp~q\);

-- Location: CLKCTRL_G4
\t1|f1|temp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \t1|f1|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \t1|f1|temp~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N8
\RESet~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESet,
	o => \RESet~input_o\);

-- Location: LCCOMB_X13_Y14_N0
\t1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~0_combout\ = \t1|n\(0) $ (GND)
-- \t1|Add0~1\ = CARRY(!\t1|n\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(0),
	datad => VCC,
	combout => \t1|Add0~0_combout\,
	cout => \t1|Add0~1\);

-- Location: LCCOMB_X14_Y13_N6
\t1|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector36~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~0_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXE~q\,
	datab => \t1|Add0~0_combout\,
	datad => \t1|TXState.TXING~q\,
	combout => \t1|Selector36~0_combout\);

-- Location: CLKCTRL_G7
\RESet~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESet~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESet~inputclkctrl_outclk\);

-- Location: FF_X13_Y14_N17
\t1|n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector36~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(0));

-- Location: LCCOMB_X13_Y14_N2
\t1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~2_combout\ = (\t1|n\(1) & ((\t1|Add0~1\) # (GND))) # (!\t1|n\(1) & (!\t1|Add0~1\))
-- \t1|Add0~3\ = CARRY((\t1|n\(1)) # (!\t1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(1),
	datad => VCC,
	cin => \t1|Add0~1\,
	combout => \t1|Add0~2_combout\,
	cout => \t1|Add0~3\);

-- Location: LCCOMB_X12_Y14_N6
\t1|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector35~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~2_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datac => \t1|Add0~2_combout\,
	combout => \t1|Selector35~0_combout\);

-- Location: FF_X13_Y14_N23
\t1|n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector35~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(1));

-- Location: LCCOMB_X13_Y14_N4
\t1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~4_combout\ = (\t1|n\(2) & (!\t1|Add0~3\ & VCC)) # (!\t1|n\(2) & (\t1|Add0~3\ $ (GND)))
-- \t1|Add0~5\ = CARRY((!\t1|n\(2) & !\t1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(2),
	datad => VCC,
	cin => \t1|Add0~3\,
	combout => \t1|Add0~4_combout\,
	cout => \t1|Add0~5\);

-- Location: LCCOMB_X12_Y14_N16
\t1|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector34~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~4_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datac => \t1|TXState.TXE~q\,
	datad => \t1|Add0~4_combout\,
	combout => \t1|Selector34~0_combout\);

-- Location: FF_X13_Y14_N13
\t1|n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector34~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(2));

-- Location: LCCOMB_X13_Y14_N6
\t1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~6_combout\ = (\t1|n\(3) & ((\t1|Add0~5\) # (GND))) # (!\t1|n\(3) & (!\t1|Add0~5\))
-- \t1|Add0~7\ = CARRY((\t1|n\(3)) # (!\t1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(3),
	datad => VCC,
	cin => \t1|Add0~5\,
	combout => \t1|Add0~6_combout\,
	cout => \t1|Add0~7\);

-- Location: LCCOMB_X12_Y14_N26
\t1|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector33~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~6_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.TXING~q\,
	datad => \t1|Add0~6_combout\,
	combout => \t1|Selector33~0_combout\);

-- Location: FF_X13_Y14_N9
\t1|n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector33~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(3));

-- Location: LCCOMB_X12_Y14_N10
\t1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~8_combout\ = (!\t1|n\(0) & (!\t1|n\(1) & (!\t1|n\(2) & !\t1|n\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(0),
	datab => \t1|n\(1),
	datac => \t1|n\(2),
	datad => \t1|n\(3),
	combout => \t1|Equal0~8_combout\);

-- Location: LCCOMB_X13_Y14_N8
\t1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~8_combout\ = (\t1|n\(4) & (!\t1|Add0~7\ & VCC)) # (!\t1|n\(4) & (\t1|Add0~7\ $ (GND)))
-- \t1|Add0~9\ = CARRY((!\t1|n\(4) & !\t1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(4),
	datad => VCC,
	cin => \t1|Add0~7\,
	combout => \t1|Add0~8_combout\,
	cout => \t1|Add0~9\);

-- Location: LCCOMB_X14_Y14_N4
\t1|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector32~0_combout\ = (\t1|TXState.TXING~q\ & (!\t1|Add0~8_combout\)) # (!\t1|TXState.TXING~q\ & ((!\t1|TXState.TXE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~8_combout\,
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.TXING~q\,
	combout => \t1|Selector32~0_combout\);

-- Location: FF_X13_Y14_N7
\t1|n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector32~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(4));

-- Location: LCCOMB_X13_Y14_N10
\t1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~10_combout\ = (\t1|n\(5) & ((\t1|Add0~9\) # (GND))) # (!\t1|n\(5) & (!\t1|Add0~9\))
-- \t1|Add0~11\ = CARRY((\t1|n\(5)) # (!\t1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(5),
	datad => VCC,
	cin => \t1|Add0~9\,
	combout => \t1|Add0~10_combout\,
	cout => \t1|Add0~11\);

-- Location: LCCOMB_X12_Y14_N22
\t1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector31~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~10_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datac => \t1|Add0~10_combout\,
	combout => \t1|Selector31~0_combout\);

-- Location: FF_X13_Y14_N11
\t1|n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector31~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(5));

-- Location: LCCOMB_X13_Y14_N12
\t1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~12_combout\ = (\t1|n\(6) & (!\t1|Add0~11\ & VCC)) # (!\t1|n\(6) & (\t1|Add0~11\ $ (GND)))
-- \t1|Add0~13\ = CARRY((!\t1|n\(6) & !\t1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(6),
	datad => VCC,
	cin => \t1|Add0~11\,
	combout => \t1|Add0~12_combout\,
	cout => \t1|Add0~13\);

-- Location: LCCOMB_X12_Y14_N4
\t1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector30~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~12_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datac => \t1|TXState.TXE~q\,
	datad => \t1|Add0~12_combout\,
	combout => \t1|Selector30~0_combout\);

-- Location: FF_X13_Y14_N21
\t1|n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector30~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(6));

-- Location: LCCOMB_X13_Y14_N14
\t1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~14_combout\ = (\t1|n\(7) & ((\t1|Add0~13\) # (GND))) # (!\t1|n\(7) & (!\t1|Add0~13\))
-- \t1|Add0~15\ = CARRY((\t1|n\(7)) # (!\t1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(7),
	datad => VCC,
	cin => \t1|Add0~13\,
	combout => \t1|Add0~14_combout\,
	cout => \t1|Add0~15\);

-- Location: LCCOMB_X14_Y14_N26
\t1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector29~0_combout\ = (\t1|TXState.TXING~q\ & (!\t1|Add0~14_combout\)) # (!\t1|TXState.TXING~q\ & ((!\t1|TXState.TXE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~14_combout\,
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.TXING~q\,
	combout => \t1|Selector29~0_combout\);

-- Location: FF_X13_Y14_N25
\t1|n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector29~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(7));

-- Location: LCCOMB_X13_Y14_N16
\t1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~16_combout\ = (\t1|n\(8) & (!\t1|Add0~15\ & VCC)) # (!\t1|n\(8) & (\t1|Add0~15\ $ (GND)))
-- \t1|Add0~17\ = CARRY((!\t1|n\(8) & !\t1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(8),
	datad => VCC,
	cin => \t1|Add0~15\,
	combout => \t1|Add0~16_combout\,
	cout => \t1|Add0~17\);

-- Location: LCCOMB_X14_Y14_N10
\t1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector28~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~16_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datac => \t1|Add0~16_combout\,
	combout => \t1|Selector28~0_combout\);

-- Location: FF_X13_Y14_N27
\t1|n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector28~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(8));

-- Location: LCCOMB_X13_Y14_N18
\t1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~18_combout\ = (\t1|n\(9) & ((\t1|Add0~17\) # (GND))) # (!\t1|n\(9) & (!\t1|Add0~17\))
-- \t1|Add0~19\ = CARRY((\t1|n\(9)) # (!\t1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(9),
	datad => VCC,
	cin => \t1|Add0~17\,
	combout => \t1|Add0~18_combout\,
	cout => \t1|Add0~19\);

-- Location: LCCOMB_X14_Y14_N20
\t1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector27~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~18_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.TXING~q\,
	datad => \t1|Add0~18_combout\,
	combout => \t1|Selector27~0_combout\);

-- Location: FF_X13_Y14_N3
\t1|n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector27~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(9));

-- Location: LCCOMB_X13_Y14_N20
\t1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~20_combout\ = (\t1|n\(10) & (!\t1|Add0~19\ & VCC)) # (!\t1|n\(10) & (\t1|Add0~19\ $ (GND)))
-- \t1|Add0~21\ = CARRY((!\t1|n\(10) & !\t1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(10),
	datad => VCC,
	cin => \t1|Add0~19\,
	combout => \t1|Add0~20_combout\,
	cout => \t1|Add0~21\);

-- Location: LCCOMB_X14_Y14_N14
\t1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector26~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~20_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.TXING~q\,
	datad => \t1|Add0~20_combout\,
	combout => \t1|Selector26~0_combout\);

-- Location: FF_X13_Y14_N19
\t1|n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector26~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(10));

-- Location: LCCOMB_X13_Y14_N22
\t1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~22_combout\ = (\t1|n\(11) & ((\t1|Add0~21\) # (GND))) # (!\t1|n\(11) & (!\t1|Add0~21\))
-- \t1|Add0~23\ = CARRY((\t1|n\(11)) # (!\t1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(11),
	datad => VCC,
	cin => \t1|Add0~21\,
	combout => \t1|Add0~22_combout\,
	cout => \t1|Add0~23\);

-- Location: LCCOMB_X12_Y14_N0
\t1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector25~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~22_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datad => \t1|Add0~22_combout\,
	combout => \t1|Selector25~0_combout\);

-- Location: FF_X13_Y14_N5
\t1|n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector25~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(11));

-- Location: LCCOMB_X14_Y14_N2
\t1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~6_combout\ = (!\t1|n\(8) & (!\t1|n\(9) & (!\t1|n\(11) & !\t1|n\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(8),
	datab => \t1|n\(9),
	datac => \t1|n\(11),
	datad => \t1|n\(10),
	combout => \t1|Equal0~6_combout\);

-- Location: LCCOMB_X13_Y14_N24
\t1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~24_combout\ = (\t1|n\(12) & (!\t1|Add0~23\ & VCC)) # (!\t1|n\(12) & (\t1|Add0~23\ $ (GND)))
-- \t1|Add0~25\ = CARRY((!\t1|n\(12) & !\t1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(12),
	datad => VCC,
	cin => \t1|Add0~23\,
	combout => \t1|Add0~24_combout\,
	cout => \t1|Add0~25\);

-- Location: LCCOMB_X14_Y14_N0
\t1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector24~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~24_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.TXING~q\,
	datad => \t1|Add0~24_combout\,
	combout => \t1|Selector24~0_combout\);

-- Location: FF_X13_Y14_N31
\t1|n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector24~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(12));

-- Location: LCCOMB_X13_Y14_N26
\t1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~26_combout\ = (\t1|n\(13) & ((\t1|Add0~25\) # (GND))) # (!\t1|n\(13) & (!\t1|Add0~25\))
-- \t1|Add0~27\ = CARRY((\t1|n\(13)) # (!\t1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(13),
	datad => VCC,
	cin => \t1|Add0~25\,
	combout => \t1|Add0~26_combout\,
	cout => \t1|Add0~27\);

-- Location: LCCOMB_X14_Y14_N18
\t1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector23~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~26_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datac => \t1|Add0~26_combout\,
	combout => \t1|Selector23~0_combout\);

-- Location: FF_X13_Y14_N15
\t1|n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector23~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(13));

-- Location: LCCOMB_X13_Y14_N28
\t1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~28_combout\ = (\t1|n\(14) & (!\t1|Add0~27\ & VCC)) # (!\t1|n\(14) & (\t1|Add0~27\ $ (GND)))
-- \t1|Add0~29\ = CARRY((!\t1|n\(14) & !\t1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(14),
	datad => VCC,
	cin => \t1|Add0~27\,
	combout => \t1|Add0~28_combout\,
	cout => \t1|Add0~29\);

-- Location: LCCOMB_X12_Y14_N18
\t1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector22~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~28_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datac => \t1|Add0~28_combout\,
	combout => \t1|Selector22~0_combout\);

-- Location: FF_X13_Y14_N29
\t1|n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector22~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(14));

-- Location: LCCOMB_X13_Y14_N30
\t1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~30_combout\ = (\t1|n\(15) & ((\t1|Add0~29\) # (GND))) # (!\t1|n\(15) & (!\t1|Add0~29\))
-- \t1|Add0~31\ = CARRY((\t1|n\(15)) # (!\t1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(15),
	datad => VCC,
	cin => \t1|Add0~29\,
	combout => \t1|Add0~30_combout\,
	cout => \t1|Add0~31\);

-- Location: LCCOMB_X14_Y14_N12
\t1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector21~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~30_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.TXING~q\,
	datad => \t1|Add0~30_combout\,
	combout => \t1|Selector21~0_combout\);

-- Location: FF_X13_Y14_N1
\t1|n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector21~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(15));

-- Location: LCCOMB_X12_Y14_N14
\t1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~5_combout\ = (!\t1|n\(12) & (!\t1|n\(13) & (!\t1|n\(15) & !\t1|n\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(12),
	datab => \t1|n\(13),
	datac => \t1|n\(15),
	datad => \t1|n\(14),
	combout => \t1|Equal0~5_combout\);

-- Location: LCCOMB_X12_Y14_N12
\t1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~7_combout\ = (!\t1|n\(4) & (!\t1|n\(5) & (!\t1|n\(6) & !\t1|n\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(4),
	datab => \t1|n\(5),
	datac => \t1|n\(6),
	datad => \t1|n\(7),
	combout => \t1|Equal0~7_combout\);

-- Location: LCCOMB_X12_Y14_N20
\t1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~9_combout\ = (\t1|Equal0~8_combout\ & (\t1|Equal0~6_combout\ & (\t1|Equal0~5_combout\ & \t1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \t1|Equal0~6_combout\,
	datac => \t1|Equal0~5_combout\,
	datad => \t1|Equal0~7_combout\,
	combout => \t1|Equal0~9_combout\);

-- Location: LCCOMB_X12_Y14_N30
\t1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector2~0_combout\ = (\t1|TXState.TXE~q\) # (\t1|TXState.TXR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|TXState.TXE~q\,
	datad => \t1|TXState.TXR~q\,
	combout => \t1|Selector2~0_combout\);

-- Location: LCCOMB_X13_Y13_N0
\t1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~32_combout\ = (\t1|n\(16) & (!\t1|Add0~31\ & VCC)) # (!\t1|n\(16) & (\t1|Add0~31\ $ (GND)))
-- \t1|Add0~33\ = CARRY((!\t1|n\(16) & !\t1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(16),
	datad => VCC,
	cin => \t1|Add0~31\,
	combout => \t1|Add0~32_combout\,
	cout => \t1|Add0~33\);

-- Location: LCCOMB_X12_Y13_N4
\t1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector20~0_combout\ = (\t1|TXState.TXING~q\ & (!\t1|Add0~32_combout\)) # (!\t1|TXState.TXING~q\ & ((!\t1|TXState.TXE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datac => \t1|Add0~32_combout\,
	datad => \t1|TXState.TXE~q\,
	combout => \t1|Selector20~0_combout\);

-- Location: FF_X13_Y13_N5
\t1|n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector20~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(16));

-- Location: LCCOMB_X13_Y13_N2
\t1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~34_combout\ = (\t1|n\(17) & ((\t1|Add0~33\) # (GND))) # (!\t1|n\(17) & (!\t1|Add0~33\))
-- \t1|Add0~35\ = CARRY((\t1|n\(17)) # (!\t1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(17),
	datad => VCC,
	cin => \t1|Add0~33\,
	combout => \t1|Add0~34_combout\,
	cout => \t1|Add0~35\);

-- Location: LCCOMB_X12_Y13_N8
\t1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector19~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~34_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datad => \t1|Add0~34_combout\,
	combout => \t1|Selector19~0_combout\);

-- Location: FF_X12_Y13_N9
\t1|n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector19~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(17));

-- Location: LCCOMB_X13_Y13_N4
\t1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~36_combout\ = (\t1|n\(18) & (!\t1|Add0~35\ & VCC)) # (!\t1|n\(18) & (\t1|Add0~35\ $ (GND)))
-- \t1|Add0~37\ = CARRY((!\t1|n\(18) & !\t1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(18),
	datad => VCC,
	cin => \t1|Add0~35\,
	combout => \t1|Add0~36_combout\,
	cout => \t1|Add0~37\);

-- Location: LCCOMB_X12_Y13_N14
\t1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector18~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~36_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|TXState.TXE~q\,
	datac => \t1|Add0~36_combout\,
	datad => \t1|TXState.TXING~q\,
	combout => \t1|Selector18~0_combout\);

-- Location: FF_X12_Y13_N15
\t1|n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector18~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(18));

-- Location: LCCOMB_X13_Y13_N6
\t1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~38_combout\ = (\t1|n\(19) & ((\t1|Add0~37\) # (GND))) # (!\t1|n\(19) & (!\t1|Add0~37\))
-- \t1|Add0~39\ = CARRY((\t1|n\(19)) # (!\t1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(19),
	datad => VCC,
	cin => \t1|Add0~37\,
	combout => \t1|Add0~38_combout\,
	cout => \t1|Add0~39\);

-- Location: LCCOMB_X12_Y13_N12
\t1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector17~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~38_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datad => \t1|Add0~38_combout\,
	combout => \t1|Selector17~0_combout\);

-- Location: FF_X12_Y13_N13
\t1|n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector17~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(19));

-- Location: LCCOMB_X13_Y13_N8
\t1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~40_combout\ = (\t1|n\(20) & (!\t1|Add0~39\ & VCC)) # (!\t1|n\(20) & (\t1|Add0~39\ $ (GND)))
-- \t1|Add0~41\ = CARRY((!\t1|n\(20) & !\t1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(20),
	datad => VCC,
	cin => \t1|Add0~39\,
	combout => \t1|Add0~40_combout\,
	cout => \t1|Add0~41\);

-- Location: LCCOMB_X14_Y14_N30
\t1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector16~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~40_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.TXING~q\,
	datad => \t1|Add0~40_combout\,
	combout => \t1|Selector16~0_combout\);

-- Location: FF_X14_Y14_N31
\t1|n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector16~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(20));

-- Location: LCCOMB_X13_Y13_N10
\t1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~42_combout\ = (\t1|n\(21) & ((\t1|Add0~41\) # (GND))) # (!\t1|n\(21) & (!\t1|Add0~41\))
-- \t1|Add0~43\ = CARRY((\t1|n\(21)) # (!\t1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(21),
	datad => VCC,
	cin => \t1|Add0~41\,
	combout => \t1|Add0~42_combout\,
	cout => \t1|Add0~43\);

-- Location: LCCOMB_X14_Y14_N16
\t1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector15~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~42_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.TXING~q\,
	datad => \t1|Add0~42_combout\,
	combout => \t1|Selector15~0_combout\);

-- Location: FF_X14_Y14_N17
\t1|n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector15~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(21));

-- Location: LCCOMB_X13_Y13_N12
\t1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~44_combout\ = (\t1|n\(22) & (!\t1|Add0~43\ & VCC)) # (!\t1|n\(22) & (\t1|Add0~43\ $ (GND)))
-- \t1|Add0~45\ = CARRY((!\t1|n\(22) & !\t1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(22),
	datad => VCC,
	cin => \t1|Add0~43\,
	combout => \t1|Add0~44_combout\,
	cout => \t1|Add0~45\);

-- Location: LCCOMB_X14_Y14_N22
\t1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector14~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~44_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datac => \t1|Add0~44_combout\,
	combout => \t1|Selector14~0_combout\);

-- Location: FF_X14_Y14_N23
\t1|n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector14~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(22));

-- Location: LCCOMB_X13_Y13_N14
\t1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~46_combout\ = (\t1|n\(23) & ((\t1|Add0~45\) # (GND))) # (!\t1|n\(23) & (!\t1|Add0~45\))
-- \t1|Add0~47\ = CARRY((\t1|n\(23)) # (!\t1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(23),
	datad => VCC,
	cin => \t1|Add0~45\,
	combout => \t1|Add0~46_combout\,
	cout => \t1|Add0~47\);

-- Location: LCCOMB_X14_Y14_N28
\t1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector13~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~46_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.TXING~q\,
	datad => \t1|Add0~46_combout\,
	combout => \t1|Selector13~0_combout\);

-- Location: FF_X14_Y14_N29
\t1|n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector13~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(23));

-- Location: LCCOMB_X13_Y13_N16
\t1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~48_combout\ = (\t1|n\(24) & (!\t1|Add0~47\ & VCC)) # (!\t1|n\(24) & (\t1|Add0~47\ $ (GND)))
-- \t1|Add0~49\ = CARRY((!\t1|n\(24) & !\t1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(24),
	datad => VCC,
	cin => \t1|Add0~47\,
	combout => \t1|Add0~48_combout\,
	cout => \t1|Add0~49\);

-- Location: LCCOMB_X12_Y13_N16
\t1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector12~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~48_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datad => \t1|Add0~48_combout\,
	combout => \t1|Selector12~0_combout\);

-- Location: FF_X12_Y13_N17
\t1|n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector12~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(24));

-- Location: LCCOMB_X13_Y13_N18
\t1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~50_combout\ = (\t1|n\(25) & ((\t1|Add0~49\) # (GND))) # (!\t1|n\(25) & (!\t1|Add0~49\))
-- \t1|Add0~51\ = CARRY((\t1|n\(25)) # (!\t1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(25),
	datad => VCC,
	cin => \t1|Add0~49\,
	combout => \t1|Add0~50_combout\,
	cout => \t1|Add0~51\);

-- Location: LCCOMB_X12_Y13_N10
\t1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector11~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~50_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datad => \t1|Add0~50_combout\,
	combout => \t1|Selector11~0_combout\);

-- Location: FF_X12_Y13_N11
\t1|n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector11~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(25));

-- Location: LCCOMB_X13_Y13_N20
\t1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~52_combout\ = (\t1|n\(26) & (!\t1|Add0~51\ & VCC)) # (!\t1|n\(26) & (\t1|Add0~51\ $ (GND)))
-- \t1|Add0~53\ = CARRY((!\t1|n\(26) & !\t1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(26),
	datad => VCC,
	cin => \t1|Add0~51\,
	combout => \t1|Add0~52_combout\,
	cout => \t1|Add0~53\);

-- Location: LCCOMB_X12_Y13_N28
\t1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector10~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~52_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datad => \t1|Add0~52_combout\,
	combout => \t1|Selector10~0_combout\);

-- Location: FF_X12_Y13_N29
\t1|n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector10~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(26));

-- Location: LCCOMB_X13_Y13_N22
\t1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~54_combout\ = (\t1|n\(27) & ((\t1|Add0~53\) # (GND))) # (!\t1|n\(27) & (!\t1|Add0~53\))
-- \t1|Add0~55\ = CARRY((\t1|n\(27)) # (!\t1|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(27),
	datad => VCC,
	cin => \t1|Add0~53\,
	combout => \t1|Add0~54_combout\,
	cout => \t1|Add0~55\);

-- Location: LCCOMB_X12_Y13_N26
\t1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector9~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~54_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datad => \t1|Add0~54_combout\,
	combout => \t1|Selector9~0_combout\);

-- Location: FF_X12_Y13_N27
\t1|n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector9~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(27));

-- Location: LCCOMB_X12_Y13_N2
\t1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~1_combout\ = (!\t1|n\(25) & (!\t1|n\(24) & (!\t1|n\(27) & !\t1|n\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(25),
	datab => \t1|n\(24),
	datac => \t1|n\(27),
	datad => \t1|n\(26),
	combout => \t1|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y13_N24
\t1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~56_combout\ = (\t1|n\(28) & (!\t1|Add0~55\ & VCC)) # (!\t1|n\(28) & (\t1|Add0~55\ $ (GND)))
-- \t1|Add0~57\ = CARRY((!\t1|n\(28) & !\t1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(28),
	datad => VCC,
	cin => \t1|Add0~55\,
	combout => \t1|Add0~56_combout\,
	cout => \t1|Add0~57\);

-- Location: LCCOMB_X12_Y13_N18
\t1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector8~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~56_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datad => \t1|Add0~56_combout\,
	combout => \t1|Selector8~0_combout\);

-- Location: FF_X12_Y13_N19
\t1|n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector8~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(28));

-- Location: LCCOMB_X13_Y13_N26
\t1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~58_combout\ = (\t1|n\(29) & ((\t1|Add0~57\) # (GND))) # (!\t1|n\(29) & (!\t1|Add0~57\))
-- \t1|Add0~59\ = CARRY((\t1|n\(29)) # (!\t1|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(29),
	datad => VCC,
	cin => \t1|Add0~57\,
	combout => \t1|Add0~58_combout\,
	cout => \t1|Add0~59\);

-- Location: LCCOMB_X12_Y13_N20
\t1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector7~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~58_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datad => \t1|Add0~58_combout\,
	combout => \t1|Selector7~0_combout\);

-- Location: FF_X12_Y13_N21
\t1|n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector7~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(29));

-- Location: LCCOMB_X13_Y13_N28
\t1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~60_combout\ = (\t1|n\(30) & (!\t1|Add0~59\ & VCC)) # (!\t1|n\(30) & (\t1|Add0~59\ $ (GND)))
-- \t1|Add0~61\ = CARRY((!\t1|n\(30) & !\t1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(30),
	datad => VCC,
	cin => \t1|Add0~59\,
	combout => \t1|Add0~60_combout\,
	cout => \t1|Add0~61\);

-- Location: LCCOMB_X12_Y13_N22
\t1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector6~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~60_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datad => \t1|Add0~60_combout\,
	combout => \t1|Selector6~0_combout\);

-- Location: FF_X12_Y13_N23
\t1|n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector6~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(30));

-- Location: LCCOMB_X12_Y13_N0
\t1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~0_combout\ = (!\t1|n\(28) & (!\t1|n\(29) & (!\t1|n\(30) & !\t1|n\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(28),
	datab => \t1|n\(29),
	datac => \t1|n\(30),
	datad => \t1|n\(31),
	combout => \t1|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y14_N24
\t1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~2_combout\ = (!\t1|n\(20) & (!\t1|n\(23) & (!\t1|n\(22) & !\t1|n\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(20),
	datab => \t1|n\(23),
	datac => \t1|n\(22),
	datad => \t1|n\(21),
	combout => \t1|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y13_N6
\t1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~3_combout\ = (!\t1|n\(19) & (!\t1|n\(17) & (!\t1|n\(18) & !\t1|n\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(19),
	datab => \t1|n\(17),
	datac => \t1|n\(18),
	datad => \t1|n\(16),
	combout => \t1|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y14_N28
\t1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~4_combout\ = (\t1|Equal0~1_combout\ & (\t1|Equal0~0_combout\ & (\t1|Equal0~2_combout\ & \t1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~1_combout\,
	datab => \t1|Equal0~0_combout\,
	datac => \t1|Equal0~2_combout\,
	datad => \t1|Equal0~3_combout\,
	combout => \t1|Equal0~4_combout\);

-- Location: LCCOMB_X12_Y14_N2
\t1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector2~1_combout\ = (\t1|Selector2~0_combout\) # ((!\t1|TXState.TXING~q\ & (\t1|Equal0~9_combout\ & \t1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|Equal0~9_combout\,
	datac => \t1|Selector2~0_combout\,
	datad => \t1|Equal0~4_combout\,
	combout => \t1|Selector2~1_combout\);

-- Location: LCCOMB_X14_Y14_N6
\t1|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~2_combout\ = (!\t1|Add0~14_combout\ & (!\t1|Add0~20_combout\ & (!\t1|Add0~16_combout\ & !\t1|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~14_combout\,
	datab => \t1|Add0~20_combout\,
	datac => \t1|Add0~16_combout\,
	datad => \t1|Add0~18_combout\,
	combout => \t1|Selector3~2_combout\);

-- Location: LCCOMB_X14_Y14_N8
\t1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~0_combout\ = (\t1|TXState.TXING~q\ & (\t1|Add0~6_combout\ & (!\t1|Add0~0_combout\ & !\t1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|Add0~6_combout\,
	datac => \t1|Add0~0_combout\,
	datad => \t1|Add0~2_combout\,
	combout => \t1|Selector3~0_combout\);

-- Location: LCCOMB_X14_Y13_N14
\t1|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~3_combout\ = (!\t1|Add0~26_combout\ & (!\t1|Add0~22_combout\ & (!\t1|Add0~24_combout\ & !\t1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~26_combout\,
	datab => \t1|Add0~22_combout\,
	datac => \t1|Add0~24_combout\,
	datad => \t1|Add0~28_combout\,
	combout => \t1|Selector3~3_combout\);

-- Location: LCCOMB_X12_Y14_N8
\t1|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~1_combout\ = (!\t1|Add0~8_combout\ & (!\t1|Add0~10_combout\ & (!\t1|Add0~12_combout\ & !\t1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~8_combout\,
	datab => \t1|Add0~10_combout\,
	datac => \t1|Add0~12_combout\,
	datad => \t1|Add0~4_combout\,
	combout => \t1|Selector3~1_combout\);

-- Location: LCCOMB_X14_Y13_N4
\t1|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~4_combout\ = (\t1|Selector3~2_combout\ & (\t1|Selector3~0_combout\ & (\t1|Selector3~3_combout\ & \t1|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Selector3~2_combout\,
	datab => \t1|Selector3~0_combout\,
	datac => \t1|Selector3~3_combout\,
	datad => \t1|Selector3~1_combout\,
	combout => \t1|Selector3~4_combout\);

-- Location: LCCOMB_X14_Y13_N10
\t1|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~5_combout\ = (!\t1|Add0~32_combout\ & (!\t1|Add0~36_combout\ & (!\t1|Add0~30_combout\ & !\t1|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~32_combout\,
	datab => \t1|Add0~36_combout\,
	datac => \t1|Add0~30_combout\,
	datad => \t1|Add0~34_combout\,
	combout => \t1|Selector3~5_combout\);

-- Location: LCCOMB_X14_Y13_N28
\t1|Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~6_combout\ = (!\t1|Add0~42_combout\ & (!\t1|Add0~38_combout\ & (!\t1|Add0~40_combout\ & \t1|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~42_combout\,
	datab => \t1|Add0~38_combout\,
	datac => \t1|Add0~40_combout\,
	datad => \t1|Selector3~5_combout\,
	combout => \t1|Selector3~6_combout\);

-- Location: LCCOMB_X14_Y13_N2
\t1|Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~7_combout\ = (!\t1|Add0~46_combout\ & (!\t1|Add0~44_combout\ & (!\t1|Add0~48_combout\ & \t1|Selector3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~46_combout\,
	datab => \t1|Add0~44_combout\,
	datac => \t1|Add0~48_combout\,
	datad => \t1|Selector3~6_combout\,
	combout => \t1|Selector3~7_combout\);

-- Location: LCCOMB_X14_Y13_N24
\t1|Selector3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~8_combout\ = (!\t1|Add0~50_combout\ & (!\t1|Add0~54_combout\ & (!\t1|Add0~52_combout\ & \t1|Selector3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~50_combout\,
	datab => \t1|Add0~54_combout\,
	datac => \t1|Add0~52_combout\,
	datad => \t1|Selector3~7_combout\,
	combout => \t1|Selector3~8_combout\);

-- Location: LCCOMB_X14_Y13_N18
\t1|Selector3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~9_combout\ = (!\t1|Add0~60_combout\ & (!\t1|Add0~56_combout\ & (!\t1|Add0~58_combout\ & \t1|Selector3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~60_combout\,
	datab => \t1|Add0~56_combout\,
	datac => \t1|Add0~58_combout\,
	datad => \t1|Selector3~8_combout\,
	combout => \t1|Selector3~9_combout\);

-- Location: LCCOMB_X14_Y13_N20
\t1|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector2~2_combout\ = (\t1|Selector2~1_combout\) # ((!\t1|Add0~62_combout\ & (\t1|Selector3~4_combout\ & \t1|Selector3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Selector2~1_combout\,
	datab => \t1|Add0~62_combout\,
	datac => \t1|Selector3~4_combout\,
	datad => \t1|Selector3~9_combout\,
	combout => \t1|Selector2~2_combout\);

-- Location: LCCOMB_X14_Y13_N8
\t1|TXState.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|TXState.IDLE~0_combout\ = (\t1|Selector2~2_combout\ & (!\t1|TXState.TXE~q\)) # (!\t1|Selector2~2_combout\ & ((\t1|TXState.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXE~q\,
	datac => \t1|TXState.IDLE~q\,
	datad => \t1|Selector2~2_combout\,
	combout => \t1|TXState.IDLE~0_combout\);

-- Location: FF_X14_Y13_N9
\t1|TXState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|TXState.IDLE~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|TXState.IDLE~q\);

-- Location: LCCOMB_X12_Y14_N24
\t1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector1~0_combout\ = (!\t1|TXState.IDLE~q\ & (\t1|Equal0~9_combout\ & \t1|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.IDLE~q\,
	datab => \t1|Equal0~9_combout\,
	datad => \t1|Equal0~4_combout\,
	combout => \t1|Selector1~0_combout\);

-- Location: FF_X12_Y14_N25
\t1|TXState.TXR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector1~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|TXState.TXR~q\);

-- Location: LCCOMB_X14_Y13_N0
\t1|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector2~3_combout\ = (\t1|TXState.TXE~q\ & (((\t1|TXState.TXING~q\ & !\t1|Selector2~2_combout\)))) # (!\t1|TXState.TXE~q\ & ((\t1|TXState.TXR~q\) # ((\t1|TXState.TXING~q\ & !\t1|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXE~q\,
	datab => \t1|TXState.TXR~q\,
	datac => \t1|TXState.TXING~q\,
	datad => \t1|Selector2~2_combout\,
	combout => \t1|Selector2~3_combout\);

-- Location: FF_X14_Y13_N1
\t1|TXState.TXING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector2~3_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|TXState.TXING~q\);

-- Location: LCCOMB_X12_Y13_N24
\t1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector5~0_combout\ = (\t1|TXState.TXING~q\ & ((!\t1|Add0~62_combout\))) # (!\t1|TXState.TXING~q\ & (!\t1|TXState.TXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXING~q\,
	datab => \t1|TXState.TXE~q\,
	datad => \t1|Add0~62_combout\,
	combout => \t1|Selector5~0_combout\);

-- Location: FF_X12_Y13_N25
\t1|n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector5~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \t1|TXState.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(31));

-- Location: LCCOMB_X13_Y13_N30
\t1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~62_combout\ = \t1|Add0~61\ $ (!\t1|n\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t1|n\(31),
	cin => \t1|Add0~61\,
	combout => \t1|Add0~62_combout\);

-- Location: LCCOMB_X14_Y13_N30
\t1|Selector3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~10_combout\ = (!\t1|Add0~62_combout\ & (\t1|Selector3~4_combout\ & \t1|Selector3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Add0~62_combout\,
	datac => \t1|Selector3~4_combout\,
	datad => \t1|Selector3~9_combout\,
	combout => \t1|Selector3~10_combout\);

-- Location: FF_X14_Y13_N31
\t1|TXState.TXE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector3~10_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|TXState.TXE~q\);

-- Location: LCCOMB_X9_Y11_N14
\t1|TX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|TX~0_combout\ = (!\t1|TX~q\ & ((!\t1|TXState.IDLE~q\) # (!\RESet~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESet~input_o\,
	datab => \t1|TXState.IDLE~q\,
	datad => \t1|TX~q\,
	combout => \t1|TX~0_combout\);

-- Location: LCCOMB_X2_Y7_N8
\r1|f1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|temp~0_combout\ = \r1|f1|temp~q\ $ (\r1|f1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r1|f1|temp~q\,
	datad => \r1|f1|Equal0~7_combout\,
	combout => \r1|f1|temp~0_combout\);

-- Location: LCCOMB_X2_Y7_N26
\r1|f1|temp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|temp~feeder_combout\ = \r1|f1|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|temp~0_combout\,
	combout => \r1|f1|temp~feeder_combout\);

-- Location: FF_X2_Y7_N27
\r1|f1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|temp~q\);

-- Location: CLKCTRL_G3
\r1|f1|temp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \r1|f1|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \r1|f1|temp~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N15
\RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX,
	o => \RX~input_o\);

-- Location: LCCOMB_X10_Y7_N20
\r1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector0~0_combout\ = ((!\r1|RXState.RXE~q\ & \r1|RXState.IDLE~q\)) # (!\RX~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|RXState.IDLE~q\,
	datad => \RX~input_o\,
	combout => \r1|Selector0~0_combout\);

-- Location: FF_X10_Y7_N21
\r1|RXState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector0~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|RXState.IDLE~q\);

-- Location: LCCOMB_X9_Y7_N4
\r1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector2~0_combout\ = (\RX~input_o\ & (!\r1|RXState.RXE~q\ & ((\r1|RXState.RXING~q\)))) # (!\RX~input_o\ & (((\r1|RXState.RXING~q\) # (!\r1|RXState.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXE~q\,
	datab => \RX~input_o\,
	datac => \r1|RXState.IDLE~q\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector2~0_combout\);

-- Location: LCCOMB_X10_Y7_N6
\r1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector2~1_combout\ = (\r1|Selector2~0_combout\ & !\r1|Selector3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|Selector2~0_combout\,
	datad => \r1|Selector3~14_combout\,
	combout => \r1|Selector2~1_combout\);

-- Location: FF_X10_Y7_N7
\r1|RXState.RXING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector2~1_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|RXState.RXING~q\);

-- Location: LCCOMB_X12_Y7_N24
\r1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector4~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~62_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datac => \r1|RXState.RXE~q\,
	datad => \r1|Add0~62_combout\,
	combout => \r1|Selector4~0_combout\);

-- Location: LCCOMB_X10_Y7_N14
\r1|n[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|n[17]~0_combout\ = (\RX~input_o\ & ((\r1|RXState.IDLE~q\))) # (!\RX~input_o\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datab => \r1|RXState.RXE~q\,
	datad => \r1|RXState.IDLE~q\,
	combout => \r1|n[17]~0_combout\);

-- Location: FF_X12_Y7_N25
\r1|n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector4~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(31));

-- Location: LCCOMB_X11_Y8_N0
\r1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~0_combout\ = \r1|n\(0) $ (GND)
-- \r1|Add0~1\ = CARRY(!\r1|n\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(0),
	datad => VCC,
	combout => \r1|Add0~0_combout\,
	cout => \r1|Add0~1\);

-- Location: LCCOMB_X11_Y8_N2
\r1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~2_combout\ = (\r1|n\(1) & ((\r1|Add0~1\) # (GND))) # (!\r1|n\(1) & (!\r1|Add0~1\))
-- \r1|Add0~3\ = CARRY((\r1|n\(1)) # (!\r1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(1),
	datad => VCC,
	cin => \r1|Add0~1\,
	combout => \r1|Add0~2_combout\,
	cout => \r1|Add0~3\);

-- Location: LCCOMB_X10_Y8_N18
\r1|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector34~0_combout\ = (\r1|RXState.RXING~q\ & (!\r1|Add0~2_combout\)) # (!\r1|RXState.RXING~q\ & ((!\r1|RXState.RXE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Add0~2_combout\,
	datab => \r1|RXState.RXE~q\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector34~0_combout\);

-- Location: FF_X11_Y8_N15
\r1|n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector34~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(1));

-- Location: LCCOMB_X11_Y8_N4
\r1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~4_combout\ = (\r1|n\(2) & (!\r1|Add0~3\ & VCC)) # (!\r1|n\(2) & (\r1|Add0~3\ $ (GND)))
-- \r1|Add0~5\ = CARRY((!\r1|n\(2) & !\r1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(2),
	datad => VCC,
	cin => \r1|Add0~3\,
	combout => \r1|Add0~4_combout\,
	cout => \r1|Add0~5\);

-- Location: LCCOMB_X10_Y8_N16
\r1|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector33~0_combout\ = (\r1|RXState.RXING~q\ & (!\r1|Add0~4_combout\)) # (!\r1|RXState.RXING~q\ & ((!\r1|RXState.RXE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Add0~4_combout\,
	datab => \r1|RXState.RXE~q\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector33~0_combout\);

-- Location: FF_X11_Y8_N5
\r1|n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector33~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(2));

-- Location: LCCOMB_X11_Y8_N6
\r1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~6_combout\ = (\r1|n\(3) & ((\r1|Add0~5\) # (GND))) # (!\r1|n\(3) & (!\r1|Add0~5\))
-- \r1|Add0~7\ = CARRY((\r1|n\(3)) # (!\r1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(3),
	datad => VCC,
	cin => \r1|Add0~5\,
	combout => \r1|Add0~6_combout\,
	cout => \r1|Add0~7\);

-- Location: LCCOMB_X10_Y8_N30
\r1|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector32~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~6_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datab => \r1|RXState.RXE~q\,
	datad => \r1|Add0~6_combout\,
	combout => \r1|Selector32~0_combout\);

-- Location: FF_X11_Y8_N7
\r1|n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector32~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(3));

-- Location: LCCOMB_X11_Y8_N8
\r1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~8_combout\ = (\r1|n\(4) & (!\r1|Add0~7\ & VCC)) # (!\r1|n\(4) & (\r1|Add0~7\ $ (GND)))
-- \r1|Add0~9\ = CARRY((!\r1|n\(4) & !\r1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(4),
	datad => VCC,
	cin => \r1|Add0~7\,
	combout => \r1|Add0~8_combout\,
	cout => \r1|Add0~9\);

-- Location: LCCOMB_X10_Y8_N28
\r1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector31~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~8_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~8_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector31~0_combout\);

-- Location: FF_X11_Y8_N13
\r1|n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector31~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(4));

-- Location: LCCOMB_X11_Y8_N10
\r1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~10_combout\ = (\r1|n\(5) & ((\r1|Add0~9\) # (GND))) # (!\r1|n\(5) & (!\r1|Add0~9\))
-- \r1|Add0~11\ = CARRY((\r1|n\(5)) # (!\r1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(5),
	datad => VCC,
	cin => \r1|Add0~9\,
	combout => \r1|Add0~10_combout\,
	cout => \r1|Add0~11\);

-- Location: LCCOMB_X10_Y8_N10
\r1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector30~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~10_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~10_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector30~0_combout\);

-- Location: FF_X11_Y8_N23
\r1|n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector30~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(5));

-- Location: LCCOMB_X11_Y8_N12
\r1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~12_combout\ = (\r1|n\(6) & (!\r1|Add0~11\ & VCC)) # (!\r1|n\(6) & (\r1|Add0~11\ $ (GND)))
-- \r1|Add0~13\ = CARRY((!\r1|n\(6) & !\r1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(6),
	datad => VCC,
	cin => \r1|Add0~11\,
	combout => \r1|Add0~12_combout\,
	cout => \r1|Add0~13\);

-- Location: LCCOMB_X10_Y8_N4
\r1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector29~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~12_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~12_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector29~0_combout\);

-- Location: FF_X11_Y8_N29
\r1|n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector29~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(6));

-- Location: LCCOMB_X11_Y8_N14
\r1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~14_combout\ = (\r1|n\(7) & ((\r1|Add0~13\) # (GND))) # (!\r1|n\(7) & (!\r1|Add0~13\))
-- \r1|Add0~15\ = CARRY((\r1|n\(7)) # (!\r1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(7),
	datad => VCC,
	cin => \r1|Add0~13\,
	combout => \r1|Add0~14_combout\,
	cout => \r1|Add0~15\);

-- Location: LCCOMB_X10_Y8_N22
\r1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector28~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~14_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~14_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector28~0_combout\);

-- Location: FF_X11_Y8_N9
\r1|n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector28~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(7));

-- Location: LCCOMB_X11_Y8_N16
\r1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~16_combout\ = (\r1|n\(8) & (!\r1|Add0~15\ & VCC)) # (!\r1|n\(8) & (\r1|Add0~15\ $ (GND)))
-- \r1|Add0~17\ = CARRY((!\r1|n\(8) & !\r1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(8),
	datad => VCC,
	cin => \r1|Add0~15\,
	combout => \r1|Add0~16_combout\,
	cout => \r1|Add0~17\);

-- Location: LCCOMB_X10_Y8_N14
\r1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector27~0_combout\ = (\r1|RXState.RXING~q\ & (!\r1|Add0~16_combout\)) # (!\r1|RXState.RXING~q\ & ((!\r1|RXState.RXE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datab => \r1|Add0~16_combout\,
	datad => \r1|RXState.RXE~q\,
	combout => \r1|Selector27~0_combout\);

-- Location: FF_X10_Y8_N15
\r1|n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector27~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(8));

-- Location: LCCOMB_X11_Y8_N18
\r1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~18_combout\ = (\r1|n\(9) & ((\r1|Add0~17\) # (GND))) # (!\r1|n\(9) & (!\r1|Add0~17\))
-- \r1|Add0~19\ = CARRY((\r1|n\(9)) # (!\r1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(9),
	datad => VCC,
	cin => \r1|Add0~17\,
	combout => \r1|Add0~18_combout\,
	cout => \r1|Add0~19\);

-- Location: LCCOMB_X10_Y8_N12
\r1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector26~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~18_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~18_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector26~0_combout\);

-- Location: FF_X11_Y8_N25
\r1|n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector26~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(9));

-- Location: LCCOMB_X11_Y8_N20
\r1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~20_combout\ = (\r1|n\(10) & (!\r1|Add0~19\ & VCC)) # (!\r1|n\(10) & (\r1|Add0~19\ $ (GND)))
-- \r1|Add0~21\ = CARRY((!\r1|n\(10) & !\r1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(10),
	datad => VCC,
	cin => \r1|Add0~19\,
	combout => \r1|Add0~20_combout\,
	cout => \r1|Add0~21\);

-- Location: LCCOMB_X10_Y8_N6
\r1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector25~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~20_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~20_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector25~0_combout\);

-- Location: FF_X11_Y8_N1
\r1|n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector25~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(10));

-- Location: LCCOMB_X11_Y8_N22
\r1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~22_combout\ = (\r1|n\(11) & ((\r1|Add0~21\) # (GND))) # (!\r1|n\(11) & (!\r1|Add0~21\))
-- \r1|Add0~23\ = CARRY((\r1|n\(11)) # (!\r1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(11),
	datad => VCC,
	cin => \r1|Add0~21\,
	combout => \r1|Add0~22_combout\,
	cout => \r1|Add0~23\);

-- Location: LCCOMB_X10_Y8_N24
\r1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector24~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~22_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datab => \r1|RXState.RXE~q\,
	datad => \r1|Add0~22_combout\,
	combout => \r1|Selector24~0_combout\);

-- Location: FF_X11_Y8_N31
\r1|n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector24~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(11));

-- Location: LCCOMB_X11_Y8_N24
\r1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~24_combout\ = (\r1|n\(12) & (!\r1|Add0~23\ & VCC)) # (!\r1|n\(12) & (\r1|Add0~23\ $ (GND)))
-- \r1|Add0~25\ = CARRY((!\r1|n\(12) & !\r1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(12),
	datad => VCC,
	cin => \r1|Add0~23\,
	combout => \r1|Add0~24_combout\,
	cout => \r1|Add0~25\);

-- Location: LCCOMB_X10_Y8_N26
\r1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector23~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~24_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datab => \r1|RXState.RXE~q\,
	datad => \r1|Add0~24_combout\,
	combout => \r1|Selector23~0_combout\);

-- Location: FF_X11_Y8_N21
\r1|n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector23~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(12));

-- Location: LCCOMB_X11_Y8_N26
\r1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~26_combout\ = (\r1|n\(13) & ((\r1|Add0~25\) # (GND))) # (!\r1|n\(13) & (!\r1|Add0~25\))
-- \r1|Add0~27\ = CARRY((\r1|n\(13)) # (!\r1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(13),
	datad => VCC,
	cin => \r1|Add0~25\,
	combout => \r1|Add0~26_combout\,
	cout => \r1|Add0~27\);

-- Location: LCCOMB_X10_Y8_N20
\r1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector22~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~26_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datab => \r1|RXState.RXE~q\,
	datad => \r1|Add0~26_combout\,
	combout => \r1|Selector22~0_combout\);

-- Location: FF_X11_Y8_N11
\r1|n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector22~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(13));

-- Location: LCCOMB_X11_Y8_N28
\r1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~28_combout\ = (\r1|n\(14) & (!\r1|Add0~27\ & VCC)) # (!\r1|n\(14) & (\r1|Add0~27\ $ (GND)))
-- \r1|Add0~29\ = CARRY((!\r1|n\(14) & !\r1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(14),
	datad => VCC,
	cin => \r1|Add0~27\,
	combout => \r1|Add0~28_combout\,
	cout => \r1|Add0~29\);

-- Location: LCCOMB_X10_Y8_N2
\r1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector21~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~28_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datab => \r1|RXState.RXE~q\,
	datad => \r1|Add0~28_combout\,
	combout => \r1|Selector21~0_combout\);

-- Location: FF_X11_Y8_N19
\r1|n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector21~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(14));

-- Location: LCCOMB_X11_Y8_N30
\r1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~30_combout\ = (\r1|n\(15) & ((\r1|Add0~29\) # (GND))) # (!\r1|n\(15) & (!\r1|Add0~29\))
-- \r1|Add0~31\ = CARRY((\r1|n\(15)) # (!\r1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(15),
	datad => VCC,
	cin => \r1|Add0~29\,
	combout => \r1|Add0~30_combout\,
	cout => \r1|Add0~31\);

-- Location: LCCOMB_X10_Y8_N8
\r1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector20~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~30_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~30_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector20~0_combout\);

-- Location: FF_X10_Y8_N9
\r1|n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector20~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(15));

-- Location: LCCOMB_X11_Y7_N0
\r1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~32_combout\ = (\r1|n\(16) & (!\r1|Add0~31\ & VCC)) # (!\r1|n\(16) & (\r1|Add0~31\ $ (GND)))
-- \r1|Add0~33\ = CARRY((!\r1|n\(16) & !\r1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(16),
	datad => VCC,
	cin => \r1|Add0~31\,
	combout => \r1|Add0~32_combout\,
	cout => \r1|Add0~33\);

-- Location: LCCOMB_X12_Y7_N12
\r1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector19~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~32_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~32_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector19~0_combout\);

-- Location: FF_X11_Y7_N7
\r1|n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector19~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(16));

-- Location: LCCOMB_X11_Y7_N2
\r1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~34_combout\ = (\r1|n\(17) & ((\r1|Add0~33\) # (GND))) # (!\r1|n\(17) & (!\r1|Add0~33\))
-- \r1|Add0~35\ = CARRY((\r1|n\(17)) # (!\r1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(17),
	datad => VCC,
	cin => \r1|Add0~33\,
	combout => \r1|Add0~34_combout\,
	cout => \r1|Add0~35\);

-- Location: LCCOMB_X10_Y7_N16
\r1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector18~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~34_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datac => \r1|RXState.RXE~q\,
	datad => \r1|Add0~34_combout\,
	combout => \r1|Selector18~0_combout\);

-- Location: FF_X10_Y7_N17
\r1|n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector18~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(17));

-- Location: LCCOMB_X11_Y7_N4
\r1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~36_combout\ = (\r1|n\(18) & (!\r1|Add0~35\ & VCC)) # (!\r1|n\(18) & (\r1|Add0~35\ $ (GND)))
-- \r1|Add0~37\ = CARRY((!\r1|n\(18) & !\r1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(18),
	datad => VCC,
	cin => \r1|Add0~35\,
	combout => \r1|Add0~36_combout\,
	cout => \r1|Add0~37\);

-- Location: LCCOMB_X12_Y7_N30
\r1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector17~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~36_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~36_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector17~0_combout\);

-- Location: FF_X12_Y7_N31
\r1|n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector17~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(18));

-- Location: LCCOMB_X11_Y7_N6
\r1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~38_combout\ = (\r1|n\(19) & ((\r1|Add0~37\) # (GND))) # (!\r1|n\(19) & (!\r1|Add0~37\))
-- \r1|Add0~39\ = CARRY((\r1|n\(19)) # (!\r1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(19),
	datad => VCC,
	cin => \r1|Add0~37\,
	combout => \r1|Add0~38_combout\,
	cout => \r1|Add0~39\);

-- Location: LCCOMB_X12_Y7_N4
\r1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector16~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~38_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~38_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector16~0_combout\);

-- Location: FF_X12_Y7_N5
\r1|n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector16~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(19));

-- Location: LCCOMB_X11_Y7_N8
\r1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~40_combout\ = (\r1|n\(20) & (!\r1|Add0~39\ & VCC)) # (!\r1|n\(20) & (\r1|Add0~39\ $ (GND)))
-- \r1|Add0~41\ = CARRY((!\r1|n\(20) & !\r1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(20),
	datad => VCC,
	cin => \r1|Add0~39\,
	combout => \r1|Add0~40_combout\,
	cout => \r1|Add0~41\);

-- Location: LCCOMB_X12_Y7_N2
\r1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector15~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~40_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datac => \r1|RXState.RXE~q\,
	datad => \r1|Add0~40_combout\,
	combout => \r1|Selector15~0_combout\);

-- Location: FF_X12_Y7_N3
\r1|n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector15~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(20));

-- Location: LCCOMB_X11_Y7_N10
\r1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~42_combout\ = (\r1|n\(21) & ((\r1|Add0~41\) # (GND))) # (!\r1|n\(21) & (!\r1|Add0~41\))
-- \r1|Add0~43\ = CARRY((\r1|n\(21)) # (!\r1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(21),
	datad => VCC,
	cin => \r1|Add0~41\,
	combout => \r1|Add0~42_combout\,
	cout => \r1|Add0~43\);

-- Location: LCCOMB_X12_Y7_N16
\r1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector14~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~42_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datac => \r1|RXState.RXE~q\,
	datad => \r1|Add0~42_combout\,
	combout => \r1|Selector14~0_combout\);

-- Location: FF_X12_Y7_N17
\r1|n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector14~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(21));

-- Location: LCCOMB_X11_Y7_N12
\r1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~44_combout\ = (\r1|n\(22) & (!\r1|Add0~43\ & VCC)) # (!\r1|n\(22) & (\r1|Add0~43\ $ (GND)))
-- \r1|Add0~45\ = CARRY((!\r1|n\(22) & !\r1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(22),
	datad => VCC,
	cin => \r1|Add0~43\,
	combout => \r1|Add0~44_combout\,
	cout => \r1|Add0~45\);

-- Location: LCCOMB_X12_Y7_N14
\r1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector13~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~44_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datac => \r1|RXState.RXE~q\,
	datad => \r1|Add0~44_combout\,
	combout => \r1|Selector13~0_combout\);

-- Location: FF_X12_Y7_N15
\r1|n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector13~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(22));

-- Location: LCCOMB_X11_Y7_N14
\r1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~46_combout\ = (\r1|n\(23) & ((\r1|Add0~45\) # (GND))) # (!\r1|n\(23) & (!\r1|Add0~45\))
-- \r1|Add0~47\ = CARRY((\r1|n\(23)) # (!\r1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(23),
	datad => VCC,
	cin => \r1|Add0~45\,
	combout => \r1|Add0~46_combout\,
	cout => \r1|Add0~47\);

-- Location: LCCOMB_X12_Y7_N0
\r1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector12~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~46_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datac => \r1|RXState.RXE~q\,
	datad => \r1|Add0~46_combout\,
	combout => \r1|Selector12~0_combout\);

-- Location: FF_X12_Y7_N1
\r1|n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector12~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(23));

-- Location: LCCOMB_X11_Y7_N16
\r1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~48_combout\ = (\r1|n\(24) & (!\r1|Add0~47\ & VCC)) # (!\r1|n\(24) & (\r1|Add0~47\ $ (GND)))
-- \r1|Add0~49\ = CARRY((!\r1|n\(24) & !\r1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(24),
	datad => VCC,
	cin => \r1|Add0~47\,
	combout => \r1|Add0~48_combout\,
	cout => \r1|Add0~49\);

-- Location: LCCOMB_X12_Y7_N6
\r1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector11~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~48_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~48_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector11~0_combout\);

-- Location: FF_X12_Y7_N7
\r1|n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector11~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(24));

-- Location: LCCOMB_X11_Y7_N18
\r1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~50_combout\ = (\r1|n\(25) & ((\r1|Add0~49\) # (GND))) # (!\r1|n\(25) & (!\r1|Add0~49\))
-- \r1|Add0~51\ = CARRY((\r1|n\(25)) # (!\r1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(25),
	datad => VCC,
	cin => \r1|Add0~49\,
	combout => \r1|Add0~50_combout\,
	cout => \r1|Add0~51\);

-- Location: LCCOMB_X12_Y7_N28
\r1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector10~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~50_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datac => \r1|RXState.RXE~q\,
	datad => \r1|Add0~50_combout\,
	combout => \r1|Selector10~0_combout\);

-- Location: FF_X12_Y7_N29
\r1|n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector10~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(25));

-- Location: LCCOMB_X11_Y7_N20
\r1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~52_combout\ = (\r1|n\(26) & (!\r1|Add0~51\ & VCC)) # (!\r1|n\(26) & (\r1|Add0~51\ $ (GND)))
-- \r1|Add0~53\ = CARRY((!\r1|n\(26) & !\r1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(26),
	datad => VCC,
	cin => \r1|Add0~51\,
	combout => \r1|Add0~52_combout\,
	cout => \r1|Add0~53\);

-- Location: LCCOMB_X12_Y7_N22
\r1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector9~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~52_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datac => \r1|RXState.RXE~q\,
	datad => \r1|Add0~52_combout\,
	combout => \r1|Selector9~0_combout\);

-- Location: FF_X12_Y7_N23
\r1|n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector9~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(26));

-- Location: LCCOMB_X11_Y7_N22
\r1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~54_combout\ = (\r1|n\(27) & ((\r1|Add0~53\) # (GND))) # (!\r1|n\(27) & (!\r1|Add0~53\))
-- \r1|Add0~55\ = CARRY((\r1|n\(27)) # (!\r1|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(27),
	datad => VCC,
	cin => \r1|Add0~53\,
	combout => \r1|Add0~54_combout\,
	cout => \r1|Add0~55\);

-- Location: LCCOMB_X12_Y7_N8
\r1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector8~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~54_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datac => \r1|RXState.RXE~q\,
	datad => \r1|Add0~54_combout\,
	combout => \r1|Selector8~0_combout\);

-- Location: FF_X12_Y7_N9
\r1|n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector8~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(27));

-- Location: LCCOMB_X11_Y7_N24
\r1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~56_combout\ = (\r1|n\(28) & (!\r1|Add0~55\ & VCC)) # (!\r1|n\(28) & (\r1|Add0~55\ $ (GND)))
-- \r1|Add0~57\ = CARRY((!\r1|n\(28) & !\r1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(28),
	datad => VCC,
	cin => \r1|Add0~55\,
	combout => \r1|Add0~56_combout\,
	cout => \r1|Add0~57\);

-- Location: LCCOMB_X12_Y7_N18
\r1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector7~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~56_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datac => \r1|RXState.RXE~q\,
	datad => \r1|Add0~56_combout\,
	combout => \r1|Selector7~0_combout\);

-- Location: FF_X12_Y7_N19
\r1|n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector7~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(28));

-- Location: LCCOMB_X11_Y7_N26
\r1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~58_combout\ = (\r1|n\(29) & ((\r1|Add0~57\) # (GND))) # (!\r1|n\(29) & (!\r1|Add0~57\))
-- \r1|Add0~59\ = CARRY((\r1|n\(29)) # (!\r1|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(29),
	datad => VCC,
	cin => \r1|Add0~57\,
	combout => \r1|Add0~58_combout\,
	cout => \r1|Add0~59\);

-- Location: LCCOMB_X12_Y7_N20
\r1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector6~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~58_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~58_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector6~0_combout\);

-- Location: FF_X12_Y7_N21
\r1|n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector6~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(29));

-- Location: LCCOMB_X11_Y7_N28
\r1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~60_combout\ = (\r1|n\(30) & (!\r1|Add0~59\ & VCC)) # (!\r1|n\(30) & (\r1|Add0~59\ $ (GND)))
-- \r1|Add0~61\ = CARRY((!\r1|n\(30) & !\r1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|n\(30),
	datad => VCC,
	cin => \r1|Add0~59\,
	combout => \r1|Add0~60_combout\,
	cout => \r1|Add0~61\);

-- Location: LCCOMB_X12_Y7_N10
\r1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector5~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~60_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datac => \r1|RXState.RXE~q\,
	datad => \r1|Add0~60_combout\,
	combout => \r1|Selector5~0_combout\);

-- Location: FF_X12_Y7_N11
\r1|n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector5~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(30));

-- Location: LCCOMB_X11_Y7_N30
\r1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~62_combout\ = \r1|Add0~61\ $ (!\r1|n\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \r1|n\(31),
	cin => \r1|Add0~61\,
	combout => \r1|Add0~62_combout\);

-- Location: LCCOMB_X10_Y7_N30
\r1|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector3~4_combout\ = (\r1|RXState.RXING~q\ & (\r1|Add0~6_combout\ & (!\r1|Add0~0_combout\ & !\r1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|RXState.RXING~q\,
	datab => \r1|Add0~6_combout\,
	datac => \r1|Add0~0_combout\,
	datad => \r1|Add0~2_combout\,
	combout => \r1|Selector3~4_combout\);

-- Location: LCCOMB_X10_Y7_N8
\r1|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector3~5_combout\ = (!\r1|Add0~4_combout\ & (!\r1|Add0~8_combout\ & (!\r1|Add0~10_combout\ & !\r1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Add0~4_combout\,
	datab => \r1|Add0~8_combout\,
	datac => \r1|Add0~10_combout\,
	datad => \r1|Add0~12_combout\,
	combout => \r1|Selector3~5_combout\);

-- Location: LCCOMB_X10_Y7_N26
\r1|Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector3~6_combout\ = (!\r1|Add0~16_combout\ & (!\r1|Add0~14_combout\ & (!\r1|Add0~18_combout\ & !\r1|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Add0~16_combout\,
	datab => \r1|Add0~14_combout\,
	datac => \r1|Add0~18_combout\,
	datad => \r1|Add0~20_combout\,
	combout => \r1|Selector3~6_combout\);

-- Location: LCCOMB_X10_Y7_N0
\r1|Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector3~7_combout\ = (!\r1|Add0~24_combout\ & (!\r1|Add0~22_combout\ & (!\r1|Add0~26_combout\ & !\r1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Add0~24_combout\,
	datab => \r1|Add0~22_combout\,
	datac => \r1|Add0~26_combout\,
	datad => \r1|Add0~28_combout\,
	combout => \r1|Selector3~7_combout\);

-- Location: LCCOMB_X10_Y7_N22
\r1|Selector3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector3~8_combout\ = (\r1|Selector3~4_combout\ & (\r1|Selector3~5_combout\ & (\r1|Selector3~6_combout\ & \r1|Selector3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Selector3~4_combout\,
	datab => \r1|Selector3~5_combout\,
	datac => \r1|Selector3~6_combout\,
	datad => \r1|Selector3~7_combout\,
	combout => \r1|Selector3~8_combout\);

-- Location: LCCOMB_X10_Y7_N12
\r1|Selector3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector3~9_combout\ = (!\r1|Add0~32_combout\ & (!\r1|Add0~34_combout\ & (!\r1|Add0~30_combout\ & !\r1|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Add0~32_combout\,
	datab => \r1|Add0~34_combout\,
	datac => \r1|Add0~30_combout\,
	datad => \r1|Add0~36_combout\,
	combout => \r1|Selector3~9_combout\);

-- Location: LCCOMB_X10_Y7_N10
\r1|Selector3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector3~10_combout\ = (!\r1|Add0~38_combout\ & (!\r1|Add0~40_combout\ & (!\r1|Add0~42_combout\ & \r1|Selector3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Add0~38_combout\,
	datab => \r1|Add0~40_combout\,
	datac => \r1|Add0~42_combout\,
	datad => \r1|Selector3~9_combout\,
	combout => \r1|Selector3~10_combout\);

-- Location: LCCOMB_X10_Y7_N24
\r1|Selector3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector3~11_combout\ = (!\r1|Add0~44_combout\ & (!\r1|Add0~46_combout\ & (\r1|Selector3~8_combout\ & \r1|Selector3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Add0~44_combout\,
	datab => \r1|Add0~46_combout\,
	datac => \r1|Selector3~8_combout\,
	datad => \r1|Selector3~10_combout\,
	combout => \r1|Selector3~11_combout\);

-- Location: LCCOMB_X10_Y7_N18
\r1|Selector3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector3~12_combout\ = (!\r1|Add0~48_combout\ & (!\r1|Add0~50_combout\ & (!\r1|Add0~52_combout\ & \r1|Selector3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Add0~48_combout\,
	datab => \r1|Add0~50_combout\,
	datac => \r1|Add0~52_combout\,
	datad => \r1|Selector3~11_combout\,
	combout => \r1|Selector3~12_combout\);

-- Location: LCCOMB_X10_Y7_N28
\r1|Selector3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector3~13_combout\ = (!\r1|Add0~54_combout\ & (!\r1|Add0~56_combout\ & \r1|Selector3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|Add0~54_combout\,
	datac => \r1|Add0~56_combout\,
	datad => \r1|Selector3~12_combout\,
	combout => \r1|Selector3~13_combout\);

-- Location: LCCOMB_X10_Y7_N2
\r1|Selector3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector3~14_combout\ = (!\r1|Add0~62_combout\ & (!\r1|Add0~58_combout\ & (!\r1|Add0~60_combout\ & \r1|Selector3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Add0~62_combout\,
	datab => \r1|Add0~58_combout\,
	datac => \r1|Add0~60_combout\,
	datad => \r1|Selector3~13_combout\,
	combout => \r1|Selector3~14_combout\);

-- Location: LCCOMB_X10_Y7_N4
\r1|Selector3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector3~15_combout\ = (\r1|RXState.RXE~q\ & (!\RX~input_o\ & ((\r1|RXState.IDLE~q\) # (\r1|Selector3~14_combout\)))) # (!\r1|RXState.RXE~q\ & (((\r1|Selector3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datab => \r1|RXState.IDLE~q\,
	datac => \r1|RXState.RXE~q\,
	datad => \r1|Selector3~14_combout\,
	combout => \r1|Selector3~15_combout\);

-- Location: FF_X10_Y7_N5
\r1|RXState.RXE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|Selector3~15_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|RXState.RXE~q\);

-- Location: LCCOMB_X10_Y8_N0
\r1|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector35~0_combout\ = (\r1|RXState.RXING~q\ & ((!\r1|Add0~0_combout\))) # (!\r1|RXState.RXING~q\ & (!\r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|RXState.RXE~q\,
	datac => \r1|Add0~0_combout\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Selector35~0_combout\);

-- Location: FF_X11_Y8_N27
\r1|n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|Selector35~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r1|n[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|n\(0));

-- Location: LCCOMB_X9_Y11_N24
\r1|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~0_combout\ = (\RESet~input_o\ & \r1|RXState.RXING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESet~input_o\,
	datad => \r1|RXState.RXING~q\,
	combout => \r1|Decoder0~0_combout\);

-- Location: LCCOMB_X8_Y11_N28
\r1|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~1_combout\ = (!\r1|n\(0) & (\r1|n\(1) & (!\r1|n\(2) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(0),
	datab => \r1|n\(1),
	datac => \r1|n\(2),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~1_combout\);

-- Location: LCCOMB_X8_Y11_N16
\r1|charnR[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|charnR[5]~0_combout\ = (\r1|Decoder0~1_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~1_combout\ & ((\r1|charnR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datac => \r1|charnR\(5),
	datad => \r1|Decoder0~1_combout\,
	combout => \r1|charnR[5]~0_combout\);

-- Location: FF_X8_Y11_N17
\r1|charnR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|charnR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|charnR\(5));

-- Location: LCCOMB_X9_Y11_N8
\r1|TESTOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|TESTOUT[2]~feeder_combout\ = \r1|charnR\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r1|charnR\(5),
	combout => \r1|TESTOUT[2]~feeder_combout\);

-- Location: LCCOMB_X9_Y11_N30
\r1|TESTOUT[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|TESTOUT[7]~0_combout\ = (\RESet~input_o\ & (\RX~input_o\ & \r1|RXState.RXE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESet~input_o\,
	datac => \RX~input_o\,
	datad => \r1|RXState.RXE~q\,
	combout => \r1|TESTOUT[7]~0_combout\);

-- Location: FF_X9_Y11_N9
\r1|TESTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|TESTOUT[2]~feeder_combout\,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(2));

-- Location: LCCOMB_X8_Y11_N2
\r1|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~4_combout\ = (\r1|n\(0) & (\r1|n\(1) & (!\r1|n\(2) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(0),
	datab => \r1|n\(1),
	datac => \r1|n\(2),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~4_combout\);

-- Location: LCCOMB_X8_Y11_N26
\r1|charnR[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|charnR[4]~3_combout\ = (\r1|Decoder0~4_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~4_combout\ & ((\r1|charnR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datac => \r1|charnR\(4),
	datad => \r1|Decoder0~4_combout\,
	combout => \r1|charnR[4]~3_combout\);

-- Location: FF_X8_Y11_N27
\r1|charnR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|charnR[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|charnR\(4));

-- Location: FF_X9_Y11_N27
\r1|TESTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|charnR\(4),
	sload => VCC,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(3));

-- Location: LCCOMB_X8_Y11_N12
\r1|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~3_combout\ = (!\r1|n\(0) & (!\r1|n\(1) & (!\r1|n\(2) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(0),
	datab => \r1|n\(1),
	datac => \r1|n\(2),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~3_combout\);

-- Location: LCCOMB_X8_Y11_N24
\r1|charnR[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|charnR[7]~2_combout\ = (\r1|Decoder0~3_combout\ & (!\RX~input_o\)) # (!\r1|Decoder0~3_combout\ & ((\r1|charnR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datac => \r1|charnR\(7),
	datad => \r1|Decoder0~3_combout\,
	combout => \r1|charnR[7]~2_combout\);

-- Location: FF_X8_Y11_N25
\r1|charnR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|charnR[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|charnR\(7));

-- Location: LCCOMB_X9_Y11_N18
\r1|TESTOUT[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|TESTOUT[0]~1_combout\ = !\r1|charnR\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r1|charnR\(7),
	combout => \r1|TESTOUT[0]~1_combout\);

-- Location: FF_X9_Y11_N13
\r1|TESTOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|TESTOUT[0]~1_combout\,
	sload => VCC,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(0));

-- Location: LCCOMB_X8_Y11_N10
\r1|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~2_combout\ = (\r1|n\(0) & (!\r1|n\(1) & (!\r1|n\(2) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(0),
	datab => \r1|n\(1),
	datac => \r1|n\(2),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~2_combout\);

-- Location: LCCOMB_X8_Y11_N30
\r1|charnR[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|charnR[6]~1_combout\ = (\r1|Decoder0~2_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~2_combout\ & ((\r1|charnR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datac => \r1|charnR\(6),
	datad => \r1|Decoder0~2_combout\,
	combout => \r1|charnR[6]~1_combout\);

-- Location: FF_X8_Y11_N31
\r1|charnR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|charnR[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|charnR\(6));

-- Location: LCCOMB_X9_Y11_N10
\r1|TESTOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|TESTOUT[1]~feeder_combout\ = \r1|charnR\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r1|charnR\(6),
	combout => \r1|TESTOUT[1]~feeder_combout\);

-- Location: FF_X9_Y11_N11
\r1|TESTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|TESTOUT[1]~feeder_combout\,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(1));

-- Location: LCCOMB_X9_Y11_N12
\t1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Mux0~0_combout\ = (\t1|n\(1) & ((\t1|n\(0) & (\r1|TESTOUT\(0))) # (!\t1|n\(0) & ((\r1|TESTOUT\(1)))))) # (!\t1|n\(1) & (!\t1|n\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(1),
	datab => \t1|n\(0),
	datac => \r1|TESTOUT\(0),
	datad => \r1|TESTOUT\(1),
	combout => \t1|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y11_N26
\t1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Mux0~1_combout\ = (\t1|n\(1) & (((\t1|Mux0~0_combout\)))) # (!\t1|n\(1) & ((\t1|Mux0~0_combout\ & ((\r1|TESTOUT\(3)))) # (!\t1|Mux0~0_combout\ & (\r1|TESTOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(1),
	datab => \r1|TESTOUT\(2),
	datac => \r1|TESTOUT\(3),
	datad => \t1|Mux0~0_combout\,
	combout => \t1|Mux0~1_combout\);

-- Location: LCCOMB_X8_Y11_N6
\r1|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~8_combout\ = (\r1|n\(0) & (\r1|n\(1) & (\r1|n\(2) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(0),
	datab => \r1|n\(1),
	datac => \r1|n\(2),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~8_combout\);

-- Location: LCCOMB_X8_Y11_N14
\r1|charnR[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|charnR[0]~7_combout\ = (\r1|Decoder0~8_combout\ & (!\RX~input_o\)) # (!\r1|Decoder0~8_combout\ & ((\r1|charnR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datac => \r1|charnR\(0),
	datad => \r1|Decoder0~8_combout\,
	combout => \r1|charnR[0]~7_combout\);

-- Location: FF_X8_Y11_N15
\r1|charnR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|charnR[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|charnR\(0));

-- Location: LCCOMB_X9_Y11_N22
\r1|TESTOUT[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|TESTOUT[7]~3_combout\ = !\r1|charnR\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r1|charnR\(0),
	combout => \r1|TESTOUT[7]~3_combout\);

-- Location: FF_X9_Y11_N23
\r1|TESTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|TESTOUT[7]~3_combout\,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(7));

-- Location: LCCOMB_X8_Y11_N20
\r1|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~5_combout\ = (\r1|n\(0) & (!\r1|n\(1) & (\r1|n\(2) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(0),
	datab => \r1|n\(1),
	datac => \r1|n\(2),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~5_combout\);

-- Location: LCCOMB_X8_Y11_N4
\r1|charnR[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|charnR[2]~4_combout\ = (\r1|Decoder0~5_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~5_combout\ & ((\r1|charnR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datac => \r1|charnR\(2),
	datad => \r1|Decoder0~5_combout\,
	combout => \r1|charnR[2]~4_combout\);

-- Location: FF_X8_Y11_N5
\r1|charnR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|charnR[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|charnR\(2));

-- Location: FF_X9_Y11_N29
\r1|TESTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|charnR\(2),
	sload => VCC,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(5));

-- Location: LCCOMB_X8_Y11_N0
\r1|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~7_combout\ = (!\r1|n\(0) & (!\r1|n\(1) & (\r1|n\(2) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(0),
	datab => \r1|n\(1),
	datac => \r1|n\(2),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~7_combout\);

-- Location: LCCOMB_X8_Y11_N8
\r1|charnR[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|charnR[3]~6_combout\ = (\r1|Decoder0~7_combout\ & (!\RX~input_o\)) # (!\r1|Decoder0~7_combout\ & ((\r1|charnR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datac => \r1|charnR\(3),
	datad => \r1|Decoder0~7_combout\,
	combout => \r1|charnR[3]~6_combout\);

-- Location: FF_X8_Y11_N9
\r1|charnR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|charnR[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|charnR\(3));

-- Location: LCCOMB_X9_Y11_N4
\r1|TESTOUT[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|TESTOUT[4]~2_combout\ = !\r1|charnR\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r1|charnR\(3),
	combout => \r1|TESTOUT[4]~2_combout\);

-- Location: FF_X9_Y11_N17
\r1|TESTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \r1|TESTOUT[4]~2_combout\,
	sload => VCC,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(4));

-- Location: LCCOMB_X8_Y11_N18
\r1|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~6_combout\ = (!\r1|n\(0) & (\r1|n\(1) & (\r1|n\(2) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|n\(0),
	datab => \r1|n\(1),
	datac => \r1|n\(2),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~6_combout\);

-- Location: LCCOMB_X8_Y11_N22
\r1|charnR[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|charnR[1]~5_combout\ = (\r1|Decoder0~6_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~6_combout\ & ((\r1|charnR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datac => \r1|charnR\(1),
	datad => \r1|Decoder0~6_combout\,
	combout => \r1|charnR[1]~5_combout\);

-- Location: FF_X8_Y11_N23
\r1|charnR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|charnR[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|charnR\(1));

-- Location: LCCOMB_X9_Y11_N2
\r1|TESTOUT[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|TESTOUT[6]~feeder_combout\ = \r1|charnR\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r1|charnR\(1),
	combout => \r1|TESTOUT[6]~feeder_combout\);

-- Location: FF_X9_Y11_N3
\r1|TESTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \r1|TESTOUT[6]~feeder_combout\,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(6));

-- Location: LCCOMB_X9_Y11_N16
\t1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Mux0~2_combout\ = (\t1|n\(1) & (\t1|n\(0) & (\r1|TESTOUT\(4)))) # (!\t1|n\(1) & (((\r1|TESTOUT\(6))) # (!\t1|n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(1),
	datab => \t1|n\(0),
	datac => \r1|TESTOUT\(4),
	datad => \r1|TESTOUT\(6),
	combout => \t1|Mux0~2_combout\);

-- Location: LCCOMB_X9_Y11_N28
\t1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Mux0~3_combout\ = (\t1|n\(0) & (((\t1|Mux0~2_combout\)))) # (!\t1|n\(0) & ((\t1|Mux0~2_combout\ & (\r1|TESTOUT\(7))) # (!\t1|Mux0~2_combout\ & ((\r1|TESTOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|TESTOUT\(7),
	datab => \t1|n\(0),
	datac => \r1|TESTOUT\(5),
	datad => \t1|Mux0~2_combout\,
	combout => \t1|Mux0~3_combout\);

-- Location: LCCOMB_X9_Y11_N0
\t1|TX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|TX~1_combout\ = (\t1|TXState.TXING~q\ & ((\t1|n\(2) & (\t1|Mux0~1_combout\)) # (!\t1|n\(2) & ((\t1|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(2),
	datab => \t1|TXState.TXING~q\,
	datac => \t1|Mux0~1_combout\,
	datad => \t1|Mux0~3_combout\,
	combout => \t1|TX~1_combout\);

-- Location: LCCOMB_X9_Y11_N20
\t1|TX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|TX~2_combout\ = (!\t1|TX~0_combout\ & (((!\t1|TXState.TXE~q\ & !\t1|TX~1_combout\)) # (!\RESet~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESet~input_o\,
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TX~0_combout\,
	datad => \t1|TX~1_combout\,
	combout => \t1|TX~2_combout\);

-- Location: FF_X9_Y11_N21
\t1|TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|TX~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|TX~q\);

ww_TX <= \TX~output_o\;

ww_text1(7) <= \text1[7]~output_o\;

ww_text1(6) <= \text1[6]~output_o\;

ww_text1(5) <= \text1[5]~output_o\;

ww_text1(4) <= \text1[4]~output_o\;

ww_text1(3) <= \text1[3]~output_o\;

ww_text1(2) <= \text1[2]~output_o\;

ww_text1(1) <= \text1[1]~output_o\;

ww_text1(0) <= \text1[0]~output_o\;
END structure;


