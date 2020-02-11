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

-- DATE "02/11/2020 22:52:58"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
-- text1[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[6]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESet	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOckIn	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \r1|f1|temp2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \t1|f1|Add0~11\ : std_logic;
SIGNAL \t1|f1|Add0~12_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~5_combout\ : std_logic;
SIGNAL \t1|f1|Add0~41\ : std_logic;
SIGNAL \t1|f1|Add0~42_combout\ : std_logic;
SIGNAL \t1|f1|Add0~43\ : std_logic;
SIGNAL \t1|f1|Add0~44_combout\ : std_logic;
SIGNAL \t1|f1|Add0~45\ : std_logic;
SIGNAL \t1|f1|Add0~46_combout\ : std_logic;
SIGNAL \t1|f1|Add0~47\ : std_logic;
SIGNAL \t1|f1|Add0~48_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~7_combout\ : std_logic;
SIGNAL \t1|f1|i~4_combout\ : std_logic;
SIGNAL \t1|f1|Add0~13\ : std_logic;
SIGNAL \t1|f1|Add0~14_combout\ : std_logic;
SIGNAL \t1|f1|i~5_combout\ : std_logic;
SIGNAL \t1|f1|Add0~15\ : std_logic;
SIGNAL \t1|f1|Add0~16_combout\ : std_logic;
SIGNAL \t1|f1|Add0~17\ : std_logic;
SIGNAL \t1|f1|Add0~18_combout\ : std_logic;
SIGNAL \t1|f1|Add0~19\ : std_logic;
SIGNAL \t1|f1|Add0~20_combout\ : std_logic;
SIGNAL \t1|f1|Add0~21\ : std_logic;
SIGNAL \t1|f1|Add0~22_combout\ : std_logic;
SIGNAL \t1|f1|Add0~23\ : std_logic;
SIGNAL \t1|f1|Add0~24_combout\ : std_logic;
SIGNAL \t1|f1|Add0~25\ : std_logic;
SIGNAL \t1|f1|Add0~26_combout\ : std_logic;
SIGNAL \t1|f1|Add0~27\ : std_logic;
SIGNAL \t1|f1|Add0~28_combout\ : std_logic;
SIGNAL \t1|f1|Add0~29\ : std_logic;
SIGNAL \t1|f1|Add0~30_combout\ : std_logic;
SIGNAL \t1|f1|Add0~31\ : std_logic;
SIGNAL \t1|f1|Add0~32_combout\ : std_logic;
SIGNAL \t1|f1|Add0~33\ : std_logic;
SIGNAL \t1|f1|Add0~34_combout\ : std_logic;
SIGNAL \t1|f1|Add0~35\ : std_logic;
SIGNAL \t1|f1|Add0~36_combout\ : std_logic;
SIGNAL \t1|f1|Add0~37\ : std_logic;
SIGNAL \t1|f1|Add0~38_combout\ : std_logic;
SIGNAL \t1|f1|Add0~39\ : std_logic;
SIGNAL \t1|f1|Add0~40_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~6_combout\ : std_logic;
SIGNAL \t1|f1|Add0~0_combout\ : std_logic;
SIGNAL \t1|f1|i~0_combout\ : std_logic;
SIGNAL \t1|f1|Add0~1\ : std_logic;
SIGNAL \t1|f1|Add0~2_combout\ : std_logic;
SIGNAL \t1|f1|Add0~3\ : std_logic;
SIGNAL \t1|f1|Add0~4_combout\ : std_logic;
SIGNAL \t1|f1|Add0~5\ : std_logic;
SIGNAL \t1|f1|Add0~6_combout\ : std_logic;
SIGNAL \t1|f1|i~1_combout\ : std_logic;
SIGNAL \t1|f1|i~2_combout\ : std_logic;
SIGNAL \t1|f1|Add0~7\ : std_logic;
SIGNAL \t1|f1|Add0~8_combout\ : std_logic;
SIGNAL \t1|f1|i~3_combout\ : std_logic;
SIGNAL \t1|f1|Add0~9\ : std_logic;
SIGNAL \t1|f1|Add0~10_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~1_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~0_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~2_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~3_combout\ : std_logic;
SIGNAL \t1|f1|Equal0~4_combout\ : std_logic;
SIGNAL \t1|f1|temp~0_combout\ : std_logic;
SIGNAL \t1|f1|temp~feeder_combout\ : std_logic;
SIGNAL \t1|f1|temp~q\ : std_logic;
SIGNAL \t1|f1|temp~clkctrl_outclk\ : std_logic;
SIGNAL \RESet~input_o\ : std_logic;
SIGNAL \t1|f1|Add1~0_combout\ : std_logic;
SIGNAL \t1|f1|Add1~1\ : std_logic;
SIGNAL \t1|f1|Add1~2_combout\ : std_logic;
SIGNAL \t1|f1|Add1~3\ : std_logic;
SIGNAL \t1|f1|Add1~4_combout\ : std_logic;
SIGNAL \t1|f1|Add1~5\ : std_logic;
SIGNAL \t1|f1|Add1~6_combout\ : std_logic;
SIGNAL \t1|f1|Equal1~1_combout\ : std_logic;
SIGNAL \t1|f1|Equal1~0_combout\ : std_logic;
SIGNAL \t1|f1|Equal1~2_combout\ : std_logic;
SIGNAL \t1|f1|Equal1~3_combout\ : std_logic;
SIGNAL \t1|f1|Equal1~4_combout\ : std_logic;
SIGNAL \t1|f1|Add1~35\ : std_logic;
SIGNAL \t1|f1|Add1~36_combout\ : std_logic;
SIGNAL \t1|f1|Add1~37\ : std_logic;
SIGNAL \t1|f1|Add1~38_combout\ : std_logic;
SIGNAL \t1|f1|Add1~39\ : std_logic;
SIGNAL \t1|f1|Add1~40_combout\ : std_logic;
SIGNAL \t1|f1|Add1~41\ : std_logic;
SIGNAL \t1|f1|Add1~42_combout\ : std_logic;
SIGNAL \t1|f1|Add1~43\ : std_logic;
SIGNAL \t1|f1|Add1~44_combout\ : std_logic;
SIGNAL \t1|f1|Add1~45\ : std_logic;
SIGNAL \t1|f1|Add1~46_combout\ : std_logic;
SIGNAL \t1|f1|Add1~47\ : std_logic;
SIGNAL \t1|f1|Add1~48_combout\ : std_logic;
SIGNAL \t1|f1|Equal1~6_combout\ : std_logic;
SIGNAL \t1|f1|Equal1~7_combout\ : std_logic;
SIGNAL \t1|f1|j~0_combout\ : std_logic;
SIGNAL \t1|f1|Add1~7\ : std_logic;
SIGNAL \t1|f1|Add1~8_combout\ : std_logic;
SIGNAL \t1|f1|j~1_combout\ : std_logic;
SIGNAL \t1|f1|Add1~9\ : std_logic;
SIGNAL \t1|f1|Add1~10_combout\ : std_logic;
SIGNAL \t1|f1|Add1~11\ : std_logic;
SIGNAL \t1|f1|Add1~12_combout\ : std_logic;
SIGNAL \t1|f1|j~2_combout\ : std_logic;
SIGNAL \t1|f1|j~3_combout\ : std_logic;
SIGNAL \t1|f1|Add1~13\ : std_logic;
SIGNAL \t1|f1|Add1~14_combout\ : std_logic;
SIGNAL \t1|f1|Add1~15\ : std_logic;
SIGNAL \t1|f1|Add1~16_combout\ : std_logic;
SIGNAL \t1|f1|Add1~17\ : std_logic;
SIGNAL \t1|f1|Add1~18_combout\ : std_logic;
SIGNAL \t1|f1|Add1~19\ : std_logic;
SIGNAL \t1|f1|Add1~20_combout\ : std_logic;
SIGNAL \t1|f1|j~4_combout\ : std_logic;
SIGNAL \t1|f1|Add1~21\ : std_logic;
SIGNAL \t1|f1|Add1~22_combout\ : std_logic;
SIGNAL \t1|f1|Add1~23\ : std_logic;
SIGNAL \t1|f1|Add1~24_combout\ : std_logic;
SIGNAL \t1|f1|j~5_combout\ : std_logic;
SIGNAL \t1|f1|Add1~25\ : std_logic;
SIGNAL \t1|f1|Add1~26_combout\ : std_logic;
SIGNAL \t1|f1|Add1~27\ : std_logic;
SIGNAL \t1|f1|Add1~28_combout\ : std_logic;
SIGNAL \t1|f1|Add1~29\ : std_logic;
SIGNAL \t1|f1|Add1~30_combout\ : std_logic;
SIGNAL \t1|f1|Add1~31\ : std_logic;
SIGNAL \t1|f1|Add1~32_combout\ : std_logic;
SIGNAL \t1|f1|Add1~33\ : std_logic;
SIGNAL \t1|f1|Add1~34_combout\ : std_logic;
SIGNAL \t1|f1|Equal1~5_combout\ : std_logic;
SIGNAL \t1|f1|temp1~0_combout\ : std_logic;
SIGNAL \t1|f1|temp1~feeder_combout\ : std_logic;
SIGNAL \t1|f1|temp1~q\ : std_logic;
SIGNAL \t1|ReSend~0_combout\ : std_logic;
SIGNAL \t1|ReSend~q\ : std_logic;
SIGNAL \t1|process_0~0_combout\ : std_logic;
SIGNAL \t1|Add0~0_combout\ : std_logic;
SIGNAL \t1|Selector36~0_combout\ : std_logic;
SIGNAL \t1|Add0~1\ : std_logic;
SIGNAL \t1|Add0~2_combout\ : std_logic;
SIGNAL \t1|Selector35~0_combout\ : std_logic;
SIGNAL \t1|Add0~3\ : std_logic;
SIGNAL \t1|Add0~4_combout\ : std_logic;
SIGNAL \t1|Selector34~0_combout\ : std_logic;
SIGNAL \t1|Add0~5\ : std_logic;
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
SIGNAL \t1|Equal0~2_combout\ : std_logic;
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
SIGNAL \t1|Equal0~3_combout\ : std_logic;
SIGNAL \t1|Equal0~1_combout\ : std_logic;
SIGNAL \t1|Equal0~4_combout\ : std_logic;
SIGNAL \t1|Equal0~5_combout\ : std_logic;
SIGNAL \t1|Equal0~6_combout\ : std_logic;
SIGNAL \t1|Equal0~7_combout\ : std_logic;
SIGNAL \t1|Equal0~8_combout\ : std_logic;
SIGNAL \t1|Equal0~9_combout\ : std_logic;
SIGNAL \t1|Selector1~0_combout\ : std_logic;
SIGNAL \t1|TXState.TXR~q\ : std_logic;
SIGNAL \t1|Selector2~3_combout\ : std_logic;
SIGNAL \t1|TXState.TXING~q\ : std_logic;
SIGNAL \t1|Selector5~0_combout\ : std_logic;
SIGNAL \t1|Add0~61\ : std_logic;
SIGNAL \t1|Add0~62_combout\ : std_logic;
SIGNAL \t1|Selector2~0_combout\ : std_logic;
SIGNAL \t1|Selector2~1_combout\ : std_logic;
SIGNAL \t1|Selector3~5_combout\ : std_logic;
SIGNAL \t1|Selector3~6_combout\ : std_logic;
SIGNAL \t1|Selector3~7_combout\ : std_logic;
SIGNAL \t1|Selector3~8_combout\ : std_logic;
SIGNAL \t1|Selector3~9_combout\ : std_logic;
SIGNAL \t1|Selector2~2_combout\ : std_logic;
SIGNAL \t1|TXState.IDLE~0_combout\ : std_logic;
SIGNAL \t1|TXState.IDLE~q\ : std_logic;
SIGNAL \t1|n~0_combout\ : std_logic;
SIGNAL \t1|Selector33~0_combout\ : std_logic;
SIGNAL \t1|Add0~6_combout\ : std_logic;
SIGNAL \t1|Selector3~0_combout\ : std_logic;
SIGNAL \t1|Selector3~3_combout\ : std_logic;
SIGNAL \t1|Selector3~1_combout\ : std_logic;
SIGNAL \t1|Selector3~2_combout\ : std_logic;
SIGNAL \t1|Selector3~4_combout\ : std_logic;
SIGNAL \t1|Selector3~10_combout\ : std_logic;
SIGNAL \t1|TXState.TXE~q\ : std_logic;
SIGNAL \t1|TX~0_combout\ : std_logic;
SIGNAL \r1|f1|Add2~0_combout\ : std_logic;
SIGNAL \r1|f1|Equal2~0_combout\ : std_logic;
SIGNAL \r1|f1|Equal2~1_combout\ : std_logic;
SIGNAL \r1|f1|Equal2~2_combout\ : std_logic;
SIGNAL \r1|f1|Equal2~3_combout\ : std_logic;
SIGNAL \r1|f1|Equal2~4_combout\ : std_logic;
SIGNAL \r1|f1|Add2~35\ : std_logic;
SIGNAL \r1|f1|Add2~36_combout\ : std_logic;
SIGNAL \r1|f1|Add2~37\ : std_logic;
SIGNAL \r1|f1|Add2~38_combout\ : std_logic;
SIGNAL \r1|f1|Add2~39\ : std_logic;
SIGNAL \r1|f1|Add2~40_combout\ : std_logic;
SIGNAL \r1|f1|Add2~41\ : std_logic;
SIGNAL \r1|f1|Add2~42_combout\ : std_logic;
SIGNAL \r1|f1|Add2~43\ : std_logic;
SIGNAL \r1|f1|Add2~44_combout\ : std_logic;
SIGNAL \r1|f1|Add2~45\ : std_logic;
SIGNAL \r1|f1|Add2~46_combout\ : std_logic;
SIGNAL \r1|f1|Add2~47\ : std_logic;
SIGNAL \r1|f1|Add2~48_combout\ : std_logic;
SIGNAL \r1|f1|Equal2~6_combout\ : std_logic;
SIGNAL \r1|f1|Equal2~7_combout\ : std_logic;
SIGNAL \r1|f1|K~0_combout\ : std_logic;
SIGNAL \r1|f1|Add2~1\ : std_logic;
SIGNAL \r1|f1|Add2~2_combout\ : std_logic;
SIGNAL \r1|f1|Add2~3\ : std_logic;
SIGNAL \r1|f1|Add2~4_combout\ : std_logic;
SIGNAL \r1|f1|K~1_combout\ : std_logic;
SIGNAL \r1|f1|K~2_combout\ : std_logic;
SIGNAL \r1|f1|Add2~5\ : std_logic;
SIGNAL \r1|f1|Add2~6_combout\ : std_logic;
SIGNAL \r1|f1|K~3_combout\ : std_logic;
SIGNAL \r1|f1|Add2~7\ : std_logic;
SIGNAL \r1|f1|Add2~8_combout\ : std_logic;
SIGNAL \r1|f1|Add2~9\ : std_logic;
SIGNAL \r1|f1|Add2~10_combout\ : std_logic;
SIGNAL \r1|f1|Add2~11\ : std_logic;
SIGNAL \r1|f1|Add2~12_combout\ : std_logic;
SIGNAL \r1|f1|Add2~13\ : std_logic;
SIGNAL \r1|f1|Add2~14_combout\ : std_logic;
SIGNAL \r1|f1|Add2~15\ : std_logic;
SIGNAL \r1|f1|Add2~16_combout\ : std_logic;
SIGNAL \r1|f1|Add2~17\ : std_logic;
SIGNAL \r1|f1|Add2~18_combout\ : std_logic;
SIGNAL \r1|f1|Add2~19\ : std_logic;
SIGNAL \r1|f1|Add2~20_combout\ : std_logic;
SIGNAL \r1|f1|Add2~21\ : std_logic;
SIGNAL \r1|f1|Add2~22_combout\ : std_logic;
SIGNAL \r1|f1|Add2~23\ : std_logic;
SIGNAL \r1|f1|Add2~24_combout\ : std_logic;
SIGNAL \r1|f1|Add2~25\ : std_logic;
SIGNAL \r1|f1|Add2~26_combout\ : std_logic;
SIGNAL \r1|f1|Add2~27\ : std_logic;
SIGNAL \r1|f1|Add2~28_combout\ : std_logic;
SIGNAL \r1|f1|Add2~29\ : std_logic;
SIGNAL \r1|f1|Add2~30_combout\ : std_logic;
SIGNAL \r1|f1|Add2~31\ : std_logic;
SIGNAL \r1|f1|Add2~32_combout\ : std_logic;
SIGNAL \r1|f1|Add2~33\ : std_logic;
SIGNAL \r1|f1|Add2~34_combout\ : std_logic;
SIGNAL \r1|f1|Equal2~5_combout\ : std_logic;
SIGNAL \r1|f1|temp2~0_combout\ : std_logic;
SIGNAL \r1|f1|temp2~feeder_combout\ : std_logic;
SIGNAL \r1|f1|temp2~q\ : std_logic;
SIGNAL \r1|f1|temp2~clkctrl_outclk\ : std_logic;
SIGNAL \RX~input_o\ : std_logic;
SIGNAL \r1|rcnt[0]~32_combout\ : std_logic;
SIGNAL \r1|Add0~0_combout\ : std_logic;
SIGNAL \r1|Selector36~0_combout\ : std_logic;
SIGNAL \RESet~inputclkctrl_outclk\ : std_logic;
SIGNAL \r1|rcnt[2]~38\ : std_logic;
SIGNAL \r1|rcnt[3]~39_combout\ : std_logic;
SIGNAL \r1|rcnt[31]~34_combout\ : std_logic;
SIGNAL \r1|rcnt[3]~40\ : std_logic;
SIGNAL \r1|rcnt[4]~41_combout\ : std_logic;
SIGNAL \r1|rcnt[4]~42\ : std_logic;
SIGNAL \r1|rcnt[5]~43_combout\ : std_logic;
SIGNAL \r1|rcnt[5]~44\ : std_logic;
SIGNAL \r1|rcnt[6]~45_combout\ : std_logic;
SIGNAL \r1|rcnt[6]~46\ : std_logic;
SIGNAL \r1|rcnt[7]~47_combout\ : std_logic;
SIGNAL \r1|rcnt[7]~48\ : std_logic;
SIGNAL \r1|rcnt[8]~49_combout\ : std_logic;
SIGNAL \r1|rcnt[8]~50\ : std_logic;
SIGNAL \r1|rcnt[9]~51_combout\ : std_logic;
SIGNAL \r1|rcnt[9]~52\ : std_logic;
SIGNAL \r1|rcnt[10]~53_combout\ : std_logic;
SIGNAL \r1|rcnt[10]~54\ : std_logic;
SIGNAL \r1|rcnt[11]~55_combout\ : std_logic;
SIGNAL \r1|rcnt[11]~56\ : std_logic;
SIGNAL \r1|rcnt[12]~57_combout\ : std_logic;
SIGNAL \r1|rcnt[12]~58\ : std_logic;
SIGNAL \r1|rcnt[13]~59_combout\ : std_logic;
SIGNAL \r1|rcnt[13]~60\ : std_logic;
SIGNAL \r1|rcnt[14]~61_combout\ : std_logic;
SIGNAL \r1|rcnt[14]~62\ : std_logic;
SIGNAL \r1|rcnt[15]~63_combout\ : std_logic;
SIGNAL \r1|rcnt[15]~64\ : std_logic;
SIGNAL \r1|rcnt[16]~65_combout\ : std_logic;
SIGNAL \r1|rcnt[16]~66\ : std_logic;
SIGNAL \r1|rcnt[17]~67_combout\ : std_logic;
SIGNAL \r1|rcnt[17]~68\ : std_logic;
SIGNAL \r1|rcnt[18]~69_combout\ : std_logic;
SIGNAL \r1|rcnt[18]~70\ : std_logic;
SIGNAL \r1|rcnt[19]~71_combout\ : std_logic;
SIGNAL \r1|rcnt[19]~72\ : std_logic;
SIGNAL \r1|rcnt[20]~73_combout\ : std_logic;
SIGNAL \r1|rcnt[20]~74\ : std_logic;
SIGNAL \r1|rcnt[21]~75_combout\ : std_logic;
SIGNAL \r1|rcnt[21]~76\ : std_logic;
SIGNAL \r1|rcnt[22]~77_combout\ : std_logic;
SIGNAL \r1|rcnt[22]~78\ : std_logic;
SIGNAL \r1|rcnt[23]~79_combout\ : std_logic;
SIGNAL \r1|Equal1~6_combout\ : std_logic;
SIGNAL \r1|Equal1~5_combout\ : std_logic;
SIGNAL \r1|rcnt[23]~80\ : std_logic;
SIGNAL \r1|rcnt[24]~81_combout\ : std_logic;
SIGNAL \r1|rcnt[24]~82\ : std_logic;
SIGNAL \r1|rcnt[25]~83_combout\ : std_logic;
SIGNAL \r1|rcnt[25]~84\ : std_logic;
SIGNAL \r1|rcnt[26]~85_combout\ : std_logic;
SIGNAL \r1|rcnt[26]~86\ : std_logic;
SIGNAL \r1|rcnt[27]~87_combout\ : std_logic;
SIGNAL \r1|rcnt[27]~88\ : std_logic;
SIGNAL \r1|rcnt[28]~89_combout\ : std_logic;
SIGNAL \r1|rcnt[28]~90\ : std_logic;
SIGNAL \r1|rcnt[29]~91_combout\ : std_logic;
SIGNAL \r1|rcnt[29]~92\ : std_logic;
SIGNAL \r1|rcnt[30]~93_combout\ : std_logic;
SIGNAL \r1|rcnt[30]~94\ : std_logic;
SIGNAL \r1|rcnt[31]~95_combout\ : std_logic;
SIGNAL \r1|Equal1~8_combout\ : std_logic;
SIGNAL \r1|Equal1~7_combout\ : std_logic;
SIGNAL \r1|Equal1~9_combout\ : std_logic;
SIGNAL \r1|Equal1~1_combout\ : std_logic;
SIGNAL \r1|Equal1~2_combout\ : std_logic;
SIGNAL \r1|Equal1~0_combout\ : std_logic;
SIGNAL \r1|Equal1~3_combout\ : std_logic;
SIGNAL \r1|Equal1~4_combout\ : std_logic;
SIGNAL \r1|Equal1~10_combout\ : std_logic;
SIGNAL \r1|state~13_combout\ : std_logic;
SIGNAL \r1|state.r_stop~q\ : std_logic;
SIGNAL \r1|Selector0~0_combout\ : std_logic;
SIGNAL \r1|state.r_start~q\ : std_logic;
SIGNAL \r1|Selector1~0_combout\ : std_logic;
SIGNAL \r1|state.r_center~q\ : std_logic;
SIGNAL \r1|count[1]~0_combout\ : std_logic;
SIGNAL \r1|Equal0~0_combout\ : std_logic;
SIGNAL \r1|Selector39~0_combout\ : std_logic;
SIGNAL \r1|count[1]~1_combout\ : std_logic;
SIGNAL \r1|Selector38~0_combout\ : std_logic;
SIGNAL \r1|Selector37~0_combout\ : std_logic;
SIGNAL \r1|Selector2~0_combout\ : std_logic;
SIGNAL \r1|Selector2~1_combout\ : std_logic;
SIGNAL \r1|Selector2~2_combout\ : std_logic;
SIGNAL \r1|state.r_wait~q\ : std_logic;
SIGNAL \r1|state~14_combout\ : std_logic;
SIGNAL \r1|state.r_sample~q\ : std_logic;
SIGNAL \r1|rcnt[0]~33\ : std_logic;
SIGNAL \r1|rcnt[1]~35_combout\ : std_logic;
SIGNAL \r1|rcnt[1]~36\ : std_logic;
SIGNAL \r1|rcnt[2]~37_combout\ : std_logic;
SIGNAL \r1|Decoder0~0_combout\ : std_logic;
SIGNAL \r1|Decoder0~1_combout\ : std_logic;
SIGNAL \r1|rbufs[2]~0_combout\ : std_logic;
SIGNAL \r1|TESTOUT[7]~0_combout\ : std_logic;
SIGNAL \r1|Decoder0~4_combout\ : std_logic;
SIGNAL \r1|rbufs[3]~3_combout\ : std_logic;
SIGNAL \r1|Decoder0~3_combout\ : std_logic;
SIGNAL \r1|rbufs[0]~2_combout\ : std_logic;
SIGNAL \r1|Decoder0~2_combout\ : std_logic;
SIGNAL \r1|rbufs[1]~1_combout\ : std_logic;
SIGNAL \r1|TESTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \t1|Mux0~0_combout\ : std_logic;
SIGNAL \t1|Mux0~1_combout\ : std_logic;
SIGNAL \r1|Decoder0~5_combout\ : std_logic;
SIGNAL \r1|rbufs[5]~4_combout\ : std_logic;
SIGNAL \r1|TESTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \r1|Decoder0~8_combout\ : std_logic;
SIGNAL \r1|rbufs[7]~7_combout\ : std_logic;
SIGNAL \r1|Decoder0~7_combout\ : std_logic;
SIGNAL \r1|rbufs[4]~6_combout\ : std_logic;
SIGNAL \r1|Decoder0~6_combout\ : std_logic;
SIGNAL \r1|rbufs[6]~5_combout\ : std_logic;
SIGNAL \r1|TESTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \t1|Mux0~2_combout\ : std_logic;
SIGNAL \t1|Mux0~3_combout\ : std_logic;
SIGNAL \t1|TX~1_combout\ : std_logic;
SIGNAL \t1|TX~2_combout\ : std_logic;
SIGNAL \t1|TX~q\ : std_logic;
SIGNAL \r1|f1|K\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \r1|rcnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \t1|f1|j\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \r1|TESTOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \t1|f1|i\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \t1|n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \r1|rbufs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r1|ALT_INV_state.r_sample~q\ : std_logic;
SIGNAL \t1|f1|ALT_INV_temp1~q\ : std_logic;
SIGNAL \t1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \t1|ALT_INV_TX~q\ : std_logic;
SIGNAL \t1|f1|ALT_INV_temp~clkctrl_outclk\ : std_logic;
SIGNAL \r1|f1|ALT_INV_temp2~clkctrl_outclk\ : std_logic;

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

\r1|f1|temp2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \r1|f1|temp2~q\);

\t1|f1|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \t1|f1|temp~q\);

\CLOckIn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOckIn~input_o\);

\RESet~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESet~input_o\);
\r1|ALT_INV_state.r_sample~q\ <= NOT \r1|state.r_sample~q\;
\t1|f1|ALT_INV_temp1~q\ <= NOT \t1|f1|temp1~q\;
\t1|ALT_INV_process_0~0_combout\ <= NOT \t1|process_0~0_combout\;
\t1|ALT_INV_TX~q\ <= NOT \t1|TX~q\;
\t1|f1|ALT_INV_temp~clkctrl_outclk\ <= NOT \t1|f1|temp~clkctrl_outclk\;
\r1|f1|ALT_INV_temp2~clkctrl_outclk\ <= NOT \r1|f1|temp2~clkctrl_outclk\;
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

-- Location: IOOBUF_X21_Y24_N9
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

-- Location: IOOBUF_X3_Y24_N2
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

-- Location: IOOBUF_X32_Y24_N23
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

-- Location: IOOBUF_X9_Y24_N23
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X11_Y24_N2
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

-- Location: IOOBUF_X34_Y8_N16
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

-- Location: FF_X2_Y11_N19
\t1|f1|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(5));

-- Location: FF_X2_Y10_N17
\t1|f1|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(20));

-- Location: LCCOMB_X2_Y11_N18
\t1|f1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~10_combout\ = (\t1|f1|i\(5) & (!\t1|f1|Add0~9\)) # (!\t1|f1|i\(5) & ((\t1|f1|Add0~9\) # (GND)))
-- \t1|f1|Add0~11\ = CARRY((!\t1|f1|Add0~9\) # (!\t1|f1|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|i\(5),
	datad => VCC,
	cin => \t1|f1|Add0~9\,
	combout => \t1|f1|Add0~10_combout\,
	cout => \t1|f1|Add0~11\);

-- Location: LCCOMB_X2_Y11_N20
\t1|f1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~12_combout\ = (\t1|f1|i\(6) & (\t1|f1|Add0~11\ $ (GND))) # (!\t1|f1|i\(6) & (!\t1|f1|Add0~11\ & VCC))
-- \t1|f1|Add0~13\ = CARRY((\t1|f1|i\(6) & !\t1|f1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(6),
	datad => VCC,
	cin => \t1|f1|Add0~11\,
	combout => \t1|f1|Add0~12_combout\,
	cout => \t1|f1|Add0~13\);

-- Location: LCCOMB_X2_Y10_N30
\t1|f1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~5_combout\ = (!\t1|f1|Add0~36_combout\ & (!\t1|f1|Add0~32_combout\ & (!\t1|f1|Add0~38_combout\ & !\t1|f1|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~36_combout\,
	datab => \t1|f1|Add0~32_combout\,
	datac => \t1|f1|Add0~38_combout\,
	datad => \t1|f1|Add0~34_combout\,
	combout => \t1|f1|Equal0~5_combout\);

-- Location: FF_X2_Y10_N25
\t1|f1|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(24));

-- Location: LCCOMB_X2_Y10_N16
\t1|f1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~40_combout\ = (\t1|f1|i\(20) & (\t1|f1|Add0~39\ $ (GND))) # (!\t1|f1|i\(20) & (!\t1|f1|Add0~39\ & VCC))
-- \t1|f1|Add0~41\ = CARRY((\t1|f1|i\(20) & !\t1|f1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(20),
	datad => VCC,
	cin => \t1|f1|Add0~39\,
	combout => \t1|f1|Add0~40_combout\,
	cout => \t1|f1|Add0~41\);

-- Location: LCCOMB_X2_Y10_N18
\t1|f1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~42_combout\ = (\t1|f1|i\(21) & (!\t1|f1|Add0~41\)) # (!\t1|f1|i\(21) & ((\t1|f1|Add0~41\) # (GND)))
-- \t1|f1|Add0~43\ = CARRY((!\t1|f1|Add0~41\) # (!\t1|f1|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(21),
	datad => VCC,
	cin => \t1|f1|Add0~41\,
	combout => \t1|f1|Add0~42_combout\,
	cout => \t1|f1|Add0~43\);

-- Location: FF_X2_Y10_N19
\t1|f1|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(21));

-- Location: LCCOMB_X2_Y10_N20
\t1|f1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~44_combout\ = (\t1|f1|i\(22) & (\t1|f1|Add0~43\ $ (GND))) # (!\t1|f1|i\(22) & (!\t1|f1|Add0~43\ & VCC))
-- \t1|f1|Add0~45\ = CARRY((\t1|f1|i\(22) & !\t1|f1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|i\(22),
	datad => VCC,
	cin => \t1|f1|Add0~43\,
	combout => \t1|f1|Add0~44_combout\,
	cout => \t1|f1|Add0~45\);

-- Location: FF_X2_Y10_N21
\t1|f1|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(22));

-- Location: LCCOMB_X2_Y10_N22
\t1|f1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~46_combout\ = (\t1|f1|i\(23) & (!\t1|f1|Add0~45\)) # (!\t1|f1|i\(23) & ((\t1|f1|Add0~45\) # (GND)))
-- \t1|f1|Add0~47\ = CARRY((!\t1|f1|Add0~45\) # (!\t1|f1|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(23),
	datad => VCC,
	cin => \t1|f1|Add0~45\,
	combout => \t1|f1|Add0~46_combout\,
	cout => \t1|f1|Add0~47\);

-- Location: FF_X2_Y10_N23
\t1|f1|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(23));

-- Location: LCCOMB_X2_Y10_N24
\t1|f1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~48_combout\ = \t1|f1|i\(24) $ (!\t1|f1|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(24),
	cin => \t1|f1|Add0~47\,
	combout => \t1|f1|Add0~48_combout\);

-- Location: LCCOMB_X1_Y11_N10
\t1|f1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~7_combout\ = (!\t1|f1|Add0~48_combout\ & (!\t1|f1|Add0~44_combout\ & (!\t1|f1|Add0~46_combout\ & \t1|f1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~48_combout\,
	datab => \t1|f1|Add0~44_combout\,
	datac => \t1|f1|Add0~46_combout\,
	datad => \t1|f1|Equal0~6_combout\,
	combout => \t1|f1|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y11_N16
\t1|f1|i~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|i~4_combout\ = (\t1|f1|Add0~12_combout\ & (((!\t1|f1|Equal0~7_combout\) # (!\t1|f1|Equal0~5_combout\)) # (!\t1|f1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Equal0~4_combout\,
	datab => \t1|f1|Add0~12_combout\,
	datac => \t1|f1|Equal0~5_combout\,
	datad => \t1|f1|Equal0~7_combout\,
	combout => \t1|f1|i~4_combout\);

-- Location: FF_X1_Y11_N17
\t1|f1|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|i~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(6));

-- Location: LCCOMB_X2_Y11_N22
\t1|f1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~14_combout\ = (\t1|f1|i\(7) & (!\t1|f1|Add0~13\)) # (!\t1|f1|i\(7) & ((\t1|f1|Add0~13\) # (GND)))
-- \t1|f1|Add0~15\ = CARRY((!\t1|f1|Add0~13\) # (!\t1|f1|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(7),
	datad => VCC,
	cin => \t1|f1|Add0~13\,
	combout => \t1|f1|Add0~14_combout\,
	cout => \t1|f1|Add0~15\);

-- Location: LCCOMB_X1_Y11_N26
\t1|f1|i~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|i~5_combout\ = (\t1|f1|Add0~14_combout\ & (((!\t1|f1|Equal0~7_combout\) # (!\t1|f1|Equal0~5_combout\)) # (!\t1|f1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Equal0~4_combout\,
	datab => \t1|f1|Add0~14_combout\,
	datac => \t1|f1|Equal0~5_combout\,
	datad => \t1|f1|Equal0~7_combout\,
	combout => \t1|f1|i~5_combout\);

-- Location: FF_X1_Y11_N27
\t1|f1|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|i~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(7));

-- Location: LCCOMB_X2_Y11_N24
\t1|f1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~16_combout\ = (\t1|f1|i\(8) & (\t1|f1|Add0~15\ $ (GND))) # (!\t1|f1|i\(8) & (!\t1|f1|Add0~15\ & VCC))
-- \t1|f1|Add0~17\ = CARRY((\t1|f1|i\(8) & !\t1|f1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|i\(8),
	datad => VCC,
	cin => \t1|f1|Add0~15\,
	combout => \t1|f1|Add0~16_combout\,
	cout => \t1|f1|Add0~17\);

-- Location: FF_X2_Y11_N25
\t1|f1|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(8));

-- Location: LCCOMB_X2_Y11_N26
\t1|f1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~18_combout\ = (\t1|f1|i\(9) & (!\t1|f1|Add0~17\)) # (!\t1|f1|i\(9) & ((\t1|f1|Add0~17\) # (GND)))
-- \t1|f1|Add0~19\ = CARRY((!\t1|f1|Add0~17\) # (!\t1|f1|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(9),
	datad => VCC,
	cin => \t1|f1|Add0~17\,
	combout => \t1|f1|Add0~18_combout\,
	cout => \t1|f1|Add0~19\);

-- Location: FF_X2_Y11_N27
\t1|f1|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(9));

-- Location: LCCOMB_X2_Y11_N28
\t1|f1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~20_combout\ = (\t1|f1|i\(10) & (\t1|f1|Add0~19\ $ (GND))) # (!\t1|f1|i\(10) & (!\t1|f1|Add0~19\ & VCC))
-- \t1|f1|Add0~21\ = CARRY((\t1|f1|i\(10) & !\t1|f1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|i\(10),
	datad => VCC,
	cin => \t1|f1|Add0~19\,
	combout => \t1|f1|Add0~20_combout\,
	cout => \t1|f1|Add0~21\);

-- Location: FF_X2_Y11_N29
\t1|f1|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(10));

-- Location: LCCOMB_X2_Y11_N30
\t1|f1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~22_combout\ = (\t1|f1|i\(11) & (!\t1|f1|Add0~21\)) # (!\t1|f1|i\(11) & ((\t1|f1|Add0~21\) # (GND)))
-- \t1|f1|Add0~23\ = CARRY((!\t1|f1|Add0~21\) # (!\t1|f1|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(11),
	datad => VCC,
	cin => \t1|f1|Add0~21\,
	combout => \t1|f1|Add0~22_combout\,
	cout => \t1|f1|Add0~23\);

-- Location: FF_X2_Y11_N31
\t1|f1|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(11));

-- Location: LCCOMB_X2_Y10_N0
\t1|f1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~24_combout\ = (\t1|f1|i\(12) & (\t1|f1|Add0~23\ $ (GND))) # (!\t1|f1|i\(12) & (!\t1|f1|Add0~23\ & VCC))
-- \t1|f1|Add0~25\ = CARRY((\t1|f1|i\(12) & !\t1|f1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|i\(12),
	datad => VCC,
	cin => \t1|f1|Add0~23\,
	combout => \t1|f1|Add0~24_combout\,
	cout => \t1|f1|Add0~25\);

-- Location: FF_X2_Y10_N1
\t1|f1|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(12));

-- Location: LCCOMB_X2_Y10_N2
\t1|f1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~26_combout\ = (\t1|f1|i\(13) & (!\t1|f1|Add0~25\)) # (!\t1|f1|i\(13) & ((\t1|f1|Add0~25\) # (GND)))
-- \t1|f1|Add0~27\ = CARRY((!\t1|f1|Add0~25\) # (!\t1|f1|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|i\(13),
	datad => VCC,
	cin => \t1|f1|Add0~25\,
	combout => \t1|f1|Add0~26_combout\,
	cout => \t1|f1|Add0~27\);

-- Location: FF_X2_Y10_N3
\t1|f1|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(13));

-- Location: LCCOMB_X2_Y10_N4
\t1|f1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~28_combout\ = (\t1|f1|i\(14) & (\t1|f1|Add0~27\ $ (GND))) # (!\t1|f1|i\(14) & (!\t1|f1|Add0~27\ & VCC))
-- \t1|f1|Add0~29\ = CARRY((\t1|f1|i\(14) & !\t1|f1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|i\(14),
	datad => VCC,
	cin => \t1|f1|Add0~27\,
	combout => \t1|f1|Add0~28_combout\,
	cout => \t1|f1|Add0~29\);

-- Location: FF_X2_Y10_N5
\t1|f1|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(14));

-- Location: LCCOMB_X2_Y10_N6
\t1|f1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~30_combout\ = (\t1|f1|i\(15) & (!\t1|f1|Add0~29\)) # (!\t1|f1|i\(15) & ((\t1|f1|Add0~29\) # (GND)))
-- \t1|f1|Add0~31\ = CARRY((!\t1|f1|Add0~29\) # (!\t1|f1|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(15),
	datad => VCC,
	cin => \t1|f1|Add0~29\,
	combout => \t1|f1|Add0~30_combout\,
	cout => \t1|f1|Add0~31\);

-- Location: FF_X2_Y10_N7
\t1|f1|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(15));

-- Location: LCCOMB_X2_Y10_N8
\t1|f1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~32_combout\ = (\t1|f1|i\(16) & (\t1|f1|Add0~31\ $ (GND))) # (!\t1|f1|i\(16) & (!\t1|f1|Add0~31\ & VCC))
-- \t1|f1|Add0~33\ = CARRY((\t1|f1|i\(16) & !\t1|f1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(16),
	datad => VCC,
	cin => \t1|f1|Add0~31\,
	combout => \t1|f1|Add0~32_combout\,
	cout => \t1|f1|Add0~33\);

-- Location: FF_X2_Y10_N9
\t1|f1|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(16));

-- Location: LCCOMB_X2_Y10_N10
\t1|f1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~34_combout\ = (\t1|f1|i\(17) & (!\t1|f1|Add0~33\)) # (!\t1|f1|i\(17) & ((\t1|f1|Add0~33\) # (GND)))
-- \t1|f1|Add0~35\ = CARRY((!\t1|f1|Add0~33\) # (!\t1|f1|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|i\(17),
	datad => VCC,
	cin => \t1|f1|Add0~33\,
	combout => \t1|f1|Add0~34_combout\,
	cout => \t1|f1|Add0~35\);

-- Location: FF_X2_Y10_N11
\t1|f1|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(17));

-- Location: LCCOMB_X2_Y10_N12
\t1|f1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~36_combout\ = (\t1|f1|i\(18) & (\t1|f1|Add0~35\ $ (GND))) # (!\t1|f1|i\(18) & (!\t1|f1|Add0~35\ & VCC))
-- \t1|f1|Add0~37\ = CARRY((\t1|f1|i\(18) & !\t1|f1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|i\(18),
	datad => VCC,
	cin => \t1|f1|Add0~35\,
	combout => \t1|f1|Add0~36_combout\,
	cout => \t1|f1|Add0~37\);

-- Location: FF_X2_Y10_N13
\t1|f1|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(18));

-- Location: LCCOMB_X2_Y10_N14
\t1|f1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~38_combout\ = (\t1|f1|i\(19) & (!\t1|f1|Add0~37\)) # (!\t1|f1|i\(19) & ((\t1|f1|Add0~37\) # (GND)))
-- \t1|f1|Add0~39\ = CARRY((!\t1|f1|Add0~37\) # (!\t1|f1|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(19),
	datad => VCC,
	cin => \t1|f1|Add0~37\,
	combout => \t1|f1|Add0~38_combout\,
	cout => \t1|f1|Add0~39\);

-- Location: FF_X2_Y10_N15
\t1|f1|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(19));

-- Location: LCCOMB_X2_Y10_N28
\t1|f1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~6_combout\ = (!\t1|f1|Add0~40_combout\ & !\t1|f1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|Add0~40_combout\,
	datad => \t1|f1|Add0~42_combout\,
	combout => \t1|f1|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y11_N8
\t1|f1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~0_combout\ = \t1|f1|i\(0) $ (VCC)
-- \t1|f1|Add0~1\ = CARRY(\t1|f1|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|i\(0),
	datad => VCC,
	combout => \t1|f1|Add0~0_combout\,
	cout => \t1|f1|Add0~1\);

-- Location: LCCOMB_X2_Y11_N0
\t1|f1|i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|i~0_combout\ = (\t1|f1|Add0~0_combout\ & (((!\t1|f1|Equal0~7_combout\) # (!\t1|f1|Equal0~4_combout\)) # (!\t1|f1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Equal0~5_combout\,
	datab => \t1|f1|Equal0~4_combout\,
	datac => \t1|f1|Add0~0_combout\,
	datad => \t1|f1|Equal0~7_combout\,
	combout => \t1|f1|i~0_combout\);

-- Location: FF_X2_Y11_N1
\t1|f1|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(0));

-- Location: LCCOMB_X2_Y11_N10
\t1|f1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~2_combout\ = (\t1|f1|i\(1) & (!\t1|f1|Add0~1\)) # (!\t1|f1|i\(1) & ((\t1|f1|Add0~1\) # (GND)))
-- \t1|f1|Add0~3\ = CARRY((!\t1|f1|Add0~1\) # (!\t1|f1|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(1),
	datad => VCC,
	cin => \t1|f1|Add0~1\,
	combout => \t1|f1|Add0~2_combout\,
	cout => \t1|f1|Add0~3\);

-- Location: FF_X2_Y11_N11
\t1|f1|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(1));

-- Location: LCCOMB_X2_Y11_N12
\t1|f1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~4_combout\ = (\t1|f1|i\(2) & (\t1|f1|Add0~3\ $ (GND))) # (!\t1|f1|i\(2) & (!\t1|f1|Add0~3\ & VCC))
-- \t1|f1|Add0~5\ = CARRY((\t1|f1|i\(2) & !\t1|f1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|i\(2),
	datad => VCC,
	cin => \t1|f1|Add0~3\,
	combout => \t1|f1|Add0~4_combout\,
	cout => \t1|f1|Add0~5\);

-- Location: FF_X2_Y11_N13
\t1|f1|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(2));

-- Location: LCCOMB_X2_Y11_N14
\t1|f1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~6_combout\ = (\t1|f1|i\(3) & (!\t1|f1|Add0~5\)) # (!\t1|f1|i\(3) & ((\t1|f1|Add0~5\) # (GND)))
-- \t1|f1|Add0~7\ = CARRY((!\t1|f1|Add0~5\) # (!\t1|f1|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|i\(3),
	datad => VCC,
	cin => \t1|f1|Add0~5\,
	combout => \t1|f1|Add0~6_combout\,
	cout => \t1|f1|Add0~7\);

-- Location: LCCOMB_X2_Y10_N26
\t1|f1|i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|i~1_combout\ = (!\t1|f1|Add0~46_combout\ & (!\t1|f1|Add0~44_combout\ & (\t1|f1|Equal0~5_combout\ & !\t1|f1|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~46_combout\,
	datab => \t1|f1|Add0~44_combout\,
	datac => \t1|f1|Equal0~5_combout\,
	datad => \t1|f1|Add0~48_combout\,
	combout => \t1|f1|i~1_combout\);

-- Location: LCCOMB_X2_Y11_N2
\t1|f1|i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|i~2_combout\ = (\t1|f1|Add0~6_combout\ & (((!\t1|f1|Equal0~4_combout\) # (!\t1|f1|i~1_combout\)) # (!\t1|f1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Equal0~6_combout\,
	datab => \t1|f1|Add0~6_combout\,
	datac => \t1|f1|i~1_combout\,
	datad => \t1|f1|Equal0~4_combout\,
	combout => \t1|f1|i~2_combout\);

-- Location: FF_X2_Y11_N3
\t1|f1|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(3));

-- Location: LCCOMB_X2_Y11_N16
\t1|f1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add0~8_combout\ = (\t1|f1|i\(4) & (\t1|f1|Add0~7\ $ (GND))) # (!\t1|f1|i\(4) & (!\t1|f1|Add0~7\ & VCC))
-- \t1|f1|Add0~9\ = CARRY((\t1|f1|i\(4) & !\t1|f1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|i\(4),
	datad => VCC,
	cin => \t1|f1|Add0~7\,
	combout => \t1|f1|Add0~8_combout\,
	cout => \t1|f1|Add0~9\);

-- Location: LCCOMB_X1_Y11_N6
\t1|f1|i~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|i~3_combout\ = (\t1|f1|Add0~8_combout\ & (((!\t1|f1|Equal0~7_combout\) # (!\t1|f1|Equal0~5_combout\)) # (!\t1|f1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Equal0~4_combout\,
	datab => \t1|f1|Add0~8_combout\,
	datac => \t1|f1|Equal0~5_combout\,
	datad => \t1|f1|Equal0~7_combout\,
	combout => \t1|f1|i~3_combout\);

-- Location: FF_X1_Y11_N7
\t1|f1|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|i~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|i\(4));

-- Location: LCCOMB_X2_Y11_N6
\t1|f1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~1_combout\ = (!\t1|f1|Add0~10_combout\ & (\t1|f1|Add0~12_combout\ & (\t1|f1|Add0~14_combout\ & \t1|f1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~10_combout\,
	datab => \t1|f1|Add0~12_combout\,
	datac => \t1|f1|Add0~14_combout\,
	datad => \t1|f1|Add0~8_combout\,
	combout => \t1|f1|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y11_N4
\t1|f1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~0_combout\ = (!\t1|f1|Add0~4_combout\ & (\t1|f1|Add0~0_combout\ & (\t1|f1|Add0~6_combout\ & !\t1|f1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~4_combout\,
	datab => \t1|f1|Add0~0_combout\,
	datac => \t1|f1|Add0~6_combout\,
	datad => \t1|f1|Add0~2_combout\,
	combout => \t1|f1|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y11_N22
\t1|f1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~2_combout\ = (!\t1|f1|Add0~16_combout\ & (!\t1|f1|Add0~20_combout\ & (!\t1|f1|Add0~22_combout\ & !\t1|f1|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~16_combout\,
	datab => \t1|f1|Add0~20_combout\,
	datac => \t1|f1|Add0~22_combout\,
	datad => \t1|f1|Add0~18_combout\,
	combout => \t1|f1|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y11_N24
\t1|f1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~3_combout\ = (!\t1|f1|Add0~26_combout\ & (!\t1|f1|Add0~24_combout\ & (!\t1|f1|Add0~28_combout\ & !\t1|f1|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add0~26_combout\,
	datab => \t1|f1|Add0~24_combout\,
	datac => \t1|f1|Add0~28_combout\,
	datad => \t1|f1|Add0~30_combout\,
	combout => \t1|f1|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y11_N30
\t1|f1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal0~4_combout\ = (\t1|f1|Equal0~1_combout\ & (\t1|f1|Equal0~0_combout\ & (\t1|f1|Equal0~2_combout\ & \t1|f1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Equal0~1_combout\,
	datab => \t1|f1|Equal0~0_combout\,
	datac => \t1|f1|Equal0~2_combout\,
	datad => \t1|f1|Equal0~3_combout\,
	combout => \t1|f1|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y11_N28
\t1|f1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|temp~0_combout\ = \t1|f1|temp~q\ $ (((\t1|f1|Equal0~4_combout\ & (\t1|f1|Equal0~5_combout\ & \t1|f1|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Equal0~4_combout\,
	datab => \t1|f1|temp~q\,
	datac => \t1|f1|Equal0~5_combout\,
	datad => \t1|f1|Equal0~7_combout\,
	combout => \t1|f1|temp~0_combout\);

-- Location: LCCOMB_X1_Y11_N14
\t1|f1|temp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|temp~feeder_combout\ = \t1|f1|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|temp~0_combout\,
	combout => \t1|f1|temp~feeder_combout\);

-- Location: FF_X1_Y11_N15
\t1|f1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|temp~feeder_combout\,
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

-- Location: FF_X29_Y15_N11
\t1|f1|j[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(17));

-- Location: LCCOMB_X29_Y16_N8
\t1|f1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~0_combout\ = \t1|f1|j\(0) $ (VCC)
-- \t1|f1|Add1~1\ = CARRY(\t1|f1|j\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|j\(0),
	datad => VCC,
	combout => \t1|f1|Add1~0_combout\,
	cout => \t1|f1|Add1~1\);

-- Location: FF_X29_Y16_N9
\t1|f1|j[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(0));

-- Location: LCCOMB_X29_Y16_N10
\t1|f1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~2_combout\ = (\t1|f1|j\(1) & (!\t1|f1|Add1~1\)) # (!\t1|f1|j\(1) & ((\t1|f1|Add1~1\) # (GND)))
-- \t1|f1|Add1~3\ = CARRY((!\t1|f1|Add1~1\) # (!\t1|f1|j\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(1),
	datad => VCC,
	cin => \t1|f1|Add1~1\,
	combout => \t1|f1|Add1~2_combout\,
	cout => \t1|f1|Add1~3\);

-- Location: FF_X29_Y16_N11
\t1|f1|j[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(1));

-- Location: LCCOMB_X29_Y16_N12
\t1|f1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~4_combout\ = (\t1|f1|j\(2) & (\t1|f1|Add1~3\ $ (GND))) # (!\t1|f1|j\(2) & (!\t1|f1|Add1~3\ & VCC))
-- \t1|f1|Add1~5\ = CARRY((\t1|f1|j\(2) & !\t1|f1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(2),
	datad => VCC,
	cin => \t1|f1|Add1~3\,
	combout => \t1|f1|Add1~4_combout\,
	cout => \t1|f1|Add1~5\);

-- Location: FF_X29_Y16_N13
\t1|f1|j[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(2));

-- Location: LCCOMB_X29_Y16_N14
\t1|f1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~6_combout\ = (\t1|f1|j\(3) & (!\t1|f1|Add1~5\)) # (!\t1|f1|j\(3) & ((\t1|f1|Add1~5\) # (GND)))
-- \t1|f1|Add1~7\ = CARRY((!\t1|f1|Add1~5\) # (!\t1|f1|j\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|j\(3),
	datad => VCC,
	cin => \t1|f1|Add1~5\,
	combout => \t1|f1|Add1~6_combout\,
	cout => \t1|f1|Add1~7\);

-- Location: LCCOMB_X29_Y16_N4
\t1|f1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal1~1_combout\ = (!\t1|f1|Add1~14_combout\ & (\t1|f1|Add1~8_combout\ & (!\t1|f1|Add1~10_combout\ & \t1|f1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add1~14_combout\,
	datab => \t1|f1|Add1~8_combout\,
	datac => \t1|f1|Add1~10_combout\,
	datad => \t1|f1|Add1~12_combout\,
	combout => \t1|f1|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y16_N16
\t1|f1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal1~0_combout\ = (!\t1|f1|Add1~4_combout\ & (!\t1|f1|Add1~0_combout\ & (\t1|f1|Add1~6_combout\ & !\t1|f1|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add1~4_combout\,
	datab => \t1|f1|Add1~0_combout\,
	datac => \t1|f1|Add1~6_combout\,
	datad => \t1|f1|Add1~2_combout\,
	combout => \t1|f1|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y16_N22
\t1|f1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal1~2_combout\ = (!\t1|f1|Add1~16_combout\ & (\t1|f1|Add1~20_combout\ & (!\t1|f1|Add1~22_combout\ & !\t1|f1|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add1~16_combout\,
	datab => \t1|f1|Add1~20_combout\,
	datac => \t1|f1|Add1~22_combout\,
	datad => \t1|f1|Add1~18_combout\,
	combout => \t1|f1|Equal1~2_combout\);

-- Location: LCCOMB_X28_Y16_N18
\t1|f1|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal1~3_combout\ = (\t1|f1|Add1~24_combout\ & (!\t1|f1|Add1~28_combout\ & (!\t1|f1|Add1~30_combout\ & !\t1|f1|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add1~24_combout\,
	datab => \t1|f1|Add1~28_combout\,
	datac => \t1|f1|Add1~30_combout\,
	datad => \t1|f1|Add1~26_combout\,
	combout => \t1|f1|Equal1~3_combout\);

-- Location: LCCOMB_X28_Y16_N30
\t1|f1|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal1~4_combout\ = (\t1|f1|Equal1~1_combout\ & (\t1|f1|Equal1~0_combout\ & (\t1|f1|Equal1~2_combout\ & \t1|f1|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Equal1~1_combout\,
	datab => \t1|f1|Equal1~0_combout\,
	datac => \t1|f1|Equal1~2_combout\,
	datad => \t1|f1|Equal1~3_combout\,
	combout => \t1|f1|Equal1~4_combout\);

-- Location: FF_X29_Y15_N23
\t1|f1|j[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(23));

-- Location: LCCOMB_X29_Y15_N10
\t1|f1|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~34_combout\ = (\t1|f1|j\(17) & (!\t1|f1|Add1~33\)) # (!\t1|f1|j\(17) & ((\t1|f1|Add1~33\) # (GND)))
-- \t1|f1|Add1~35\ = CARRY((!\t1|f1|Add1~33\) # (!\t1|f1|j\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|j\(17),
	datad => VCC,
	cin => \t1|f1|Add1~33\,
	combout => \t1|f1|Add1~34_combout\,
	cout => \t1|f1|Add1~35\);

-- Location: LCCOMB_X29_Y15_N12
\t1|f1|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~36_combout\ = (\t1|f1|j\(18) & (\t1|f1|Add1~35\ $ (GND))) # (!\t1|f1|j\(18) & (!\t1|f1|Add1~35\ & VCC))
-- \t1|f1|Add1~37\ = CARRY((\t1|f1|j\(18) & !\t1|f1|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|j\(18),
	datad => VCC,
	cin => \t1|f1|Add1~35\,
	combout => \t1|f1|Add1~36_combout\,
	cout => \t1|f1|Add1~37\);

-- Location: FF_X29_Y15_N13
\t1|f1|j[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(18));

-- Location: LCCOMB_X29_Y15_N14
\t1|f1|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~38_combout\ = (\t1|f1|j\(19) & (!\t1|f1|Add1~37\)) # (!\t1|f1|j\(19) & ((\t1|f1|Add1~37\) # (GND)))
-- \t1|f1|Add1~39\ = CARRY((!\t1|f1|Add1~37\) # (!\t1|f1|j\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(19),
	datad => VCC,
	cin => \t1|f1|Add1~37\,
	combout => \t1|f1|Add1~38_combout\,
	cout => \t1|f1|Add1~39\);

-- Location: FF_X29_Y15_N15
\t1|f1|j[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(19));

-- Location: LCCOMB_X29_Y15_N16
\t1|f1|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~40_combout\ = (\t1|f1|j\(20) & (\t1|f1|Add1~39\ $ (GND))) # (!\t1|f1|j\(20) & (!\t1|f1|Add1~39\ & VCC))
-- \t1|f1|Add1~41\ = CARRY((\t1|f1|j\(20) & !\t1|f1|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(20),
	datad => VCC,
	cin => \t1|f1|Add1~39\,
	combout => \t1|f1|Add1~40_combout\,
	cout => \t1|f1|Add1~41\);

-- Location: FF_X29_Y15_N17
\t1|f1|j[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(20));

-- Location: LCCOMB_X29_Y15_N18
\t1|f1|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~42_combout\ = (\t1|f1|j\(21) & (!\t1|f1|Add1~41\)) # (!\t1|f1|j\(21) & ((\t1|f1|Add1~41\) # (GND)))
-- \t1|f1|Add1~43\ = CARRY((!\t1|f1|Add1~41\) # (!\t1|f1|j\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(21),
	datad => VCC,
	cin => \t1|f1|Add1~41\,
	combout => \t1|f1|Add1~42_combout\,
	cout => \t1|f1|Add1~43\);

-- Location: FF_X29_Y15_N19
\t1|f1|j[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(21));

-- Location: LCCOMB_X29_Y15_N20
\t1|f1|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~44_combout\ = (\t1|f1|j\(22) & (\t1|f1|Add1~43\ $ (GND))) # (!\t1|f1|j\(22) & (!\t1|f1|Add1~43\ & VCC))
-- \t1|f1|Add1~45\ = CARRY((\t1|f1|j\(22) & !\t1|f1|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(22),
	datad => VCC,
	cin => \t1|f1|Add1~43\,
	combout => \t1|f1|Add1~44_combout\,
	cout => \t1|f1|Add1~45\);

-- Location: FF_X29_Y15_N21
\t1|f1|j[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(22));

-- Location: LCCOMB_X29_Y15_N22
\t1|f1|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~46_combout\ = (\t1|f1|j\(23) & (!\t1|f1|Add1~45\)) # (!\t1|f1|j\(23) & ((\t1|f1|Add1~45\) # (GND)))
-- \t1|f1|Add1~47\ = CARRY((!\t1|f1|Add1~45\) # (!\t1|f1|j\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|j\(23),
	datad => VCC,
	cin => \t1|f1|Add1~45\,
	combout => \t1|f1|Add1~46_combout\,
	cout => \t1|f1|Add1~47\);

-- Location: FF_X29_Y15_N25
\t1|f1|j[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(24));

-- Location: LCCOMB_X29_Y15_N24
\t1|f1|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~48_combout\ = \t1|f1|Add1~47\ $ (!\t1|f1|j\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t1|f1|j\(24),
	cin => \t1|f1|Add1~47\,
	combout => \t1|f1|Add1~48_combout\);

-- Location: LCCOMB_X29_Y15_N28
\t1|f1|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal1~6_combout\ = (!\t1|f1|Add1~40_combout\ & !\t1|f1|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|Add1~40_combout\,
	datad => \t1|f1|Add1~42_combout\,
	combout => \t1|f1|Equal1~6_combout\);

-- Location: LCCOMB_X29_Y15_N26
\t1|f1|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal1~7_combout\ = (!\t1|f1|Add1~46_combout\ & (!\t1|f1|Add1~44_combout\ & (!\t1|f1|Add1~48_combout\ & \t1|f1|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add1~46_combout\,
	datab => \t1|f1|Add1~44_combout\,
	datac => \t1|f1|Add1~48_combout\,
	datad => \t1|f1|Equal1~6_combout\,
	combout => \t1|f1|Equal1~7_combout\);

-- Location: LCCOMB_X29_Y16_N0
\t1|f1|j~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|j~0_combout\ = (\t1|f1|Add1~6_combout\ & (((!\t1|f1|Equal1~7_combout\) # (!\t1|f1|Equal1~4_combout\)) # (!\t1|f1|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add1~6_combout\,
	datab => \t1|f1|Equal1~5_combout\,
	datac => \t1|f1|Equal1~4_combout\,
	datad => \t1|f1|Equal1~7_combout\,
	combout => \t1|f1|j~0_combout\);

-- Location: FF_X29_Y16_N1
\t1|f1|j[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|j~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(3));

-- Location: LCCOMB_X29_Y16_N16
\t1|f1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~8_combout\ = (\t1|f1|j\(4) & (\t1|f1|Add1~7\ $ (GND))) # (!\t1|f1|j\(4) & (!\t1|f1|Add1~7\ & VCC))
-- \t1|f1|Add1~9\ = CARRY((\t1|f1|j\(4) & !\t1|f1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(4),
	datad => VCC,
	cin => \t1|f1|Add1~7\,
	combout => \t1|f1|Add1~8_combout\,
	cout => \t1|f1|Add1~9\);

-- Location: LCCOMB_X29_Y16_N6
\t1|f1|j~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|j~1_combout\ = (\t1|f1|Add1~8_combout\ & (((!\t1|f1|Equal1~7_combout\) # (!\t1|f1|Equal1~4_combout\)) # (!\t1|f1|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add1~8_combout\,
	datab => \t1|f1|Equal1~5_combout\,
	datac => \t1|f1|Equal1~4_combout\,
	datad => \t1|f1|Equal1~7_combout\,
	combout => \t1|f1|j~1_combout\);

-- Location: FF_X29_Y16_N7
\t1|f1|j[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|j~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(4));

-- Location: LCCOMB_X29_Y16_N18
\t1|f1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~10_combout\ = (\t1|f1|j\(5) & (!\t1|f1|Add1~9\)) # (!\t1|f1|j\(5) & ((\t1|f1|Add1~9\) # (GND)))
-- \t1|f1|Add1~11\ = CARRY((!\t1|f1|Add1~9\) # (!\t1|f1|j\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|j\(5),
	datad => VCC,
	cin => \t1|f1|Add1~9\,
	combout => \t1|f1|Add1~10_combout\,
	cout => \t1|f1|Add1~11\);

-- Location: FF_X29_Y16_N19
\t1|f1|j[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(5));

-- Location: LCCOMB_X29_Y16_N20
\t1|f1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~12_combout\ = (\t1|f1|j\(6) & (\t1|f1|Add1~11\ $ (GND))) # (!\t1|f1|j\(6) & (!\t1|f1|Add1~11\ & VCC))
-- \t1|f1|Add1~13\ = CARRY((\t1|f1|j\(6) & !\t1|f1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|j\(6),
	datad => VCC,
	cin => \t1|f1|Add1~11\,
	combout => \t1|f1|Add1~12_combout\,
	cout => \t1|f1|Add1~13\);

-- Location: LCCOMB_X28_Y16_N28
\t1|f1|j~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|j~2_combout\ = (!\t1|f1|Add1~44_combout\ & (!\t1|f1|Add1~46_combout\ & (!\t1|f1|Add1~48_combout\ & \t1|f1|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add1~44_combout\,
	datab => \t1|f1|Add1~46_combout\,
	datac => \t1|f1|Add1~48_combout\,
	datad => \t1|f1|Equal1~5_combout\,
	combout => \t1|f1|j~2_combout\);

-- Location: LCCOMB_X28_Y16_N6
\t1|f1|j~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|j~3_combout\ = (\t1|f1|Add1~12_combout\ & (((!\t1|f1|j~2_combout\) # (!\t1|f1|Equal1~4_combout\)) # (!\t1|f1|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add1~12_combout\,
	datab => \t1|f1|Equal1~6_combout\,
	datac => \t1|f1|Equal1~4_combout\,
	datad => \t1|f1|j~2_combout\,
	combout => \t1|f1|j~3_combout\);

-- Location: FF_X28_Y16_N7
\t1|f1|j[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|j~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(6));

-- Location: LCCOMB_X29_Y16_N22
\t1|f1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~14_combout\ = (\t1|f1|j\(7) & (!\t1|f1|Add1~13\)) # (!\t1|f1|j\(7) & ((\t1|f1|Add1~13\) # (GND)))
-- \t1|f1|Add1~15\ = CARRY((!\t1|f1|Add1~13\) # (!\t1|f1|j\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(7),
	datad => VCC,
	cin => \t1|f1|Add1~13\,
	combout => \t1|f1|Add1~14_combout\,
	cout => \t1|f1|Add1~15\);

-- Location: FF_X29_Y16_N23
\t1|f1|j[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(7));

-- Location: LCCOMB_X29_Y16_N24
\t1|f1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~16_combout\ = (\t1|f1|j\(8) & (\t1|f1|Add1~15\ $ (GND))) # (!\t1|f1|j\(8) & (!\t1|f1|Add1~15\ & VCC))
-- \t1|f1|Add1~17\ = CARRY((\t1|f1|j\(8) & !\t1|f1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|j\(8),
	datad => VCC,
	cin => \t1|f1|Add1~15\,
	combout => \t1|f1|Add1~16_combout\,
	cout => \t1|f1|Add1~17\);

-- Location: FF_X29_Y16_N25
\t1|f1|j[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(8));

-- Location: LCCOMB_X29_Y16_N26
\t1|f1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~18_combout\ = (\t1|f1|j\(9) & (!\t1|f1|Add1~17\)) # (!\t1|f1|j\(9) & ((\t1|f1|Add1~17\) # (GND)))
-- \t1|f1|Add1~19\ = CARRY((!\t1|f1|Add1~17\) # (!\t1|f1|j\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(9),
	datad => VCC,
	cin => \t1|f1|Add1~17\,
	combout => \t1|f1|Add1~18_combout\,
	cout => \t1|f1|Add1~19\);

-- Location: FF_X29_Y16_N27
\t1|f1|j[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(9));

-- Location: LCCOMB_X29_Y16_N28
\t1|f1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~20_combout\ = (\t1|f1|j\(10) & (\t1|f1|Add1~19\ $ (GND))) # (!\t1|f1|j\(10) & (!\t1|f1|Add1~19\ & VCC))
-- \t1|f1|Add1~21\ = CARRY((\t1|f1|j\(10) & !\t1|f1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|j\(10),
	datad => VCC,
	cin => \t1|f1|Add1~19\,
	combout => \t1|f1|Add1~20_combout\,
	cout => \t1|f1|Add1~21\);

-- Location: LCCOMB_X29_Y16_N2
\t1|f1|j~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|j~4_combout\ = (\t1|f1|Add1~20_combout\ & (((!\t1|f1|Equal1~7_combout\) # (!\t1|f1|Equal1~5_combout\)) # (!\t1|f1|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add1~20_combout\,
	datab => \t1|f1|Equal1~4_combout\,
	datac => \t1|f1|Equal1~5_combout\,
	datad => \t1|f1|Equal1~7_combout\,
	combout => \t1|f1|j~4_combout\);

-- Location: FF_X29_Y16_N3
\t1|f1|j[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|j~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(10));

-- Location: LCCOMB_X29_Y16_N30
\t1|f1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~22_combout\ = (\t1|f1|j\(11) & (!\t1|f1|Add1~21\)) # (!\t1|f1|j\(11) & ((\t1|f1|Add1~21\) # (GND)))
-- \t1|f1|Add1~23\ = CARRY((!\t1|f1|Add1~21\) # (!\t1|f1|j\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(11),
	datad => VCC,
	cin => \t1|f1|Add1~21\,
	combout => \t1|f1|Add1~22_combout\,
	cout => \t1|f1|Add1~23\);

-- Location: FF_X29_Y16_N31
\t1|f1|j[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(11));

-- Location: LCCOMB_X29_Y15_N0
\t1|f1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~24_combout\ = (\t1|f1|j\(12) & (\t1|f1|Add1~23\ $ (GND))) # (!\t1|f1|j\(12) & (!\t1|f1|Add1~23\ & VCC))
-- \t1|f1|Add1~25\ = CARRY((\t1|f1|j\(12) & !\t1|f1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(12),
	datad => VCC,
	cin => \t1|f1|Add1~23\,
	combout => \t1|f1|Add1~24_combout\,
	cout => \t1|f1|Add1~25\);

-- Location: LCCOMB_X28_Y16_N24
\t1|f1|j~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|j~5_combout\ = (\t1|f1|Add1~24_combout\ & (((!\t1|f1|Equal1~7_combout\) # (!\t1|f1|Equal1~4_combout\)) # (!\t1|f1|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add1~24_combout\,
	datab => \t1|f1|Equal1~5_combout\,
	datac => \t1|f1|Equal1~4_combout\,
	datad => \t1|f1|Equal1~7_combout\,
	combout => \t1|f1|j~5_combout\);

-- Location: FF_X28_Y16_N25
\t1|f1|j[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|j~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(12));

-- Location: LCCOMB_X29_Y15_N2
\t1|f1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~26_combout\ = (\t1|f1|j\(13) & (!\t1|f1|Add1~25\)) # (!\t1|f1|j\(13) & ((\t1|f1|Add1~25\) # (GND)))
-- \t1|f1|Add1~27\ = CARRY((!\t1|f1|Add1~25\) # (!\t1|f1|j\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|j\(13),
	datad => VCC,
	cin => \t1|f1|Add1~25\,
	combout => \t1|f1|Add1~26_combout\,
	cout => \t1|f1|Add1~27\);

-- Location: FF_X29_Y15_N3
\t1|f1|j[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(13));

-- Location: LCCOMB_X29_Y15_N4
\t1|f1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~28_combout\ = (\t1|f1|j\(14) & (\t1|f1|Add1~27\ $ (GND))) # (!\t1|f1|j\(14) & (!\t1|f1|Add1~27\ & VCC))
-- \t1|f1|Add1~29\ = CARRY((\t1|f1|j\(14) & !\t1|f1|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|j\(14),
	datad => VCC,
	cin => \t1|f1|Add1~27\,
	combout => \t1|f1|Add1~28_combout\,
	cout => \t1|f1|Add1~29\);

-- Location: FF_X29_Y15_N5
\t1|f1|j[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(14));

-- Location: LCCOMB_X29_Y15_N6
\t1|f1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~30_combout\ = (\t1|f1|j\(15) & (!\t1|f1|Add1~29\)) # (!\t1|f1|j\(15) & ((\t1|f1|Add1~29\) # (GND)))
-- \t1|f1|Add1~31\ = CARRY((!\t1|f1|Add1~29\) # (!\t1|f1|j\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(15),
	datad => VCC,
	cin => \t1|f1|Add1~29\,
	combout => \t1|f1|Add1~30_combout\,
	cout => \t1|f1|Add1~31\);

-- Location: FF_X29_Y15_N7
\t1|f1|j[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(15));

-- Location: LCCOMB_X29_Y15_N8
\t1|f1|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Add1~32_combout\ = (\t1|f1|j\(16) & (\t1|f1|Add1~31\ $ (GND))) # (!\t1|f1|j\(16) & (!\t1|f1|Add1~31\ & VCC))
-- \t1|f1|Add1~33\ = CARRY((\t1|f1|j\(16) & !\t1|f1|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|j\(16),
	datad => VCC,
	cin => \t1|f1|Add1~31\,
	combout => \t1|f1|Add1~32_combout\,
	cout => \t1|f1|Add1~33\);

-- Location: FF_X29_Y15_N9
\t1|f1|j[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|j\(16));

-- Location: LCCOMB_X29_Y15_N30
\t1|f1|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|Equal1~5_combout\ = (!\t1|f1|Add1~34_combout\ & (!\t1|f1|Add1~32_combout\ & (!\t1|f1|Add1~38_combout\ & !\t1|f1|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|Add1~34_combout\,
	datab => \t1|f1|Add1~32_combout\,
	datac => \t1|f1|Add1~38_combout\,
	datad => \t1|f1|Add1~36_combout\,
	combout => \t1|f1|Equal1~5_combout\);

-- Location: LCCOMB_X28_Y16_N20
\t1|f1|temp1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|temp1~0_combout\ = \t1|f1|temp1~q\ $ (((\t1|f1|Equal1~5_combout\ & (\t1|f1|Equal1~4_combout\ & \t1|f1|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|f1|temp1~q\,
	datab => \t1|f1|Equal1~5_combout\,
	datac => \t1|f1|Equal1~4_combout\,
	datad => \t1|f1|Equal1~7_combout\,
	combout => \t1|f1|temp1~0_combout\);

-- Location: LCCOMB_X28_Y16_N26
\t1|f1|temp1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|f1|temp1~feeder_combout\ = \t1|f1|temp1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|f1|temp1~0_combout\,
	combout => \t1|f1|temp1~feeder_combout\);

-- Location: FF_X28_Y16_N27
\t1|f1|temp1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \t1|f1|temp1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|f1|temp1~q\);

-- Location: LCCOMB_X24_Y16_N28
\t1|ReSend~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|ReSend~0_combout\ = !\t1|ReSend~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|ReSend~q\,
	combout => \t1|ReSend~0_combout\);

-- Location: FF_X24_Y16_N29
\t1|ReSend\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp1~q\,
	d => \t1|ReSend~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|ReSend~q\);

-- Location: LCCOMB_X24_Y16_N4
\t1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|process_0~0_combout\ = (\t1|ReSend~q\) # (!\RESet~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESet~input_o\,
	datad => \t1|ReSend~q\,
	combout => \t1|process_0~0_combout\);

-- Location: LCCOMB_X22_Y16_N0
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

-- Location: LCCOMB_X21_Y15_N22
\t1|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector36~0_combout\ = (\t1|Add0~0_combout\ & (!\t1|TXState.TXING~q\ & ((\t1|n\(0)) # (!\t1|n~0_combout\)))) # (!\t1|Add0~0_combout\ & (((\t1|n\(0)) # (!\t1|n~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(0),
	datad => \t1|n~0_combout\,
	combout => \t1|Selector36~0_combout\);

-- Location: FF_X22_Y16_N15
\t1|n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector36~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(0));

-- Location: LCCOMB_X22_Y16_N2
\t1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~2_combout\ = (\t1|n\(1) & ((\t1|Add0~1\) # (GND))) # (!\t1|n\(1) & (!\t1|Add0~1\))
-- \t1|Add0~3\ = CARRY((\t1|n\(1)) # (!\t1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(1),
	datad => VCC,
	cin => \t1|Add0~1\,
	combout => \t1|Add0~2_combout\,
	cout => \t1|Add0~3\);

-- Location: LCCOMB_X24_Y16_N20
\t1|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector35~0_combout\ = (\t1|n\(1) & (((!\t1|Add0~2_combout\)) # (!\t1|TXState.TXING~q\))) # (!\t1|n\(1) & (!\t1|n~0_combout\ & ((!\t1|Add0~2_combout\) # (!\t1|TXState.TXING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(1),
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n~0_combout\,
	datad => \t1|Add0~2_combout\,
	combout => \t1|Selector35~0_combout\);

-- Location: FF_X22_Y16_N9
\t1|n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector35~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(1));

-- Location: LCCOMB_X22_Y16_N4
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

-- Location: LCCOMB_X21_Y16_N16
\t1|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector34~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(2) & ((!\t1|Add0~4_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~4_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(2),
	datad => \t1|Add0~4_combout\,
	combout => \t1|Selector34~0_combout\);

-- Location: FF_X21_Y16_N17
\t1|n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector34~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(2));

-- Location: LCCOMB_X22_Y16_N6
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

-- Location: LCCOMB_X22_Y16_N8
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

-- Location: LCCOMB_X21_Y16_N4
\t1|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector32~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(4) & ((!\t1|Add0~8_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~8_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|Add0~8_combout\,
	datad => \t1|n\(4),
	combout => \t1|Selector32~0_combout\);

-- Location: FF_X22_Y16_N27
\t1|n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector32~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(4));

-- Location: LCCOMB_X22_Y16_N10
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

-- Location: LCCOMB_X21_Y16_N26
\t1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector31~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(5) & ((!\t1|Add0~10_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~10_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|Add0~10_combout\,
	datad => \t1|n\(5),
	combout => \t1|Selector31~0_combout\);

-- Location: FF_X22_Y16_N11
\t1|n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector31~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(5));

-- Location: LCCOMB_X22_Y16_N12
\t1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~12_combout\ = (\t1|n\(6) & (!\t1|Add0~11\ & VCC)) # (!\t1|n\(6) & (\t1|Add0~11\ $ (GND)))
-- \t1|Add0~13\ = CARRY((!\t1|n\(6) & !\t1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(6),
	datad => VCC,
	cin => \t1|Add0~11\,
	combout => \t1|Add0~12_combout\,
	cout => \t1|Add0~13\);

-- Location: LCCOMB_X21_Y16_N20
\t1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector30~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(6) & ((!\t1|Add0~12_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~12_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|Add0~12_combout\,
	datad => \t1|n\(6),
	combout => \t1|Selector30~0_combout\);

-- Location: FF_X22_Y16_N13
\t1|n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector30~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(6));

-- Location: LCCOMB_X22_Y16_N14
\t1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~14_combout\ = (\t1|n\(7) & ((\t1|Add0~13\) # (GND))) # (!\t1|n\(7) & (!\t1|Add0~13\))
-- \t1|Add0~15\ = CARRY((\t1|n\(7)) # (!\t1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(7),
	datad => VCC,
	cin => \t1|Add0~13\,
	combout => \t1|Add0~14_combout\,
	cout => \t1|Add0~15\);

-- Location: LCCOMB_X21_Y16_N6
\t1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector29~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(7) & ((!\t1|Add0~14_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~14_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|Add0~14_combout\,
	datad => \t1|n\(7),
	combout => \t1|Selector29~0_combout\);

-- Location: FF_X22_Y16_N23
\t1|n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector29~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(7));

-- Location: LCCOMB_X22_Y16_N16
\t1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~16_combout\ = (\t1|n\(8) & (!\t1|Add0~15\ & VCC)) # (!\t1|n\(8) & (\t1|Add0~15\ $ (GND)))
-- \t1|Add0~17\ = CARRY((!\t1|n\(8) & !\t1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(8),
	datad => VCC,
	cin => \t1|Add0~15\,
	combout => \t1|Add0~16_combout\,
	cout => \t1|Add0~17\);

-- Location: LCCOMB_X21_Y16_N2
\t1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector28~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(8) & ((!\t1|Add0~16_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~16_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(8),
	datad => \t1|Add0~16_combout\,
	combout => \t1|Selector28~0_combout\);

-- Location: FF_X22_Y16_N5
\t1|n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector28~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(8));

-- Location: LCCOMB_X22_Y16_N18
\t1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~18_combout\ = (\t1|n\(9) & ((\t1|Add0~17\) # (GND))) # (!\t1|n\(9) & (!\t1|Add0~17\))
-- \t1|Add0~19\ = CARRY((\t1|n\(9)) # (!\t1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(9),
	datad => VCC,
	cin => \t1|Add0~17\,
	combout => \t1|Add0~18_combout\,
	cout => \t1|Add0~19\);

-- Location: LCCOMB_X21_Y16_N8
\t1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector27~0_combout\ = (\t1|n\(9) & (((!\t1|Add0~18_combout\)) # (!\t1|TXState.TXING~q\))) # (!\t1|n\(9) & (!\t1|n~0_combout\ & ((!\t1|Add0~18_combout\) # (!\t1|TXState.TXING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(9),
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n~0_combout\,
	datad => \t1|Add0~18_combout\,
	combout => \t1|Selector27~0_combout\);

-- Location: FF_X22_Y16_N7
\t1|n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector27~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(9));

-- Location: LCCOMB_X22_Y16_N20
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

-- Location: LCCOMB_X21_Y16_N14
\t1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector26~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(10) & ((!\t1|Add0~20_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~20_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|Add0~20_combout\,
	datad => \t1|n\(10),
	combout => \t1|Selector26~0_combout\);

-- Location: FF_X22_Y16_N3
\t1|n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector26~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(10));

-- Location: LCCOMB_X22_Y16_N22
\t1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~22_combout\ = (\t1|n\(11) & ((\t1|Add0~21\) # (GND))) # (!\t1|n\(11) & (!\t1|Add0~21\))
-- \t1|Add0~23\ = CARRY((\t1|n\(11)) # (!\t1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(11),
	datad => VCC,
	cin => \t1|Add0~21\,
	combout => \t1|Add0~22_combout\,
	cout => \t1|Add0~23\);

-- Location: LCCOMB_X23_Y16_N0
\t1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector25~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(11) & ((!\t1|Add0~22_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~22_combout\) # (!\t1|TXState.TXING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|n\(11),
	datac => \t1|TXState.TXING~q\,
	datad => \t1|Add0~22_combout\,
	combout => \t1|Selector25~0_combout\);

-- Location: FF_X22_Y16_N31
\t1|n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector25~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(11));

-- Location: LCCOMB_X22_Y16_N24
\t1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~24_combout\ = (\t1|n\(12) & (!\t1|Add0~23\ & VCC)) # (!\t1|n\(12) & (\t1|Add0~23\ $ (GND)))
-- \t1|Add0~25\ = CARRY((!\t1|n\(12) & !\t1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(12),
	datad => VCC,
	cin => \t1|Add0~23\,
	combout => \t1|Add0~24_combout\,
	cout => \t1|Add0~25\);

-- Location: LCCOMB_X23_Y16_N8
\t1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector24~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(12) & ((!\t1|Add0~24_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~24_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(12),
	datad => \t1|Add0~24_combout\,
	combout => \t1|Selector24~0_combout\);

-- Location: FF_X22_Y16_N1
\t1|n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector24~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(12));

-- Location: LCCOMB_X22_Y16_N26
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

-- Location: LCCOMB_X23_Y16_N30
\t1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector23~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(13) & ((!\t1|Add0~26_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~26_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|Add0~26_combout\,
	datad => \t1|n\(13),
	combout => \t1|Selector23~0_combout\);

-- Location: FF_X22_Y16_N17
\t1|n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector23~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(13));

-- Location: LCCOMB_X22_Y16_N28
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

-- Location: LCCOMB_X21_Y16_N18
\t1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector22~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(14) & ((!\t1|Add0~28_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~28_combout\) # (!\t1|TXState.TXING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|n\(14),
	datac => \t1|TXState.TXING~q\,
	datad => \t1|Add0~28_combout\,
	combout => \t1|Selector22~0_combout\);

-- Location: FF_X22_Y16_N29
\t1|n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector22~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(14));

-- Location: LCCOMB_X22_Y16_N30
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

-- Location: LCCOMB_X21_Y16_N0
\t1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector21~0_combout\ = (\t1|n\(15) & (((!\t1|Add0~30_combout\)) # (!\t1|TXState.TXING~q\))) # (!\t1|n\(15) & (!\t1|n~0_combout\ & ((!\t1|Add0~30_combout\) # (!\t1|TXState.TXING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(15),
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n~0_combout\,
	datad => \t1|Add0~30_combout\,
	combout => \t1|Selector21~0_combout\);

-- Location: FF_X22_Y16_N21
\t1|n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector21~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(15));

-- Location: LCCOMB_X22_Y15_N0
\t1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~32_combout\ = (\t1|n\(16) & (!\t1|Add0~31\ & VCC)) # (!\t1|n\(16) & (\t1|Add0~31\ $ (GND)))
-- \t1|Add0~33\ = CARRY((!\t1|n\(16) & !\t1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(16),
	datad => VCC,
	cin => \t1|Add0~31\,
	combout => \t1|Add0~32_combout\,
	cout => \t1|Add0~33\);

-- Location: LCCOMB_X23_Y15_N20
\t1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector20~0_combout\ = (\t1|Add0~32_combout\ & (!\t1|TXState.TXING~q\ & ((\t1|n\(16)) # (!\t1|n~0_combout\)))) # (!\t1|Add0~32_combout\ & (((\t1|n\(16)) # (!\t1|n~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~32_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(16),
	datad => \t1|n~0_combout\,
	combout => \t1|Selector20~0_combout\);

-- Location: FF_X23_Y15_N21
\t1|n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector20~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(16));

-- Location: LCCOMB_X22_Y15_N2
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

-- Location: LCCOMB_X23_Y15_N2
\t1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector19~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(17) & ((!\t1|Add0~34_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~34_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(17),
	datad => \t1|Add0~34_combout\,
	combout => \t1|Selector19~0_combout\);

-- Location: FF_X23_Y15_N3
\t1|n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector19~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(17));

-- Location: LCCOMB_X22_Y15_N4
\t1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~36_combout\ = (\t1|n\(18) & (!\t1|Add0~35\ & VCC)) # (!\t1|n\(18) & (\t1|Add0~35\ $ (GND)))
-- \t1|Add0~37\ = CARRY((!\t1|n\(18) & !\t1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(18),
	datad => VCC,
	cin => \t1|Add0~35\,
	combout => \t1|Add0~36_combout\,
	cout => \t1|Add0~37\);

-- Location: LCCOMB_X23_Y15_N12
\t1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector18~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(18) & ((!\t1|TXState.TXING~q\) # (!\t1|Add0~36_combout\)))) # (!\t1|n~0_combout\ & (((!\t1|TXState.TXING~q\)) # (!\t1|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|Add0~36_combout\,
	datac => \t1|n\(18),
	datad => \t1|TXState.TXING~q\,
	combout => \t1|Selector18~0_combout\);

-- Location: FF_X23_Y15_N13
\t1|n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector18~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(18));

-- Location: LCCOMB_X22_Y15_N6
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

-- Location: LCCOMB_X23_Y16_N22
\t1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector17~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(19) & ((!\t1|Add0~38_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~38_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(19),
	datad => \t1|Add0~38_combout\,
	combout => \t1|Selector17~0_combout\);

-- Location: FF_X23_Y16_N23
\t1|n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector17~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(19));

-- Location: LCCOMB_X22_Y15_N8
\t1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~40_combout\ = (\t1|n\(20) & (!\t1|Add0~39\ & VCC)) # (!\t1|n\(20) & (\t1|Add0~39\ $ (GND)))
-- \t1|Add0~41\ = CARRY((!\t1|n\(20) & !\t1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(20),
	datad => VCC,
	cin => \t1|Add0~39\,
	combout => \t1|Add0~40_combout\,
	cout => \t1|Add0~41\);

-- Location: LCCOMB_X23_Y15_N8
\t1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector16~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(20) & ((!\t1|Add0~40_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~40_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(20),
	datad => \t1|Add0~40_combout\,
	combout => \t1|Selector16~0_combout\);

-- Location: FF_X23_Y15_N9
\t1|n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector16~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(20));

-- Location: LCCOMB_X22_Y15_N10
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

-- Location: LCCOMB_X23_Y16_N20
\t1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector15~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(21) & ((!\t1|Add0~42_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~42_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(21),
	datad => \t1|Add0~42_combout\,
	combout => \t1|Selector15~0_combout\);

-- Location: FF_X23_Y16_N21
\t1|n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector15~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(21));

-- Location: LCCOMB_X22_Y15_N12
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

-- Location: LCCOMB_X23_Y15_N14
\t1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector14~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(22) & ((!\t1|Add0~44_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~44_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(22),
	datad => \t1|Add0~44_combout\,
	combout => \t1|Selector14~0_combout\);

-- Location: FF_X23_Y15_N15
\t1|n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector14~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(22));

-- Location: LCCOMB_X22_Y15_N14
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

-- Location: LCCOMB_X23_Y15_N4
\t1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector13~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(23) & ((!\t1|Add0~46_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~46_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(23),
	datad => \t1|Add0~46_combout\,
	combout => \t1|Selector13~0_combout\);

-- Location: FF_X23_Y15_N5
\t1|n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector13~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(23));

-- Location: LCCOMB_X23_Y15_N26
\t1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~2_combout\ = (!\t1|n\(21) & (!\t1|n\(23) & (!\t1|n\(20) & !\t1|n\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(21),
	datab => \t1|n\(23),
	datac => \t1|n\(20),
	datad => \t1|n\(22),
	combout => \t1|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y15_N16
\t1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~48_combout\ = (\t1|n\(24) & (!\t1|Add0~47\ & VCC)) # (!\t1|n\(24) & (\t1|Add0~47\ $ (GND)))
-- \t1|Add0~49\ = CARRY((!\t1|n\(24) & !\t1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(24),
	datad => VCC,
	cin => \t1|Add0~47\,
	combout => \t1|Add0~48_combout\,
	cout => \t1|Add0~49\);

-- Location: LCCOMB_X23_Y15_N0
\t1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector12~0_combout\ = (\t1|Add0~48_combout\ & (!\t1|TXState.TXING~q\ & ((\t1|n\(24)) # (!\t1|n~0_combout\)))) # (!\t1|Add0~48_combout\ & (((\t1|n\(24)) # (!\t1|n~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~48_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(24),
	datad => \t1|n~0_combout\,
	combout => \t1|Selector12~0_combout\);

-- Location: FF_X23_Y15_N1
\t1|n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector12~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(24));

-- Location: LCCOMB_X22_Y15_N18
\t1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~50_combout\ = (\t1|n\(25) & ((\t1|Add0~49\) # (GND))) # (!\t1|n\(25) & (!\t1|Add0~49\))
-- \t1|Add0~51\ = CARRY((\t1|n\(25)) # (!\t1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|n\(25),
	datad => VCC,
	cin => \t1|Add0~49\,
	combout => \t1|Add0~50_combout\,
	cout => \t1|Add0~51\);

-- Location: LCCOMB_X24_Y15_N8
\t1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector11~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(25) & ((!\t1|Add0~50_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~50_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(25),
	datad => \t1|Add0~50_combout\,
	combout => \t1|Selector11~0_combout\);

-- Location: FF_X24_Y15_N9
\t1|n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector11~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(25));

-- Location: LCCOMB_X22_Y15_N20
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

-- Location: LCCOMB_X24_Y15_N10
\t1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector10~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(26) & ((!\t1|Add0~52_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~52_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(26),
	datad => \t1|Add0~52_combout\,
	combout => \t1|Selector10~0_combout\);

-- Location: FF_X24_Y15_N11
\t1|n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector10~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(26));

-- Location: LCCOMB_X22_Y15_N22
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

-- Location: LCCOMB_X23_Y15_N30
\t1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector9~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(27) & ((!\t1|Add0~54_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~54_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(27),
	datad => \t1|Add0~54_combout\,
	combout => \t1|Selector9~0_combout\);

-- Location: FF_X23_Y15_N31
\t1|n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector9~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(27));

-- Location: LCCOMB_X22_Y15_N24
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

-- Location: LCCOMB_X23_Y15_N18
\t1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector8~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(28) & ((!\t1|Add0~56_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~56_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(28),
	datad => \t1|Add0~56_combout\,
	combout => \t1|Selector8~0_combout\);

-- Location: FF_X23_Y15_N19
\t1|n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector8~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(28));

-- Location: LCCOMB_X22_Y15_N26
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

-- Location: LCCOMB_X23_Y15_N16
\t1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector7~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(29) & ((!\t1|Add0~58_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~58_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(29),
	datad => \t1|Add0~58_combout\,
	combout => \t1|Selector7~0_combout\);

-- Location: FF_X23_Y15_N17
\t1|n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector7~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(29));

-- Location: LCCOMB_X22_Y15_N28
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

-- Location: LCCOMB_X23_Y15_N22
\t1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector6~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(30) & ((!\t1|Add0~60_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~60_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(30),
	datad => \t1|Add0~60_combout\,
	combout => \t1|Selector6~0_combout\);

-- Location: FF_X23_Y15_N23
\t1|n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector6~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(30));

-- Location: LCCOMB_X23_Y15_N24
\t1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~0_combout\ = (!\t1|n\(31) & (!\t1|n\(29) & (!\t1|n\(30) & !\t1|n\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(31),
	datab => \t1|n\(29),
	datac => \t1|n\(30),
	datad => \t1|n\(28),
	combout => \t1|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y15_N6
\t1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~3_combout\ = (!\t1|n\(16) & (!\t1|n\(17) & (!\t1|n\(19) & !\t1|n\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(16),
	datab => \t1|n\(17),
	datac => \t1|n\(19),
	datad => \t1|n\(18),
	combout => \t1|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y15_N10
\t1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~1_combout\ = (!\t1|n\(27) & (!\t1|n\(24) & (!\t1|n\(25) & !\t1|n\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(27),
	datab => \t1|n\(24),
	datac => \t1|n\(25),
	datad => \t1|n\(26),
	combout => \t1|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y15_N14
\t1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~4_combout\ = (\t1|Equal0~2_combout\ & (\t1|Equal0~0_combout\ & (\t1|Equal0~3_combout\ & \t1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~2_combout\,
	datab => \t1|Equal0~0_combout\,
	datac => \t1|Equal0~3_combout\,
	datad => \t1|Equal0~1_combout\,
	combout => \t1|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y16_N10
\t1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~5_combout\ = (!\t1|n\(13) & (!\t1|n\(14) & (!\t1|n\(12) & !\t1|n\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(13),
	datab => \t1|n\(14),
	datac => \t1|n\(12),
	datad => \t1|n\(15),
	combout => \t1|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y16_N28
\t1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~6_combout\ = (!\t1|n\(10) & (!\t1|n\(8) & (!\t1|n\(11) & !\t1|n\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(10),
	datab => \t1|n\(8),
	datac => \t1|n\(11),
	datad => \t1|n\(9),
	combout => \t1|Equal0~6_combout\);

-- Location: LCCOMB_X21_Y16_N22
\t1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~7_combout\ = (!\t1|n\(5) & (!\t1|n\(4) & (!\t1|n\(6) & !\t1|n\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(5),
	datab => \t1|n\(4),
	datac => \t1|n\(6),
	datad => \t1|n\(7),
	combout => \t1|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y16_N30
\t1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~8_combout\ = (!\t1|n\(1) & (!\t1|n\(2) & (!\t1|n\(0) & !\t1|n\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(1),
	datab => \t1|n\(2),
	datac => \t1|n\(0),
	datad => \t1|n\(3),
	combout => \t1|Equal0~8_combout\);

-- Location: LCCOMB_X21_Y16_N24
\t1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~9_combout\ = (\t1|Equal0~5_combout\ & (\t1|Equal0~6_combout\ & (\t1|Equal0~7_combout\ & \t1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~5_combout\,
	datab => \t1|Equal0~6_combout\,
	datac => \t1|Equal0~7_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|Equal0~9_combout\);

-- Location: LCCOMB_X24_Y15_N20
\t1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector1~0_combout\ = (\t1|Equal0~4_combout\ & (!\t1|TXState.IDLE~q\ & \t1|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Equal0~4_combout\,
	datac => \t1|TXState.IDLE~q\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|Selector1~0_combout\);

-- Location: FF_X24_Y15_N21
\t1|TXState.TXR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector1~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|TXState.TXR~q\);

-- Location: LCCOMB_X21_Y15_N24
\t1|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector2~3_combout\ = (\t1|TXState.TXR~q\ & (((\t1|TXState.TXING~q\ & !\t1|Selector2~2_combout\)) # (!\t1|TXState.TXE~q\))) # (!\t1|TXState.TXR~q\ & (((\t1|TXState.TXING~q\ & !\t1|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|TXState.TXR~q\,
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.TXING~q\,
	datad => \t1|Selector2~2_combout\,
	combout => \t1|Selector2~3_combout\);

-- Location: FF_X21_Y15_N25
\t1|TXState.TXING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector2~3_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|TXState.TXING~q\);

-- Location: LCCOMB_X23_Y15_N28
\t1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector5~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(31) & ((!\t1|Add0~62_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~62_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|n\(31),
	datad => \t1|Add0~62_combout\,
	combout => \t1|Selector5~0_combout\);

-- Location: FF_X23_Y15_N29
\t1|n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector5~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(31));

-- Location: LCCOMB_X22_Y15_N30
\t1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~62_combout\ = \t1|n\(31) $ (!\t1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(31),
	cin => \t1|Add0~61\,
	combout => \t1|Add0~62_combout\);

-- Location: LCCOMB_X21_Y15_N30
\t1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector2~0_combout\ = (\t1|TXState.TXE~q\) # (\t1|TXState.TXR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.TXR~q\,
	combout => \t1|Selector2~0_combout\);

-- Location: LCCOMB_X21_Y15_N8
\t1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector2~1_combout\ = (\t1|Selector2~0_combout\) # ((!\t1|TXState.TXING~q\ & (\t1|Equal0~4_combout\ & \t1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Selector2~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|Equal0~4_combout\,
	datad => \t1|Equal0~9_combout\,
	combout => \t1|Selector2~1_combout\);

-- Location: LCCOMB_X21_Y15_N12
\t1|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~5_combout\ = (!\t1|Add0~34_combout\ & (!\t1|Add0~32_combout\ & (!\t1|Add0~30_combout\ & !\t1|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~34_combout\,
	datab => \t1|Add0~32_combout\,
	datac => \t1|Add0~30_combout\,
	datad => \t1|Add0~36_combout\,
	combout => \t1|Selector3~5_combout\);

-- Location: LCCOMB_X21_Y15_N10
\t1|Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~6_combout\ = (!\t1|Add0~38_combout\ & (!\t1|Add0~40_combout\ & (!\t1|Add0~42_combout\ & \t1|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~38_combout\,
	datab => \t1|Add0~40_combout\,
	datac => \t1|Add0~42_combout\,
	datad => \t1|Selector3~5_combout\,
	combout => \t1|Selector3~6_combout\);

-- Location: LCCOMB_X21_Y15_N16
\t1|Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~7_combout\ = (!\t1|Add0~44_combout\ & (!\t1|Add0~48_combout\ & (!\t1|Add0~46_combout\ & \t1|Selector3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~44_combout\,
	datab => \t1|Add0~48_combout\,
	datac => \t1|Add0~46_combout\,
	datad => \t1|Selector3~6_combout\,
	combout => \t1|Selector3~7_combout\);

-- Location: LCCOMB_X21_Y15_N6
\t1|Selector3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~8_combout\ = (!\t1|Add0~52_combout\ & (!\t1|Add0~50_combout\ & (!\t1|Add0~54_combout\ & \t1|Selector3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~52_combout\,
	datab => \t1|Add0~50_combout\,
	datac => \t1|Add0~54_combout\,
	datad => \t1|Selector3~7_combout\,
	combout => \t1|Selector3~8_combout\);

-- Location: LCCOMB_X21_Y15_N20
\t1|Selector3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~9_combout\ = (!\t1|Add0~60_combout\ & (!\t1|Add0~58_combout\ & (!\t1|Add0~56_combout\ & \t1|Selector3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~60_combout\,
	datab => \t1|Add0~58_combout\,
	datac => \t1|Add0~56_combout\,
	datad => \t1|Selector3~8_combout\,
	combout => \t1|Selector3~9_combout\);

-- Location: LCCOMB_X21_Y15_N18
\t1|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector2~2_combout\ = (\t1|Selector2~1_combout\) # ((!\t1|Add0~62_combout\ & (\t1|Selector3~4_combout\ & \t1|Selector3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~62_combout\,
	datab => \t1|Selector2~1_combout\,
	datac => \t1|Selector3~4_combout\,
	datad => \t1|Selector3~9_combout\,
	combout => \t1|Selector2~2_combout\);

-- Location: LCCOMB_X21_Y15_N4
\t1|TXState.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|TXState.IDLE~0_combout\ = (\t1|Selector2~2_combout\ & (!\t1|TXState.TXE~q\)) # (!\t1|Selector2~2_combout\ & ((\t1|TXState.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TXState.IDLE~q\,
	datad => \t1|Selector2~2_combout\,
	combout => \t1|TXState.IDLE~0_combout\);

-- Location: FF_X21_Y15_N5
\t1|TXState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|TXState.IDLE~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|TXState.IDLE~q\);

-- Location: LCCOMB_X21_Y15_N0
\t1|n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|n~0_combout\ = (\t1|TXState.TXE~q\) # (!\t1|TXState.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|TXState.IDLE~q\,
	datad => \t1|TXState.TXE~q\,
	combout => \t1|n~0_combout\);

-- Location: LCCOMB_X23_Y16_N26
\t1|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector33~0_combout\ = (\t1|n~0_combout\ & (\t1|n\(3) & ((!\t1|Add0~6_combout\) # (!\t1|TXState.TXING~q\)))) # (!\t1|n~0_combout\ & (((!\t1|Add0~6_combout\)) # (!\t1|TXState.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n~0_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|Add0~6_combout\,
	datad => \t1|n\(3),
	combout => \t1|Selector33~0_combout\);

-- Location: FF_X22_Y16_N25
\t1|n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	asdata => \t1|Selector33~0_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|n\(3));

-- Location: LCCOMB_X21_Y15_N26
\t1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~0_combout\ = (\t1|Add0~6_combout\ & (\t1|TXState.TXING~q\ & (!\t1|Add0~0_combout\ & !\t1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~6_combout\,
	datab => \t1|TXState.TXING~q\,
	datac => \t1|Add0~0_combout\,
	datad => \t1|Add0~2_combout\,
	combout => \t1|Selector3~0_combout\);

-- Location: LCCOMB_X21_Y15_N28
\t1|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~3_combout\ = (!\t1|Add0~24_combout\ & (!\t1|Add0~22_combout\ & (!\t1|Add0~26_combout\ & !\t1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~24_combout\,
	datab => \t1|Add0~22_combout\,
	datac => \t1|Add0~26_combout\,
	datad => \t1|Add0~28_combout\,
	combout => \t1|Selector3~3_combout\);

-- Location: LCCOMB_X21_Y16_N30
\t1|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~1_combout\ = (!\t1|Add0~10_combout\ & (!\t1|Add0~8_combout\ & (!\t1|Add0~12_combout\ & !\t1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~10_combout\,
	datab => \t1|Add0~8_combout\,
	datac => \t1|Add0~12_combout\,
	datad => \t1|Add0~4_combout\,
	combout => \t1|Selector3~1_combout\);

-- Location: LCCOMB_X21_Y16_N12
\t1|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~2_combout\ = (!\t1|Add0~20_combout\ & (!\t1|Add0~18_combout\ & (!\t1|Add0~14_combout\ & !\t1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~20_combout\,
	datab => \t1|Add0~18_combout\,
	datac => \t1|Add0~14_combout\,
	datad => \t1|Add0~16_combout\,
	combout => \t1|Selector3~2_combout\);

-- Location: LCCOMB_X21_Y15_N14
\t1|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~4_combout\ = (\t1|Selector3~0_combout\ & (\t1|Selector3~3_combout\ & (\t1|Selector3~1_combout\ & \t1|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Selector3~0_combout\,
	datab => \t1|Selector3~3_combout\,
	datac => \t1|Selector3~1_combout\,
	datad => \t1|Selector3~2_combout\,
	combout => \t1|Selector3~4_combout\);

-- Location: LCCOMB_X21_Y15_N2
\t1|Selector3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Selector3~10_combout\ = (\t1|Selector3~4_combout\ & (!\t1|Add0~62_combout\ & \t1|Selector3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Selector3~4_combout\,
	datac => \t1|Add0~62_combout\,
	datad => \t1|Selector3~9_combout\,
	combout => \t1|Selector3~10_combout\);

-- Location: FF_X21_Y15_N3
\t1|TXState.TXE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \t1|f1|ALT_INV_temp~clkctrl_outclk\,
	d => \t1|Selector3~10_combout\,
	clrn => \t1|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|TXState.TXE~q\);

-- Location: LCCOMB_X24_Y16_N14
\t1|TX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|TX~0_combout\ = (!\t1|TX~q\ & (((\t1|ReSend~q\) # (!\t1|TXState.IDLE~q\)) # (!\RESet~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESet~input_o\,
	datab => \t1|TX~q\,
	datac => \t1|TXState.IDLE~q\,
	datad => \t1|ReSend~q\,
	combout => \t1|TX~0_combout\);

-- Location: FF_X32_Y10_N11
\r1|f1|K[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(17));

-- Location: LCCOMB_X32_Y11_N8
\r1|f1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~0_combout\ = \r1|f1|K\(0) $ (VCC)
-- \r1|f1|Add2~1\ = CARRY(\r1|f1|K\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(0),
	datad => VCC,
	combout => \r1|f1|Add2~0_combout\,
	cout => \r1|f1|Add2~1\);

-- Location: LCCOMB_X32_Y11_N0
\r1|f1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal2~0_combout\ = (\r1|f1|Add2~0_combout\ & (!\r1|f1|Add2~2_combout\ & (\r1|f1|Add2~6_combout\ & \r1|f1|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add2~0_combout\,
	datab => \r1|f1|Add2~2_combout\,
	datac => \r1|f1|Add2~6_combout\,
	datad => \r1|f1|Add2~4_combout\,
	combout => \r1|f1|Equal2~0_combout\);

-- Location: LCCOMB_X32_Y11_N6
\r1|f1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal2~1_combout\ = (!\r1|f1|Add2~12_combout\ & (!\r1|f1|Add2~14_combout\ & (!\r1|f1|Add2~8_combout\ & !\r1|f1|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add2~12_combout\,
	datab => \r1|f1|Add2~14_combout\,
	datac => \r1|f1|Add2~8_combout\,
	datad => \r1|f1|Add2~10_combout\,
	combout => \r1|f1|Equal2~1_combout\);

-- Location: LCCOMB_X33_Y11_N22
\r1|f1|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal2~2_combout\ = (!\r1|f1|Add2~22_combout\ & (!\r1|f1|Add2~16_combout\ & (!\r1|f1|Add2~18_combout\ & !\r1|f1|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add2~22_combout\,
	datab => \r1|f1|Add2~16_combout\,
	datac => \r1|f1|Add2~18_combout\,
	datad => \r1|f1|Add2~20_combout\,
	combout => \r1|f1|Equal2~2_combout\);

-- Location: LCCOMB_X32_Y10_N26
\r1|f1|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal2~3_combout\ = (!\r1|f1|Add2~30_combout\ & (!\r1|f1|Add2~26_combout\ & (!\r1|f1|Add2~28_combout\ & !\r1|f1|Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add2~30_combout\,
	datab => \r1|f1|Add2~26_combout\,
	datac => \r1|f1|Add2~28_combout\,
	datad => \r1|f1|Add2~24_combout\,
	combout => \r1|f1|Equal2~3_combout\);

-- Location: LCCOMB_X33_Y11_N30
\r1|f1|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal2~4_combout\ = (\r1|f1|Equal2~0_combout\ & (\r1|f1|Equal2~1_combout\ & (\r1|f1|Equal2~2_combout\ & \r1|f1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Equal2~0_combout\,
	datab => \r1|f1|Equal2~1_combout\,
	datac => \r1|f1|Equal2~2_combout\,
	datad => \r1|f1|Equal2~3_combout\,
	combout => \r1|f1|Equal2~4_combout\);

-- Location: FF_X32_Y10_N21
\r1|f1|K[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(22));

-- Location: LCCOMB_X32_Y10_N10
\r1|f1|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~34_combout\ = (\r1|f1|K\(17) & (!\r1|f1|Add2~33\)) # (!\r1|f1|K\(17) & ((\r1|f1|Add2~33\) # (GND)))
-- \r1|f1|Add2~35\ = CARRY((!\r1|f1|Add2~33\) # (!\r1|f1|K\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(17),
	datad => VCC,
	cin => \r1|f1|Add2~33\,
	combout => \r1|f1|Add2~34_combout\,
	cout => \r1|f1|Add2~35\);

-- Location: LCCOMB_X32_Y10_N12
\r1|f1|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~36_combout\ = (\r1|f1|K\(18) & (\r1|f1|Add2~35\ $ (GND))) # (!\r1|f1|K\(18) & (!\r1|f1|Add2~35\ & VCC))
-- \r1|f1|Add2~37\ = CARRY((\r1|f1|K\(18) & !\r1|f1|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(18),
	datad => VCC,
	cin => \r1|f1|Add2~35\,
	combout => \r1|f1|Add2~36_combout\,
	cout => \r1|f1|Add2~37\);

-- Location: FF_X32_Y10_N13
\r1|f1|K[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(18));

-- Location: LCCOMB_X32_Y10_N14
\r1|f1|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~38_combout\ = (\r1|f1|K\(19) & (!\r1|f1|Add2~37\)) # (!\r1|f1|K\(19) & ((\r1|f1|Add2~37\) # (GND)))
-- \r1|f1|Add2~39\ = CARRY((!\r1|f1|Add2~37\) # (!\r1|f1|K\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|K\(19),
	datad => VCC,
	cin => \r1|f1|Add2~37\,
	combout => \r1|f1|Add2~38_combout\,
	cout => \r1|f1|Add2~39\);

-- Location: FF_X32_Y10_N15
\r1|f1|K[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(19));

-- Location: LCCOMB_X32_Y10_N16
\r1|f1|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~40_combout\ = (\r1|f1|K\(20) & (\r1|f1|Add2~39\ $ (GND))) # (!\r1|f1|K\(20) & (!\r1|f1|Add2~39\ & VCC))
-- \r1|f1|Add2~41\ = CARRY((\r1|f1|K\(20) & !\r1|f1|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(20),
	datad => VCC,
	cin => \r1|f1|Add2~39\,
	combout => \r1|f1|Add2~40_combout\,
	cout => \r1|f1|Add2~41\);

-- Location: FF_X32_Y10_N17
\r1|f1|K[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(20));

-- Location: LCCOMB_X32_Y10_N18
\r1|f1|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~42_combout\ = (\r1|f1|K\(21) & (!\r1|f1|Add2~41\)) # (!\r1|f1|K\(21) & ((\r1|f1|Add2~41\) # (GND)))
-- \r1|f1|Add2~43\ = CARRY((!\r1|f1|Add2~41\) # (!\r1|f1|K\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(21),
	datad => VCC,
	cin => \r1|f1|Add2~41\,
	combout => \r1|f1|Add2~42_combout\,
	cout => \r1|f1|Add2~43\);

-- Location: FF_X32_Y10_N19
\r1|f1|K[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(21));

-- Location: LCCOMB_X32_Y10_N20
\r1|f1|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~44_combout\ = (\r1|f1|K\(22) & (\r1|f1|Add2~43\ $ (GND))) # (!\r1|f1|K\(22) & (!\r1|f1|Add2~43\ & VCC))
-- \r1|f1|Add2~45\ = CARRY((\r1|f1|K\(22) & !\r1|f1|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|K\(22),
	datad => VCC,
	cin => \r1|f1|Add2~43\,
	combout => \r1|f1|Add2~44_combout\,
	cout => \r1|f1|Add2~45\);

-- Location: FF_X32_Y10_N23
\r1|f1|K[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(23));

-- Location: LCCOMB_X32_Y10_N22
\r1|f1|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~46_combout\ = (\r1|f1|K\(23) & (!\r1|f1|Add2~45\)) # (!\r1|f1|K\(23) & ((\r1|f1|Add2~45\) # (GND)))
-- \r1|f1|Add2~47\ = CARRY((!\r1|f1|Add2~45\) # (!\r1|f1|K\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|K\(23),
	datad => VCC,
	cin => \r1|f1|Add2~45\,
	combout => \r1|f1|Add2~46_combout\,
	cout => \r1|f1|Add2~47\);

-- Location: FF_X32_Y10_N25
\r1|f1|K[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(24));

-- Location: LCCOMB_X32_Y10_N24
\r1|f1|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~48_combout\ = \r1|f1|Add2~47\ $ (!\r1|f1|K\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \r1|f1|K\(24),
	cin => \r1|f1|Add2~47\,
	combout => \r1|f1|Add2~48_combout\);

-- Location: LCCOMB_X33_Y11_N24
\r1|f1|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal2~6_combout\ = (!\r1|f1|Add2~42_combout\ & !\r1|f1|Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r1|f1|Add2~42_combout\,
	datad => \r1|f1|Add2~40_combout\,
	combout => \r1|f1|Equal2~6_combout\);

-- Location: LCCOMB_X33_Y11_N18
\r1|f1|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal2~7_combout\ = (!\r1|f1|Add2~44_combout\ & (!\r1|f1|Add2~46_combout\ & (!\r1|f1|Add2~48_combout\ & \r1|f1|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add2~44_combout\,
	datab => \r1|f1|Add2~46_combout\,
	datac => \r1|f1|Add2~48_combout\,
	datad => \r1|f1|Equal2~6_combout\,
	combout => \r1|f1|Equal2~7_combout\);

-- Location: LCCOMB_X32_Y11_N4
\r1|f1|K~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|K~0_combout\ = (\r1|f1|Add2~0_combout\ & (((!\r1|f1|Equal2~7_combout\) # (!\r1|f1|Equal2~4_combout\)) # (!\r1|f1|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Equal2~5_combout\,
	datab => \r1|f1|Add2~0_combout\,
	datac => \r1|f1|Equal2~4_combout\,
	datad => \r1|f1|Equal2~7_combout\,
	combout => \r1|f1|K~0_combout\);

-- Location: FF_X32_Y11_N5
\r1|f1|K[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|K~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(0));

-- Location: LCCOMB_X32_Y11_N10
\r1|f1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~2_combout\ = (\r1|f1|K\(1) & (!\r1|f1|Add2~1\)) # (!\r1|f1|K\(1) & ((\r1|f1|Add2~1\) # (GND)))
-- \r1|f1|Add2~3\ = CARRY((!\r1|f1|Add2~1\) # (!\r1|f1|K\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|K\(1),
	datad => VCC,
	cin => \r1|f1|Add2~1\,
	combout => \r1|f1|Add2~2_combout\,
	cout => \r1|f1|Add2~3\);

-- Location: FF_X32_Y11_N11
\r1|f1|K[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(1));

-- Location: LCCOMB_X32_Y11_N12
\r1|f1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~4_combout\ = (\r1|f1|K\(2) & (\r1|f1|Add2~3\ $ (GND))) # (!\r1|f1|K\(2) & (!\r1|f1|Add2~3\ & VCC))
-- \r1|f1|Add2~5\ = CARRY((\r1|f1|K\(2) & !\r1|f1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(2),
	datad => VCC,
	cin => \r1|f1|Add2~3\,
	combout => \r1|f1|Add2~4_combout\,
	cout => \r1|f1|Add2~5\);

-- Location: LCCOMB_X32_Y10_N30
\r1|f1|K~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|K~1_combout\ = (!\r1|f1|Add2~46_combout\ & (!\r1|f1|Add2~44_combout\ & (!\r1|f1|Add2~48_combout\ & \r1|f1|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add2~46_combout\,
	datab => \r1|f1|Add2~44_combout\,
	datac => \r1|f1|Add2~48_combout\,
	datad => \r1|f1|Equal2~5_combout\,
	combout => \r1|f1|K~1_combout\);

-- Location: LCCOMB_X32_Y11_N2
\r1|f1|K~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|K~2_combout\ = (\r1|f1|Add2~4_combout\ & (((!\r1|f1|K~1_combout\) # (!\r1|f1|Equal2~4_combout\)) # (!\r1|f1|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add2~4_combout\,
	datab => \r1|f1|Equal2~6_combout\,
	datac => \r1|f1|Equal2~4_combout\,
	datad => \r1|f1|K~1_combout\,
	combout => \r1|f1|K~2_combout\);

-- Location: FF_X32_Y11_N3
\r1|f1|K[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|K~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(2));

-- Location: LCCOMB_X32_Y11_N14
\r1|f1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~6_combout\ = (\r1|f1|K\(3) & (!\r1|f1|Add2~5\)) # (!\r1|f1|K\(3) & ((\r1|f1|Add2~5\) # (GND)))
-- \r1|f1|Add2~7\ = CARRY((!\r1|f1|Add2~5\) # (!\r1|f1|K\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|K\(3),
	datad => VCC,
	cin => \r1|f1|Add2~5\,
	combout => \r1|f1|Add2~6_combout\,
	cout => \r1|f1|Add2~7\);

-- Location: LCCOMB_X33_Y11_N20
\r1|f1|K~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|K~3_combout\ = (\r1|f1|Add2~6_combout\ & (((!\r1|f1|Equal2~7_combout\) # (!\r1|f1|Equal2~4_combout\)) # (!\r1|f1|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Equal2~5_combout\,
	datab => \r1|f1|Add2~6_combout\,
	datac => \r1|f1|Equal2~4_combout\,
	datad => \r1|f1|Equal2~7_combout\,
	combout => \r1|f1|K~3_combout\);

-- Location: FF_X33_Y11_N21
\r1|f1|K[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|K~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(3));

-- Location: LCCOMB_X32_Y11_N16
\r1|f1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~8_combout\ = (\r1|f1|K\(4) & (\r1|f1|Add2~7\ $ (GND))) # (!\r1|f1|K\(4) & (!\r1|f1|Add2~7\ & VCC))
-- \r1|f1|Add2~9\ = CARRY((\r1|f1|K\(4) & !\r1|f1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(4),
	datad => VCC,
	cin => \r1|f1|Add2~7\,
	combout => \r1|f1|Add2~8_combout\,
	cout => \r1|f1|Add2~9\);

-- Location: FF_X32_Y11_N17
\r1|f1|K[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(4));

-- Location: LCCOMB_X32_Y11_N18
\r1|f1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~10_combout\ = (\r1|f1|K\(5) & (!\r1|f1|Add2~9\)) # (!\r1|f1|K\(5) & ((\r1|f1|Add2~9\) # (GND)))
-- \r1|f1|Add2~11\ = CARRY((!\r1|f1|Add2~9\) # (!\r1|f1|K\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(5),
	datad => VCC,
	cin => \r1|f1|Add2~9\,
	combout => \r1|f1|Add2~10_combout\,
	cout => \r1|f1|Add2~11\);

-- Location: FF_X32_Y11_N19
\r1|f1|K[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(5));

-- Location: LCCOMB_X32_Y11_N20
\r1|f1|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~12_combout\ = (\r1|f1|K\(6) & (\r1|f1|Add2~11\ $ (GND))) # (!\r1|f1|K\(6) & (!\r1|f1|Add2~11\ & VCC))
-- \r1|f1|Add2~13\ = CARRY((\r1|f1|K\(6) & !\r1|f1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(6),
	datad => VCC,
	cin => \r1|f1|Add2~11\,
	combout => \r1|f1|Add2~12_combout\,
	cout => \r1|f1|Add2~13\);

-- Location: FF_X32_Y11_N21
\r1|f1|K[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(6));

-- Location: LCCOMB_X32_Y11_N22
\r1|f1|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~14_combout\ = (\r1|f1|K\(7) & (!\r1|f1|Add2~13\)) # (!\r1|f1|K\(7) & ((\r1|f1|Add2~13\) # (GND)))
-- \r1|f1|Add2~15\ = CARRY((!\r1|f1|Add2~13\) # (!\r1|f1|K\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|K\(7),
	datad => VCC,
	cin => \r1|f1|Add2~13\,
	combout => \r1|f1|Add2~14_combout\,
	cout => \r1|f1|Add2~15\);

-- Location: FF_X32_Y11_N23
\r1|f1|K[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(7));

-- Location: LCCOMB_X32_Y11_N24
\r1|f1|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~16_combout\ = (\r1|f1|K\(8) & (\r1|f1|Add2~15\ $ (GND))) # (!\r1|f1|K\(8) & (!\r1|f1|Add2~15\ & VCC))
-- \r1|f1|Add2~17\ = CARRY((\r1|f1|K\(8) & !\r1|f1|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(8),
	datad => VCC,
	cin => \r1|f1|Add2~15\,
	combout => \r1|f1|Add2~16_combout\,
	cout => \r1|f1|Add2~17\);

-- Location: FF_X32_Y11_N25
\r1|f1|K[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(8));

-- Location: LCCOMB_X32_Y11_N26
\r1|f1|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~18_combout\ = (\r1|f1|K\(9) & (!\r1|f1|Add2~17\)) # (!\r1|f1|K\(9) & ((\r1|f1|Add2~17\) # (GND)))
-- \r1|f1|Add2~19\ = CARRY((!\r1|f1|Add2~17\) # (!\r1|f1|K\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|K\(9),
	datad => VCC,
	cin => \r1|f1|Add2~17\,
	combout => \r1|f1|Add2~18_combout\,
	cout => \r1|f1|Add2~19\);

-- Location: FF_X32_Y11_N27
\r1|f1|K[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(9));

-- Location: LCCOMB_X32_Y11_N28
\r1|f1|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~20_combout\ = (\r1|f1|K\(10) & (\r1|f1|Add2~19\ $ (GND))) # (!\r1|f1|K\(10) & (!\r1|f1|Add2~19\ & VCC))
-- \r1|f1|Add2~21\ = CARRY((\r1|f1|K\(10) & !\r1|f1|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(10),
	datad => VCC,
	cin => \r1|f1|Add2~19\,
	combout => \r1|f1|Add2~20_combout\,
	cout => \r1|f1|Add2~21\);

-- Location: FF_X32_Y11_N29
\r1|f1|K[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(10));

-- Location: LCCOMB_X32_Y11_N30
\r1|f1|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~22_combout\ = (\r1|f1|K\(11) & (!\r1|f1|Add2~21\)) # (!\r1|f1|K\(11) & ((\r1|f1|Add2~21\) # (GND)))
-- \r1|f1|Add2~23\ = CARRY((!\r1|f1|Add2~21\) # (!\r1|f1|K\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|K\(11),
	datad => VCC,
	cin => \r1|f1|Add2~21\,
	combout => \r1|f1|Add2~22_combout\,
	cout => \r1|f1|Add2~23\);

-- Location: FF_X32_Y11_N31
\r1|f1|K[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(11));

-- Location: LCCOMB_X32_Y10_N0
\r1|f1|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~24_combout\ = (\r1|f1|K\(12) & (\r1|f1|Add2~23\ $ (GND))) # (!\r1|f1|K\(12) & (!\r1|f1|Add2~23\ & VCC))
-- \r1|f1|Add2~25\ = CARRY((\r1|f1|K\(12) & !\r1|f1|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|K\(12),
	datad => VCC,
	cin => \r1|f1|Add2~23\,
	combout => \r1|f1|Add2~24_combout\,
	cout => \r1|f1|Add2~25\);

-- Location: FF_X32_Y10_N1
\r1|f1|K[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(12));

-- Location: LCCOMB_X32_Y10_N2
\r1|f1|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~26_combout\ = (\r1|f1|K\(13) & (!\r1|f1|Add2~25\)) # (!\r1|f1|K\(13) & ((\r1|f1|Add2~25\) # (GND)))
-- \r1|f1|Add2~27\ = CARRY((!\r1|f1|Add2~25\) # (!\r1|f1|K\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(13),
	datad => VCC,
	cin => \r1|f1|Add2~25\,
	combout => \r1|f1|Add2~26_combout\,
	cout => \r1|f1|Add2~27\);

-- Location: FF_X32_Y10_N3
\r1|f1|K[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(13));

-- Location: LCCOMB_X32_Y10_N4
\r1|f1|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~28_combout\ = (\r1|f1|K\(14) & (\r1|f1|Add2~27\ $ (GND))) # (!\r1|f1|K\(14) & (!\r1|f1|Add2~27\ & VCC))
-- \r1|f1|Add2~29\ = CARRY((\r1|f1|K\(14) & !\r1|f1|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|K\(14),
	datad => VCC,
	cin => \r1|f1|Add2~27\,
	combout => \r1|f1|Add2~28_combout\,
	cout => \r1|f1|Add2~29\);

-- Location: FF_X32_Y10_N5
\r1|f1|K[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(14));

-- Location: LCCOMB_X32_Y10_N6
\r1|f1|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~30_combout\ = (\r1|f1|K\(15) & (!\r1|f1|Add2~29\)) # (!\r1|f1|K\(15) & ((\r1|f1|Add2~29\) # (GND)))
-- \r1|f1|Add2~31\ = CARRY((!\r1|f1|Add2~29\) # (!\r1|f1|K\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|f1|K\(15),
	datad => VCC,
	cin => \r1|f1|Add2~29\,
	combout => \r1|f1|Add2~30_combout\,
	cout => \r1|f1|Add2~31\);

-- Location: FF_X32_Y10_N7
\r1|f1|K[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(15));

-- Location: LCCOMB_X32_Y10_N8
\r1|f1|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Add2~32_combout\ = (\r1|f1|K\(16) & (\r1|f1|Add2~31\ $ (GND))) # (!\r1|f1|K\(16) & (!\r1|f1|Add2~31\ & VCC))
-- \r1|f1|Add2~33\ = CARRY((\r1|f1|K\(16) & !\r1|f1|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|K\(16),
	datad => VCC,
	cin => \r1|f1|Add2~31\,
	combout => \r1|f1|Add2~32_combout\,
	cout => \r1|f1|Add2~33\);

-- Location: FF_X32_Y10_N9
\r1|f1|K[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|K\(16));

-- Location: LCCOMB_X32_Y10_N28
\r1|f1|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|Equal2~5_combout\ = (!\r1|f1|Add2~34_combout\ & (!\r1|f1|Add2~32_combout\ & (!\r1|f1|Add2~38_combout\ & !\r1|f1|Add2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Add2~34_combout\,
	datab => \r1|f1|Add2~32_combout\,
	datac => \r1|f1|Add2~38_combout\,
	datad => \r1|f1|Add2~36_combout\,
	combout => \r1|f1|Equal2~5_combout\);

-- Location: LCCOMB_X33_Y11_N10
\r1|f1|temp2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|temp2~0_combout\ = \r1|f1|temp2~q\ $ (((\r1|f1|Equal2~5_combout\ & (\r1|f1|Equal2~4_combout\ & \r1|f1|Equal2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|Equal2~5_combout\,
	datab => \r1|f1|temp2~q\,
	datac => \r1|f1|Equal2~4_combout\,
	datad => \r1|f1|Equal2~7_combout\,
	combout => \r1|f1|temp2~0_combout\);

-- Location: LCCOMB_X33_Y11_N16
\r1|f1|temp2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|f1|temp2~feeder_combout\ = \r1|f1|temp2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|f1|temp2~0_combout\,
	combout => \r1|f1|temp2~feeder_combout\);

-- Location: FF_X33_Y11_N17
\r1|f1|temp2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \r1|f1|temp2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|f1|temp2~q\);

-- Location: CLKCTRL_G6
\r1|f1|temp2~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \r1|f1|temp2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \r1|f1|temp2~clkctrl_outclk\);

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

-- Location: LCCOMB_X21_Y14_N0
\r1|rcnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[0]~32_combout\ = \r1|rcnt\(0) $ (VCC)
-- \r1|rcnt[0]~33\ = CARRY(\r1|rcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(0),
	datad => VCC,
	combout => \r1|rcnt[0]~32_combout\,
	cout => \r1|rcnt[0]~33\);

-- Location: LCCOMB_X22_Y14_N22
\r1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Add0~0_combout\ = \r1|count\(3) $ (((\r1|count\(1) & (\r1|count\(2) & \r1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|count\(1),
	datab => \r1|count\(2),
	datac => \r1|count\(0),
	datad => \r1|count\(3),
	combout => \r1|Add0~0_combout\);

-- Location: LCCOMB_X22_Y14_N18
\r1|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector36~0_combout\ = (\r1|Add0~0_combout\ & ((\r1|state.r_wait~q\ & (!\r1|Selector2~0_combout\)) # (!\r1|state.r_wait~q\ & ((!\r1|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Selector2~0_combout\,
	datab => \r1|Equal0~0_combout\,
	datac => \r1|Add0~0_combout\,
	datad => \r1|state.r_wait~q\,
	combout => \r1|Selector36~0_combout\);

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

-- Location: LCCOMB_X21_Y14_N4
\r1|rcnt[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[2]~37_combout\ = (\r1|rcnt\(2) & (\r1|rcnt[1]~36\ $ (GND))) # (!\r1|rcnt\(2) & (!\r1|rcnt[1]~36\ & VCC))
-- \r1|rcnt[2]~38\ = CARRY((\r1|rcnt\(2) & !\r1|rcnt[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(2),
	datad => VCC,
	cin => \r1|rcnt[1]~36\,
	combout => \r1|rcnt[2]~37_combout\,
	cout => \r1|rcnt[2]~38\);

-- Location: LCCOMB_X21_Y14_N6
\r1|rcnt[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[3]~39_combout\ = (\r1|rcnt\(3) & (!\r1|rcnt[2]~38\)) # (!\r1|rcnt\(3) & ((\r1|rcnt[2]~38\) # (GND)))
-- \r1|rcnt[3]~40\ = CARRY((!\r1|rcnt[2]~38\) # (!\r1|rcnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(3),
	datad => VCC,
	cin => \r1|rcnt[2]~38\,
	combout => \r1|rcnt[3]~39_combout\,
	cout => \r1|rcnt[3]~40\);

-- Location: LCCOMB_X22_Y14_N16
\r1|rcnt[31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[31]~34_combout\ = (\RESet~input_o\ & ((\r1|state.r_start~q\ & (\r1|state.r_sample~q\)) # (!\r1|state.r_start~q\ & ((!\RX~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESet~input_o\,
	datab => \r1|state.r_sample~q\,
	datac => \RX~input_o\,
	datad => \r1|state.r_start~q\,
	combout => \r1|rcnt[31]~34_combout\);

-- Location: FF_X21_Y14_N7
\r1|rcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[3]~39_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(3));

-- Location: LCCOMB_X21_Y14_N8
\r1|rcnt[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[4]~41_combout\ = (\r1|rcnt\(4) & (\r1|rcnt[3]~40\ $ (GND))) # (!\r1|rcnt\(4) & (!\r1|rcnt[3]~40\ & VCC))
-- \r1|rcnt[4]~42\ = CARRY((\r1|rcnt\(4) & !\r1|rcnt[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(4),
	datad => VCC,
	cin => \r1|rcnt[3]~40\,
	combout => \r1|rcnt[4]~41_combout\,
	cout => \r1|rcnt[4]~42\);

-- Location: FF_X21_Y14_N9
\r1|rcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[4]~41_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(4));

-- Location: LCCOMB_X21_Y14_N10
\r1|rcnt[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[5]~43_combout\ = (\r1|rcnt\(5) & (!\r1|rcnt[4]~42\)) # (!\r1|rcnt\(5) & ((\r1|rcnt[4]~42\) # (GND)))
-- \r1|rcnt[5]~44\ = CARRY((!\r1|rcnt[4]~42\) # (!\r1|rcnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(5),
	datad => VCC,
	cin => \r1|rcnt[4]~42\,
	combout => \r1|rcnt[5]~43_combout\,
	cout => \r1|rcnt[5]~44\);

-- Location: FF_X21_Y14_N11
\r1|rcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[5]~43_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(5));

-- Location: LCCOMB_X21_Y14_N12
\r1|rcnt[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[6]~45_combout\ = (\r1|rcnt\(6) & (\r1|rcnt[5]~44\ $ (GND))) # (!\r1|rcnt\(6) & (!\r1|rcnt[5]~44\ & VCC))
-- \r1|rcnt[6]~46\ = CARRY((\r1|rcnt\(6) & !\r1|rcnt[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(6),
	datad => VCC,
	cin => \r1|rcnt[5]~44\,
	combout => \r1|rcnt[6]~45_combout\,
	cout => \r1|rcnt[6]~46\);

-- Location: FF_X21_Y14_N13
\r1|rcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[6]~45_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(6));

-- Location: LCCOMB_X21_Y14_N14
\r1|rcnt[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[7]~47_combout\ = (\r1|rcnt\(7) & (!\r1|rcnt[6]~46\)) # (!\r1|rcnt\(7) & ((\r1|rcnt[6]~46\) # (GND)))
-- \r1|rcnt[7]~48\ = CARRY((!\r1|rcnt[6]~46\) # (!\r1|rcnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(7),
	datad => VCC,
	cin => \r1|rcnt[6]~46\,
	combout => \r1|rcnt[7]~47_combout\,
	cout => \r1|rcnt[7]~48\);

-- Location: FF_X21_Y14_N15
\r1|rcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[7]~47_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(7));

-- Location: LCCOMB_X21_Y14_N16
\r1|rcnt[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[8]~49_combout\ = (\r1|rcnt\(8) & (\r1|rcnt[7]~48\ $ (GND))) # (!\r1|rcnt\(8) & (!\r1|rcnt[7]~48\ & VCC))
-- \r1|rcnt[8]~50\ = CARRY((\r1|rcnt\(8) & !\r1|rcnt[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(8),
	datad => VCC,
	cin => \r1|rcnt[7]~48\,
	combout => \r1|rcnt[8]~49_combout\,
	cout => \r1|rcnt[8]~50\);

-- Location: FF_X21_Y14_N17
\r1|rcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[8]~49_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(8));

-- Location: LCCOMB_X21_Y14_N18
\r1|rcnt[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[9]~51_combout\ = (\r1|rcnt\(9) & (!\r1|rcnt[8]~50\)) # (!\r1|rcnt\(9) & ((\r1|rcnt[8]~50\) # (GND)))
-- \r1|rcnt[9]~52\ = CARRY((!\r1|rcnt[8]~50\) # (!\r1|rcnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(9),
	datad => VCC,
	cin => \r1|rcnt[8]~50\,
	combout => \r1|rcnt[9]~51_combout\,
	cout => \r1|rcnt[9]~52\);

-- Location: FF_X21_Y14_N19
\r1|rcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[9]~51_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(9));

-- Location: LCCOMB_X21_Y14_N20
\r1|rcnt[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[10]~53_combout\ = (\r1|rcnt\(10) & (\r1|rcnt[9]~52\ $ (GND))) # (!\r1|rcnt\(10) & (!\r1|rcnt[9]~52\ & VCC))
-- \r1|rcnt[10]~54\ = CARRY((\r1|rcnt\(10) & !\r1|rcnt[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(10),
	datad => VCC,
	cin => \r1|rcnt[9]~52\,
	combout => \r1|rcnt[10]~53_combout\,
	cout => \r1|rcnt[10]~54\);

-- Location: FF_X21_Y14_N21
\r1|rcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[10]~53_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(10));

-- Location: LCCOMB_X21_Y14_N22
\r1|rcnt[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[11]~55_combout\ = (\r1|rcnt\(11) & (!\r1|rcnt[10]~54\)) # (!\r1|rcnt\(11) & ((\r1|rcnt[10]~54\) # (GND)))
-- \r1|rcnt[11]~56\ = CARRY((!\r1|rcnt[10]~54\) # (!\r1|rcnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(11),
	datad => VCC,
	cin => \r1|rcnt[10]~54\,
	combout => \r1|rcnt[11]~55_combout\,
	cout => \r1|rcnt[11]~56\);

-- Location: FF_X21_Y14_N23
\r1|rcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[11]~55_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(11));

-- Location: LCCOMB_X21_Y14_N24
\r1|rcnt[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[12]~57_combout\ = (\r1|rcnt\(12) & (\r1|rcnt[11]~56\ $ (GND))) # (!\r1|rcnt\(12) & (!\r1|rcnt[11]~56\ & VCC))
-- \r1|rcnt[12]~58\ = CARRY((\r1|rcnt\(12) & !\r1|rcnt[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(12),
	datad => VCC,
	cin => \r1|rcnt[11]~56\,
	combout => \r1|rcnt[12]~57_combout\,
	cout => \r1|rcnt[12]~58\);

-- Location: FF_X21_Y14_N25
\r1|rcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[12]~57_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(12));

-- Location: LCCOMB_X21_Y14_N26
\r1|rcnt[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[13]~59_combout\ = (\r1|rcnt\(13) & (!\r1|rcnt[12]~58\)) # (!\r1|rcnt\(13) & ((\r1|rcnt[12]~58\) # (GND)))
-- \r1|rcnt[13]~60\ = CARRY((!\r1|rcnt[12]~58\) # (!\r1|rcnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(13),
	datad => VCC,
	cin => \r1|rcnt[12]~58\,
	combout => \r1|rcnt[13]~59_combout\,
	cout => \r1|rcnt[13]~60\);

-- Location: FF_X21_Y14_N27
\r1|rcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[13]~59_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(13));

-- Location: LCCOMB_X21_Y14_N28
\r1|rcnt[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[14]~61_combout\ = (\r1|rcnt\(14) & (\r1|rcnt[13]~60\ $ (GND))) # (!\r1|rcnt\(14) & (!\r1|rcnt[13]~60\ & VCC))
-- \r1|rcnt[14]~62\ = CARRY((\r1|rcnt\(14) & !\r1|rcnt[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(14),
	datad => VCC,
	cin => \r1|rcnt[13]~60\,
	combout => \r1|rcnt[14]~61_combout\,
	cout => \r1|rcnt[14]~62\);

-- Location: FF_X21_Y14_N29
\r1|rcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[14]~61_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(14));

-- Location: LCCOMB_X21_Y14_N30
\r1|rcnt[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[15]~63_combout\ = (\r1|rcnt\(15) & (!\r1|rcnt[14]~62\)) # (!\r1|rcnt\(15) & ((\r1|rcnt[14]~62\) # (GND)))
-- \r1|rcnt[15]~64\ = CARRY((!\r1|rcnt[14]~62\) # (!\r1|rcnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(15),
	datad => VCC,
	cin => \r1|rcnt[14]~62\,
	combout => \r1|rcnt[15]~63_combout\,
	cout => \r1|rcnt[15]~64\);

-- Location: FF_X21_Y14_N31
\r1|rcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[15]~63_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(15));

-- Location: LCCOMB_X21_Y13_N0
\r1|rcnt[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[16]~65_combout\ = (\r1|rcnt\(16) & (\r1|rcnt[15]~64\ $ (GND))) # (!\r1|rcnt\(16) & (!\r1|rcnt[15]~64\ & VCC))
-- \r1|rcnt[16]~66\ = CARRY((\r1|rcnt\(16) & !\r1|rcnt[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(16),
	datad => VCC,
	cin => \r1|rcnt[15]~64\,
	combout => \r1|rcnt[16]~65_combout\,
	cout => \r1|rcnt[16]~66\);

-- Location: FF_X21_Y13_N1
\r1|rcnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[16]~65_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(16));

-- Location: LCCOMB_X21_Y13_N2
\r1|rcnt[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[17]~67_combout\ = (\r1|rcnt\(17) & (!\r1|rcnt[16]~66\)) # (!\r1|rcnt\(17) & ((\r1|rcnt[16]~66\) # (GND)))
-- \r1|rcnt[17]~68\ = CARRY((!\r1|rcnt[16]~66\) # (!\r1|rcnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(17),
	datad => VCC,
	cin => \r1|rcnt[16]~66\,
	combout => \r1|rcnt[17]~67_combout\,
	cout => \r1|rcnt[17]~68\);

-- Location: FF_X21_Y13_N3
\r1|rcnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[17]~67_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(17));

-- Location: LCCOMB_X21_Y13_N4
\r1|rcnt[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[18]~69_combout\ = (\r1|rcnt\(18) & (\r1|rcnt[17]~68\ $ (GND))) # (!\r1|rcnt\(18) & (!\r1|rcnt[17]~68\ & VCC))
-- \r1|rcnt[18]~70\ = CARRY((\r1|rcnt\(18) & !\r1|rcnt[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(18),
	datad => VCC,
	cin => \r1|rcnt[17]~68\,
	combout => \r1|rcnt[18]~69_combout\,
	cout => \r1|rcnt[18]~70\);

-- Location: FF_X21_Y13_N5
\r1|rcnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[18]~69_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(18));

-- Location: LCCOMB_X21_Y13_N6
\r1|rcnt[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[19]~71_combout\ = (\r1|rcnt\(19) & (!\r1|rcnt[18]~70\)) # (!\r1|rcnt\(19) & ((\r1|rcnt[18]~70\) # (GND)))
-- \r1|rcnt[19]~72\ = CARRY((!\r1|rcnt[18]~70\) # (!\r1|rcnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(19),
	datad => VCC,
	cin => \r1|rcnt[18]~70\,
	combout => \r1|rcnt[19]~71_combout\,
	cout => \r1|rcnt[19]~72\);

-- Location: FF_X21_Y13_N7
\r1|rcnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[19]~71_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(19));

-- Location: LCCOMB_X21_Y13_N8
\r1|rcnt[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[20]~73_combout\ = (\r1|rcnt\(20) & (\r1|rcnt[19]~72\ $ (GND))) # (!\r1|rcnt\(20) & (!\r1|rcnt[19]~72\ & VCC))
-- \r1|rcnt[20]~74\ = CARRY((\r1|rcnt\(20) & !\r1|rcnt[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(20),
	datad => VCC,
	cin => \r1|rcnt[19]~72\,
	combout => \r1|rcnt[20]~73_combout\,
	cout => \r1|rcnt[20]~74\);

-- Location: FF_X21_Y13_N9
\r1|rcnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[20]~73_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(20));

-- Location: LCCOMB_X21_Y13_N10
\r1|rcnt[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[21]~75_combout\ = (\r1|rcnt\(21) & (!\r1|rcnt[20]~74\)) # (!\r1|rcnt\(21) & ((\r1|rcnt[20]~74\) # (GND)))
-- \r1|rcnt[21]~76\ = CARRY((!\r1|rcnt[20]~74\) # (!\r1|rcnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(21),
	datad => VCC,
	cin => \r1|rcnt[20]~74\,
	combout => \r1|rcnt[21]~75_combout\,
	cout => \r1|rcnt[21]~76\);

-- Location: FF_X21_Y13_N11
\r1|rcnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[21]~75_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(21));

-- Location: LCCOMB_X21_Y13_N12
\r1|rcnt[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[22]~77_combout\ = (\r1|rcnt\(22) & (\r1|rcnt[21]~76\ $ (GND))) # (!\r1|rcnt\(22) & (!\r1|rcnt[21]~76\ & VCC))
-- \r1|rcnt[22]~78\ = CARRY((\r1|rcnt\(22) & !\r1|rcnt[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(22),
	datad => VCC,
	cin => \r1|rcnt[21]~76\,
	combout => \r1|rcnt[22]~77_combout\,
	cout => \r1|rcnt[22]~78\);

-- Location: FF_X21_Y13_N13
\r1|rcnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[22]~77_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(22));

-- Location: LCCOMB_X21_Y13_N14
\r1|rcnt[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[23]~79_combout\ = (\r1|rcnt\(23) & (!\r1|rcnt[22]~78\)) # (!\r1|rcnt\(23) & ((\r1|rcnt[22]~78\) # (GND)))
-- \r1|rcnt[23]~80\ = CARRY((!\r1|rcnt[22]~78\) # (!\r1|rcnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(23),
	datad => VCC,
	cin => \r1|rcnt[22]~78\,
	combout => \r1|rcnt[23]~79_combout\,
	cout => \r1|rcnt[23]~80\);

-- Location: FF_X21_Y13_N15
\r1|rcnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[23]~79_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(23));

-- Location: LCCOMB_X22_Y13_N22
\r1|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Equal1~6_combout\ = (!\r1|rcnt\(21) & (!\r1|rcnt\(22) & (!\r1|rcnt\(20) & !\r1|rcnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(21),
	datab => \r1|rcnt\(22),
	datac => \r1|rcnt\(20),
	datad => \r1|rcnt\(23),
	combout => \r1|Equal1~6_combout\);

-- Location: LCCOMB_X22_Y13_N28
\r1|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Equal1~5_combout\ = (!\r1|rcnt\(17) & (!\r1|rcnt\(18) & (!\r1|rcnt\(19) & !\r1|rcnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(17),
	datab => \r1|rcnt\(18),
	datac => \r1|rcnt\(19),
	datad => \r1|rcnt\(16),
	combout => \r1|Equal1~5_combout\);

-- Location: LCCOMB_X21_Y13_N16
\r1|rcnt[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[24]~81_combout\ = (\r1|rcnt\(24) & (\r1|rcnt[23]~80\ $ (GND))) # (!\r1|rcnt\(24) & (!\r1|rcnt[23]~80\ & VCC))
-- \r1|rcnt[24]~82\ = CARRY((\r1|rcnt\(24) & !\r1|rcnt[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(24),
	datad => VCC,
	cin => \r1|rcnt[23]~80\,
	combout => \r1|rcnt[24]~81_combout\,
	cout => \r1|rcnt[24]~82\);

-- Location: FF_X21_Y13_N17
\r1|rcnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[24]~81_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(24));

-- Location: LCCOMB_X21_Y13_N18
\r1|rcnt[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[25]~83_combout\ = (\r1|rcnt\(25) & (!\r1|rcnt[24]~82\)) # (!\r1|rcnt\(25) & ((\r1|rcnt[24]~82\) # (GND)))
-- \r1|rcnt[25]~84\ = CARRY((!\r1|rcnt[24]~82\) # (!\r1|rcnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(25),
	datad => VCC,
	cin => \r1|rcnt[24]~82\,
	combout => \r1|rcnt[25]~83_combout\,
	cout => \r1|rcnt[25]~84\);

-- Location: FF_X21_Y13_N19
\r1|rcnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[25]~83_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(25));

-- Location: LCCOMB_X21_Y13_N20
\r1|rcnt[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[26]~85_combout\ = (\r1|rcnt\(26) & (\r1|rcnt[25]~84\ $ (GND))) # (!\r1|rcnt\(26) & (!\r1|rcnt[25]~84\ & VCC))
-- \r1|rcnt[26]~86\ = CARRY((\r1|rcnt\(26) & !\r1|rcnt[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(26),
	datad => VCC,
	cin => \r1|rcnt[25]~84\,
	combout => \r1|rcnt[26]~85_combout\,
	cout => \r1|rcnt[26]~86\);

-- Location: FF_X21_Y13_N21
\r1|rcnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[26]~85_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(26));

-- Location: LCCOMB_X21_Y13_N22
\r1|rcnt[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[27]~87_combout\ = (\r1|rcnt\(27) & (!\r1|rcnt[26]~86\)) # (!\r1|rcnt\(27) & ((\r1|rcnt[26]~86\) # (GND)))
-- \r1|rcnt[27]~88\ = CARRY((!\r1|rcnt[26]~86\) # (!\r1|rcnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(27),
	datad => VCC,
	cin => \r1|rcnt[26]~86\,
	combout => \r1|rcnt[27]~87_combout\,
	cout => \r1|rcnt[27]~88\);

-- Location: FF_X21_Y13_N23
\r1|rcnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[27]~87_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(27));

-- Location: LCCOMB_X21_Y13_N24
\r1|rcnt[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[28]~89_combout\ = (\r1|rcnt\(28) & (\r1|rcnt[27]~88\ $ (GND))) # (!\r1|rcnt\(28) & (!\r1|rcnt[27]~88\ & VCC))
-- \r1|rcnt[28]~90\ = CARRY((\r1|rcnt\(28) & !\r1|rcnt[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(28),
	datad => VCC,
	cin => \r1|rcnt[27]~88\,
	combout => \r1|rcnt[28]~89_combout\,
	cout => \r1|rcnt[28]~90\);

-- Location: FF_X21_Y13_N25
\r1|rcnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[28]~89_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(28));

-- Location: LCCOMB_X21_Y13_N26
\r1|rcnt[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[29]~91_combout\ = (\r1|rcnt\(29) & (!\r1|rcnt[28]~90\)) # (!\r1|rcnt\(29) & ((\r1|rcnt[28]~90\) # (GND)))
-- \r1|rcnt[29]~92\ = CARRY((!\r1|rcnt[28]~90\) # (!\r1|rcnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(29),
	datad => VCC,
	cin => \r1|rcnt[28]~90\,
	combout => \r1|rcnt[29]~91_combout\,
	cout => \r1|rcnt[29]~92\);

-- Location: FF_X21_Y13_N27
\r1|rcnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[29]~91_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(29));

-- Location: LCCOMB_X21_Y13_N28
\r1|rcnt[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[30]~93_combout\ = (\r1|rcnt\(30) & (\r1|rcnt[29]~92\ $ (GND))) # (!\r1|rcnt\(30) & (!\r1|rcnt[29]~92\ & VCC))
-- \r1|rcnt[30]~94\ = CARRY((\r1|rcnt\(30) & !\r1|rcnt[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(30),
	datad => VCC,
	cin => \r1|rcnt[29]~92\,
	combout => \r1|rcnt[30]~93_combout\,
	cout => \r1|rcnt[30]~94\);

-- Location: FF_X21_Y13_N29
\r1|rcnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[30]~93_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(30));

-- Location: LCCOMB_X21_Y13_N30
\r1|rcnt[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[31]~95_combout\ = \r1|rcnt\(31) $ (\r1|rcnt[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(31),
	cin => \r1|rcnt[30]~94\,
	combout => \r1|rcnt[31]~95_combout\);

-- Location: FF_X21_Y13_N31
\r1|rcnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[31]~95_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(31));

-- Location: LCCOMB_X22_Y13_N26
\r1|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Equal1~8_combout\ = (!\r1|rcnt\(28) & (!\r1|rcnt\(30) & (!\r1|rcnt\(29) & !\r1|rcnt\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(28),
	datab => \r1|rcnt\(30),
	datac => \r1|rcnt\(29),
	datad => \r1|rcnt\(31),
	combout => \r1|Equal1~8_combout\);

-- Location: LCCOMB_X22_Y13_N4
\r1|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Equal1~7_combout\ = (!\r1|rcnt\(24) & !\r1|rcnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r1|rcnt\(24),
	datad => \r1|rcnt\(25),
	combout => \r1|Equal1~7_combout\);

-- Location: LCCOMB_X22_Y13_N8
\r1|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Equal1~9_combout\ = (\r1|Equal1~8_combout\ & (!\r1|rcnt\(26) & (\r1|Equal1~7_combout\ & !\r1|rcnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Equal1~8_combout\,
	datab => \r1|rcnt\(26),
	datac => \r1|Equal1~7_combout\,
	datad => \r1|rcnt\(27),
	combout => \r1|Equal1~9_combout\);

-- Location: LCCOMB_X22_Y14_N30
\r1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Equal1~1_combout\ = (!\r1|rcnt\(7) & (!\r1|rcnt\(4) & (!\r1|rcnt\(6) & !\r1|rcnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(7),
	datab => \r1|rcnt\(4),
	datac => \r1|rcnt\(6),
	datad => \r1|rcnt\(5),
	combout => \r1|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y13_N20
\r1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Equal1~2_combout\ = (!\r1|rcnt\(9) & (!\r1|rcnt\(10) & (!\r1|rcnt\(11) & !\r1|rcnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(9),
	datab => \r1|rcnt\(10),
	datac => \r1|rcnt\(11),
	datad => \r1|rcnt\(8),
	combout => \r1|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y13_N14
\r1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Equal1~0_combout\ = (\r1|rcnt\(3) & (!\r1|rcnt\(1) & (!\r1|rcnt\(0) & !\r1|rcnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(3),
	datab => \r1|rcnt\(1),
	datac => \r1|rcnt\(0),
	datad => \r1|rcnt\(2),
	combout => \r1|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y14_N24
\r1|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Equal1~3_combout\ = (!\r1|rcnt\(13) & (!\r1|rcnt\(14) & (!\r1|rcnt\(15) & !\r1|rcnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(13),
	datab => \r1|rcnt\(14),
	datac => \r1|rcnt\(15),
	datad => \r1|rcnt\(12),
	combout => \r1|Equal1~3_combout\);

-- Location: LCCOMB_X22_Y13_N10
\r1|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Equal1~4_combout\ = (\r1|Equal1~1_combout\ & (\r1|Equal1~2_combout\ & (\r1|Equal1~0_combout\ & \r1|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Equal1~1_combout\,
	datab => \r1|Equal1~2_combout\,
	datac => \r1|Equal1~0_combout\,
	datad => \r1|Equal1~3_combout\,
	combout => \r1|Equal1~4_combout\);

-- Location: LCCOMB_X22_Y13_N6
\r1|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Equal1~10_combout\ = (\r1|Equal1~6_combout\ & (\r1|Equal1~5_combout\ & (\r1|Equal1~9_combout\ & \r1|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Equal1~6_combout\,
	datab => \r1|Equal1~5_combout\,
	datac => \r1|Equal1~9_combout\,
	datad => \r1|Equal1~4_combout\,
	combout => \r1|Equal1~10_combout\);

-- Location: LCCOMB_X22_Y13_N16
\r1|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|state~13_combout\ = (\r1|state.r_wait~q\ & (\r1|Selector2~0_combout\ & \r1|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|state.r_wait~q\,
	datac => \r1|Selector2~0_combout\,
	datad => \r1|Equal1~10_combout\,
	combout => \r1|state~13_combout\);

-- Location: FF_X22_Y13_N17
\r1|state.r_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|state~13_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|state.r_stop~q\);

-- Location: LCCOMB_X22_Y14_N6
\r1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector0~0_combout\ = (!\r1|state.r_stop~q\ & (((\r1|state.r_start~q\ & !\r1|state.r_center~q\)) # (!\RX~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|state.r_stop~q\,
	datab => \RX~input_o\,
	datac => \r1|state.r_start~q\,
	datad => \r1|state.r_center~q\,
	combout => \r1|Selector0~0_combout\);

-- Location: FF_X22_Y14_N7
\r1|state.r_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|Selector0~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|state.r_start~q\);

-- Location: LCCOMB_X22_Y14_N10
\r1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector1~0_combout\ = (!\RX~input_o\ & (((!\r1|Equal0~0_combout\ & \r1|state.r_center~q\)) # (!\r1|state.r_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	datab => \r1|Equal0~0_combout\,
	datac => \r1|state.r_center~q\,
	datad => \r1|state.r_start~q\,
	combout => \r1|Selector1~0_combout\);

-- Location: FF_X22_Y14_N11
\r1|state.r_center\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|Selector1~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|state.r_center~q\);

-- Location: LCCOMB_X22_Y14_N0
\r1|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|count[1]~0_combout\ = (\r1|state.r_center~q\ & (!\RX~input_o\)) # (!\r1|state.r_center~q\ & ((\r1|state.r_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|state.r_center~q\,
	datac => \RX~input_o\,
	datad => \r1|state.r_wait~q\,
	combout => \r1|count[1]~0_combout\);

-- Location: FF_X22_Y14_N19
\r1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|Selector36~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|count\(3));

-- Location: LCCOMB_X22_Y14_N8
\r1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Equal0~0_combout\ = (!\r1|count\(1) & (\r1|count\(2) & (!\r1|count\(0) & !\r1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|count\(1),
	datab => \r1|count\(2),
	datac => \r1|count\(0),
	datad => \r1|count\(3),
	combout => \r1|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
\r1|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector39~0_combout\ = (!\r1|count\(0) & ((\r1|state.r_wait~q\ & (!\r1|Selector2~0_combout\)) # (!\r1|state.r_wait~q\ & ((!\r1|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Selector2~0_combout\,
	datab => \r1|Equal0~0_combout\,
	datac => \r1|count\(0),
	datad => \r1|state.r_wait~q\,
	combout => \r1|Selector39~0_combout\);

-- Location: FF_X22_Y14_N15
\r1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|Selector39~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|count\(0));

-- Location: LCCOMB_X22_Y14_N2
\r1|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|count[1]~1_combout\ = (\r1|state.r_wait~q\ & ((\r1|Selector2~0_combout\))) # (!\r1|state.r_wait~q\ & (\r1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|state.r_wait~q\,
	datac => \r1|Equal0~0_combout\,
	datad => \r1|Selector2~0_combout\,
	combout => \r1|count[1]~1_combout\);

-- Location: LCCOMB_X22_Y14_N26
\r1|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector38~0_combout\ = (!\r1|count[1]~1_combout\ & (\r1|count\(0) $ (\r1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|count\(0),
	datac => \r1|count\(1),
	datad => \r1|count[1]~1_combout\,
	combout => \r1|Selector38~0_combout\);

-- Location: FF_X22_Y14_N27
\r1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|Selector38~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|count\(1));

-- Location: LCCOMB_X22_Y14_N4
\r1|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector37~0_combout\ = (!\r1|count[1]~1_combout\ & (\r1|count\(2) $ (((\r1|count\(1) & \r1|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|count\(1),
	datab => \r1|count\(0),
	datac => \r1|count\(2),
	datad => \r1|count[1]~1_combout\,
	combout => \r1|Selector37~0_combout\);

-- Location: FF_X22_Y14_N5
\r1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|Selector37~0_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	ena => \r1|count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|count\(2));

-- Location: LCCOMB_X22_Y14_N12
\r1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector2~0_combout\ = (\r1|count\(2) & (\r1|count\(1) & \r1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|count\(2),
	datac => \r1|count\(1),
	datad => \r1|count\(3),
	combout => \r1|Selector2~0_combout\);

-- Location: LCCOMB_X22_Y14_N28
\r1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector2~1_combout\ = (\r1|state.r_center~q\ & (\r1|Equal0~0_combout\ & !\RX~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|state.r_center~q\,
	datab => \r1|Equal0~0_combout\,
	datac => \RX~input_o\,
	combout => \r1|Selector2~1_combout\);

-- Location: LCCOMB_X22_Y14_N20
\r1|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Selector2~2_combout\ = (\r1|state.r_sample~q\) # ((\r1|Selector2~1_combout\) # ((!\r1|Selector2~0_combout\ & \r1|state.r_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Selector2~0_combout\,
	datab => \r1|state.r_sample~q\,
	datac => \r1|state.r_wait~q\,
	datad => \r1|Selector2~1_combout\,
	combout => \r1|Selector2~2_combout\);

-- Location: FF_X22_Y14_N21
\r1|state.r_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|Selector2~2_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|state.r_wait~q\);

-- Location: LCCOMB_X22_Y13_N2
\r1|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|state~14_combout\ = (\r1|state.r_wait~q\ & (\r1|Selector2~0_combout\ & !\r1|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|state.r_wait~q\,
	datac => \r1|Selector2~0_combout\,
	datad => \r1|Equal1~10_combout\,
	combout => \r1|state~14_combout\);

-- Location: FF_X22_Y13_N3
\r1|state.r_sample\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|state~14_combout\,
	clrn => \RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|state.r_sample~q\);

-- Location: FF_X21_Y14_N1
\r1|rcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[0]~32_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(0));

-- Location: LCCOMB_X21_Y14_N2
\r1|rcnt[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rcnt[1]~35_combout\ = (\r1|rcnt\(1) & (!\r1|rcnt[0]~33\)) # (!\r1|rcnt\(1) & ((\r1|rcnt[0]~33\) # (GND)))
-- \r1|rcnt[1]~36\ = CARRY((!\r1|rcnt[0]~33\) # (!\r1|rcnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r1|rcnt\(1),
	datad => VCC,
	cin => \r1|rcnt[0]~33\,
	combout => \r1|rcnt[1]~35_combout\,
	cout => \r1|rcnt[1]~36\);

-- Location: FF_X21_Y14_N3
\r1|rcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[1]~35_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(1));

-- Location: FF_X21_Y14_N5
\r1|rcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rcnt[2]~37_combout\,
	sclr => \r1|ALT_INV_state.r_sample~q\,
	ena => \r1|rcnt[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rcnt\(2));

-- Location: LCCOMB_X22_Y13_N24
\r1|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~0_combout\ = (\RESet~input_o\ & \r1|state.r_sample~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESet~input_o\,
	datad => \r1|state.r_sample~q\,
	combout => \r1|Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\r1|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~1_combout\ = (!\r1|rcnt\(2) & (\r1|rcnt\(1) & (!\r1|rcnt\(0) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(2),
	datab => \r1|rcnt\(1),
	datac => \r1|rcnt\(0),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~1_combout\);

-- Location: LCCOMB_X23_Y13_N16
\r1|rbufs[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rbufs[2]~0_combout\ = (\r1|Decoder0~1_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~1_combout\ & ((\r1|rbufs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX~input_o\,
	datac => \r1|rbufs\(2),
	datad => \r1|Decoder0~1_combout\,
	combout => \r1|rbufs[2]~0_combout\);

-- Location: FF_X23_Y13_N17
\r1|rbufs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rbufs[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rbufs\(2));

-- Location: LCCOMB_X23_Y16_N2
\r1|TESTOUT[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|TESTOUT[7]~0_combout\ = (\RESet~input_o\ & \r1|state.r_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESet~input_o\,
	datad => \r1|state.r_stop~q\,
	combout => \r1|TESTOUT[7]~0_combout\);

-- Location: FF_X23_Y16_N3
\r1|TESTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	asdata => \r1|rbufs\(2),
	sload => VCC,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(2));

-- Location: LCCOMB_X23_Y13_N10
\r1|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~4_combout\ = (!\r1|rcnt\(2) & (\r1|rcnt\(1) & (\r1|rcnt\(0) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(2),
	datab => \r1|rcnt\(1),
	datac => \r1|rcnt\(0),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~4_combout\);

-- Location: LCCOMB_X23_Y13_N14
\r1|rbufs[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rbufs[3]~3_combout\ = (\r1|Decoder0~4_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~4_combout\ & ((\r1|rbufs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX~input_o\,
	datac => \r1|rbufs\(3),
	datad => \r1|Decoder0~4_combout\,
	combout => \r1|rbufs[3]~3_combout\);

-- Location: FF_X23_Y13_N15
\r1|rbufs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rbufs[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rbufs\(3));

-- Location: FF_X23_Y16_N5
\r1|TESTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	asdata => \r1|rbufs\(3),
	sload => VCC,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(3));

-- Location: LCCOMB_X23_Y13_N0
\r1|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~3_combout\ = (!\r1|rcnt\(2) & (!\r1|rcnt\(1) & (!\r1|rcnt\(0) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(2),
	datab => \r1|rcnt\(1),
	datac => \r1|rcnt\(0),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~3_combout\);

-- Location: LCCOMB_X23_Y13_N28
\r1|rbufs[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rbufs[0]~2_combout\ = (\r1|Decoder0~3_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~3_combout\ & ((\r1|rbufs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX~input_o\,
	datac => \r1|rbufs\(0),
	datad => \r1|Decoder0~3_combout\,
	combout => \r1|rbufs[0]~2_combout\);

-- Location: FF_X23_Y13_N29
\r1|rbufs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rbufs[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rbufs\(0));

-- Location: FF_X23_Y16_N7
\r1|TESTOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	asdata => \r1|rbufs\(0),
	sload => VCC,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(0));

-- Location: LCCOMB_X23_Y13_N2
\r1|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~2_combout\ = (!\r1|rcnt\(2) & (!\r1|rcnt\(1) & (\r1|rcnt\(0) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(2),
	datab => \r1|rcnt\(1),
	datac => \r1|rcnt\(0),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~2_combout\);

-- Location: LCCOMB_X23_Y13_N18
\r1|rbufs[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rbufs[1]~1_combout\ = (\r1|Decoder0~2_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~2_combout\ & ((\r1|rbufs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX~input_o\,
	datac => \r1|rbufs\(1),
	datad => \r1|Decoder0~2_combout\,
	combout => \r1|rbufs[1]~1_combout\);

-- Location: FF_X23_Y13_N19
\r1|rbufs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rbufs[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rbufs\(1));

-- Location: LCCOMB_X23_Y16_N16
\r1|TESTOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|TESTOUT[1]~feeder_combout\ = \r1|rbufs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r1|rbufs\(1),
	combout => \r1|TESTOUT[1]~feeder_combout\);

-- Location: FF_X23_Y16_N17
\r1|TESTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|TESTOUT[1]~feeder_combout\,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(1));

-- Location: LCCOMB_X23_Y16_N6
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

-- Location: LCCOMB_X23_Y16_N4
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

-- Location: LCCOMB_X23_Y13_N24
\r1|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~5_combout\ = (\r1|rcnt\(0) & (!\r1|rcnt\(1) & (\r1|rcnt\(2) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(0),
	datab => \r1|rcnt\(1),
	datac => \r1|rcnt\(2),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~5_combout\);

-- Location: LCCOMB_X23_Y13_N4
\r1|rbufs[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rbufs[5]~4_combout\ = (\r1|Decoder0~5_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~5_combout\ & ((\r1|rbufs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX~input_o\,
	datac => \r1|rbufs\(5),
	datad => \r1|Decoder0~5_combout\,
	combout => \r1|rbufs[5]~4_combout\);

-- Location: FF_X23_Y13_N5
\r1|rbufs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rbufs[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rbufs\(5));

-- Location: LCCOMB_X23_Y16_N14
\r1|TESTOUT[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|TESTOUT[5]~feeder_combout\ = \r1|rbufs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r1|rbufs\(5),
	combout => \r1|TESTOUT[5]~feeder_combout\);

-- Location: FF_X23_Y16_N15
\r1|TESTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|TESTOUT[5]~feeder_combout\,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(5));

-- Location: LCCOMB_X23_Y13_N6
\r1|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~8_combout\ = (\r1|rcnt\(0) & (\r1|rcnt\(1) & (\r1|rcnt\(2) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(0),
	datab => \r1|rcnt\(1),
	datac => \r1|rcnt\(2),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~8_combout\);

-- Location: LCCOMB_X23_Y13_N26
\r1|rbufs[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rbufs[7]~7_combout\ = (\r1|Decoder0~8_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~8_combout\ & ((\r1|rbufs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX~input_o\,
	datac => \r1|rbufs\(7),
	datad => \r1|Decoder0~8_combout\,
	combout => \r1|rbufs[7]~7_combout\);

-- Location: FF_X23_Y13_N27
\r1|rbufs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rbufs[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rbufs\(7));

-- Location: FF_X23_Y16_N29
\r1|TESTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	asdata => \r1|rbufs\(7),
	sload => VCC,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(7));

-- Location: LCCOMB_X23_Y13_N20
\r1|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~7_combout\ = (!\r1|rcnt\(0) & (!\r1|rcnt\(1) & (\r1|rcnt\(2) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(0),
	datab => \r1|rcnt\(1),
	datac => \r1|rcnt\(2),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~7_combout\);

-- Location: LCCOMB_X23_Y13_N12
\r1|rbufs[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rbufs[4]~6_combout\ = (\r1|Decoder0~7_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~7_combout\ & ((\r1|rbufs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX~input_o\,
	datac => \r1|rbufs\(4),
	datad => \r1|Decoder0~7_combout\,
	combout => \r1|rbufs[4]~6_combout\);

-- Location: FF_X23_Y13_N13
\r1|rbufs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rbufs[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rbufs\(4));

-- Location: FF_X23_Y16_N11
\r1|TESTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	asdata => \r1|rbufs\(4),
	sload => VCC,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(4));

-- Location: LCCOMB_X23_Y13_N30
\r1|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|Decoder0~6_combout\ = (!\r1|rcnt\(0) & (\r1|rcnt\(1) & (\r1|rcnt\(2) & \r1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|rcnt\(0),
	datab => \r1|rcnt\(1),
	datac => \r1|rcnt\(2),
	datad => \r1|Decoder0~0_combout\,
	combout => \r1|Decoder0~6_combout\);

-- Location: LCCOMB_X23_Y13_N22
\r1|rbufs[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|rbufs[6]~5_combout\ = (\r1|Decoder0~6_combout\ & (\RX~input_o\)) # (!\r1|Decoder0~6_combout\ & ((\r1|rbufs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Decoder0~6_combout\,
	datab => \RX~input_o\,
	datac => \r1|rbufs\(6),
	combout => \r1|rbufs[6]~5_combout\);

-- Location: FF_X23_Y13_N23
\r1|rbufs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|rbufs[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|rbufs\(6));

-- Location: LCCOMB_X23_Y16_N12
\r1|TESTOUT[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1|TESTOUT[6]~feeder_combout\ = \r1|rbufs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r1|rbufs\(6),
	combout => \r1|TESTOUT[6]~feeder_combout\);

-- Location: FF_X23_Y16_N13
\r1|TESTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \r1|f1|ALT_INV_temp2~clkctrl_outclk\,
	d => \r1|TESTOUT[6]~feeder_combout\,
	ena => \r1|TESTOUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|TESTOUT\(6));

-- Location: LCCOMB_X23_Y16_N10
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

-- Location: LCCOMB_X23_Y16_N28
\t1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Mux0~3_combout\ = (\t1|n\(0) & (((\t1|Mux0~2_combout\)))) # (!\t1|n\(0) & ((\t1|Mux0~2_combout\ & ((\r1|TESTOUT\(7)))) # (!\t1|Mux0~2_combout\ & (\r1|TESTOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|n\(0),
	datab => \r1|TESTOUT\(5),
	datac => \r1|TESTOUT\(7),
	datad => \t1|Mux0~2_combout\,
	combout => \t1|Mux0~3_combout\);

-- Location: LCCOMB_X23_Y16_N18
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

-- Location: LCCOMB_X23_Y16_N24
\t1|TX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|TX~2_combout\ = (!\t1|TX~0_combout\ & ((\t1|process_0~0_combout\) # ((!\t1|TXState.TXE~q\ & !\t1|TX~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|process_0~0_combout\,
	datab => \t1|TXState.TXE~q\,
	datac => \t1|TX~0_combout\,
	datad => \t1|TX~1_combout\,
	combout => \t1|TX~2_combout\);

-- Location: FF_X23_Y16_N25
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


