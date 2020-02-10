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

-- DATE "02/10/2020 21:28:08"

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
	TX : OUT std_logic;
	RESet : IN std_logic;
	text1 : BUFFER std_logic
	);
END UART;

-- Design Ports Information
-- TX	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- text1	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESet	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_TX : std_logic;
SIGNAL ww_RESet : std_logic;
SIGNAL ww_text1 : std_logic;
SIGNAL \f1|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOckIn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESet~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TX~output_o\ : std_logic;
SIGNAL \text1~output_o\ : std_logic;
SIGNAL \CLOckIn~input_o\ : std_logic;
SIGNAL \CLOckIn~inputclkctrl_outclk\ : std_logic;
SIGNAL \f1|Add0~1\ : std_logic;
SIGNAL \f1|Add0~2_combout\ : std_logic;
SIGNAL \f1|Add0~3\ : std_logic;
SIGNAL \f1|Add0~4_combout\ : std_logic;
SIGNAL \f1|Add0~5\ : std_logic;
SIGNAL \f1|Add0~6_combout\ : std_logic;
SIGNAL \f1|Add0~35\ : std_logic;
SIGNAL \f1|Add0~36_combout\ : std_logic;
SIGNAL \f1|Add0~37\ : std_logic;
SIGNAL \f1|Add0~38_combout\ : std_logic;
SIGNAL \f1|Add0~39\ : std_logic;
SIGNAL \f1|Add0~40_combout\ : std_logic;
SIGNAL \f1|Add0~41\ : std_logic;
SIGNAL \f1|Add0~42_combout\ : std_logic;
SIGNAL \f1|Add0~43\ : std_logic;
SIGNAL \f1|Add0~44_combout\ : std_logic;
SIGNAL \f1|Add0~45\ : std_logic;
SIGNAL \f1|Add0~46_combout\ : std_logic;
SIGNAL \f1|Add0~47\ : std_logic;
SIGNAL \f1|Add0~48_combout\ : std_logic;
SIGNAL \f1|Equal0~6_combout\ : std_logic;
SIGNAL \f1|Equal0~7_combout\ : std_logic;
SIGNAL \f1|i~1_combout\ : std_logic;
SIGNAL \f1|Add0~7\ : std_logic;
SIGNAL \f1|Add0~8_combout\ : std_logic;
SIGNAL \f1|i~2_combout\ : std_logic;
SIGNAL \f1|i~3_combout\ : std_logic;
SIGNAL \f1|Add0~9\ : std_logic;
SIGNAL \f1|Add0~10_combout\ : std_logic;
SIGNAL \f1|Add0~11\ : std_logic;
SIGNAL \f1|Add0~12_combout\ : std_logic;
SIGNAL \f1|i~4_combout\ : std_logic;
SIGNAL \f1|Add0~13\ : std_logic;
SIGNAL \f1|Add0~14_combout\ : std_logic;
SIGNAL \f1|i~5_combout\ : std_logic;
SIGNAL \f1|Add0~15\ : std_logic;
SIGNAL \f1|Add0~16_combout\ : std_logic;
SIGNAL \f1|Add0~17\ : std_logic;
SIGNAL \f1|Add0~18_combout\ : std_logic;
SIGNAL \f1|Add0~19\ : std_logic;
SIGNAL \f1|Add0~20_combout\ : std_logic;
SIGNAL \f1|Add0~21\ : std_logic;
SIGNAL \f1|Add0~22_combout\ : std_logic;
SIGNAL \f1|Add0~23\ : std_logic;
SIGNAL \f1|Add0~24_combout\ : std_logic;
SIGNAL \f1|Add0~25\ : std_logic;
SIGNAL \f1|Add0~26_combout\ : std_logic;
SIGNAL \f1|Add0~27\ : std_logic;
SIGNAL \f1|Add0~28_combout\ : std_logic;
SIGNAL \f1|Add0~29\ : std_logic;
SIGNAL \f1|Add0~30_combout\ : std_logic;
SIGNAL \f1|Add0~31\ : std_logic;
SIGNAL \f1|Add0~32_combout\ : std_logic;
SIGNAL \f1|Add0~33\ : std_logic;
SIGNAL \f1|Add0~34_combout\ : std_logic;
SIGNAL \f1|Equal0~5_combout\ : std_logic;
SIGNAL \f1|i~0_combout\ : std_logic;
SIGNAL \f1|Add0~0_combout\ : std_logic;
SIGNAL \f1|Equal0~0_combout\ : std_logic;
SIGNAL \f1|Equal0~2_combout\ : std_logic;
SIGNAL \f1|Equal0~1_combout\ : std_logic;
SIGNAL \f1|Equal0~3_combout\ : std_logic;
SIGNAL \f1|Equal0~4_combout\ : std_logic;
SIGNAL \f1|temp~0_combout\ : std_logic;
SIGNAL \f1|temp~feeder_combout\ : std_logic;
SIGNAL \f1|temp~q\ : std_logic;
SIGNAL \f1|temp~clkctrl_outclk\ : std_logic;
SIGNAL \State.IDLE~0_combout\ : std_logic;
SIGNAL \RESet~input_o\ : std_logic;
SIGNAL \n~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \RESet~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \State.TXING~0_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \Selector3~7_combout\ : std_logic;
SIGNAL \Selector3~8_combout\ : std_logic;
SIGNAL \Selector3~12_combout\ : std_logic;
SIGNAL \Selector3~13_combout\ : std_logic;
SIGNAL \State.TXING~1_combout\ : std_logic;
SIGNAL \State.IDLE~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \State.TXR~q\ : std_logic;
SIGNAL \State.TXING~q\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector3~9_combout\ : std_logic;
SIGNAL \Selector3~10_combout\ : std_logic;
SIGNAL \Selector3~11_combout\ : std_logic;
SIGNAL \State.TXE~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \TX~reg0_q\ : std_logic;
SIGNAL n : std_logic_vector(31 DOWNTO 0);
SIGNAL \f1|i\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_TX~reg0_q\ : std_logic;
SIGNAL \ALT_INV_RESet~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RESet~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOckIn <= CLOckIn;
TX <= ww_TX;
ww_RESet <= RESet;
text1 <= ww_text1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\f1|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \f1|temp~q\);

\CLOckIn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOckIn~input_o\);

\RESet~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESet~input_o\);
\ALT_INV_TX~reg0_q\ <= NOT \TX~reg0_q\;
\ALT_INV_RESet~inputclkctrl_outclk\ <= NOT \RESet~inputclkctrl_outclk\;
\ALT_INV_RESet~input_o\ <= NOT \RESet~input_o\;
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
	i => \ALT_INV_TX~reg0_q\,
	devoe => ww_devoe,
	o => \TX~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\text1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|temp~q\,
	devoe => ww_devoe,
	o => \text1~output_o\);

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

-- Location: FF_X25_Y17_N11
\f1|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(17));

-- Location: LCCOMB_X25_Y18_N8
\f1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~0_combout\ = \f1|i\(0) $ (VCC)
-- \f1|Add0~1\ = CARRY(\f1|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(0),
	datad => VCC,
	combout => \f1|Add0~0_combout\,
	cout => \f1|Add0~1\);

-- Location: LCCOMB_X25_Y18_N10
\f1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~2_combout\ = (\f1|i\(1) & (!\f1|Add0~1\)) # (!\f1|i\(1) & ((\f1|Add0~1\) # (GND)))
-- \f1|Add0~3\ = CARRY((!\f1|Add0~1\) # (!\f1|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(1),
	datad => VCC,
	cin => \f1|Add0~1\,
	combout => \f1|Add0~2_combout\,
	cout => \f1|Add0~3\);

-- Location: FF_X25_Y18_N11
\f1|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(1));

-- Location: LCCOMB_X25_Y18_N12
\f1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~4_combout\ = (\f1|i\(2) & (\f1|Add0~3\ $ (GND))) # (!\f1|i\(2) & (!\f1|Add0~3\ & VCC))
-- \f1|Add0~5\ = CARRY((\f1|i\(2) & !\f1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(2),
	datad => VCC,
	cin => \f1|Add0~3\,
	combout => \f1|Add0~4_combout\,
	cout => \f1|Add0~5\);

-- Location: FF_X25_Y18_N13
\f1|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(2));

-- Location: LCCOMB_X25_Y18_N14
\f1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~6_combout\ = (\f1|i\(3) & (!\f1|Add0~5\)) # (!\f1|i\(3) & ((\f1|Add0~5\) # (GND)))
-- \f1|Add0~7\ = CARRY((!\f1|Add0~5\) # (!\f1|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(3),
	datad => VCC,
	cin => \f1|Add0~5\,
	combout => \f1|Add0~6_combout\,
	cout => \f1|Add0~7\);

-- Location: FF_X25_Y17_N25
\f1|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(24));

-- Location: LCCOMB_X25_Y17_N10
\f1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~34_combout\ = (\f1|i\(17) & (!\f1|Add0~33\)) # (!\f1|i\(17) & ((\f1|Add0~33\) # (GND)))
-- \f1|Add0~35\ = CARRY((!\f1|Add0~33\) # (!\f1|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|i\(17),
	datad => VCC,
	cin => \f1|Add0~33\,
	combout => \f1|Add0~34_combout\,
	cout => \f1|Add0~35\);

-- Location: LCCOMB_X25_Y17_N12
\f1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~36_combout\ = (\f1|i\(18) & (\f1|Add0~35\ $ (GND))) # (!\f1|i\(18) & (!\f1|Add0~35\ & VCC))
-- \f1|Add0~37\ = CARRY((\f1|i\(18) & !\f1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|i\(18),
	datad => VCC,
	cin => \f1|Add0~35\,
	combout => \f1|Add0~36_combout\,
	cout => \f1|Add0~37\);

-- Location: FF_X25_Y17_N13
\f1|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(18));

-- Location: LCCOMB_X25_Y17_N14
\f1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~38_combout\ = (\f1|i\(19) & (!\f1|Add0~37\)) # (!\f1|i\(19) & ((\f1|Add0~37\) # (GND)))
-- \f1|Add0~39\ = CARRY((!\f1|Add0~37\) # (!\f1|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(19),
	datad => VCC,
	cin => \f1|Add0~37\,
	combout => \f1|Add0~38_combout\,
	cout => \f1|Add0~39\);

-- Location: FF_X25_Y17_N15
\f1|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(19));

-- Location: LCCOMB_X25_Y17_N16
\f1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~40_combout\ = (\f1|i\(20) & (\f1|Add0~39\ $ (GND))) # (!\f1|i\(20) & (!\f1|Add0~39\ & VCC))
-- \f1|Add0~41\ = CARRY((\f1|i\(20) & !\f1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(20),
	datad => VCC,
	cin => \f1|Add0~39\,
	combout => \f1|Add0~40_combout\,
	cout => \f1|Add0~41\);

-- Location: FF_X25_Y17_N17
\f1|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(20));

-- Location: LCCOMB_X25_Y17_N18
\f1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~42_combout\ = (\f1|i\(21) & (!\f1|Add0~41\)) # (!\f1|i\(21) & ((\f1|Add0~41\) # (GND)))
-- \f1|Add0~43\ = CARRY((!\f1|Add0~41\) # (!\f1|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(21),
	datad => VCC,
	cin => \f1|Add0~41\,
	combout => \f1|Add0~42_combout\,
	cout => \f1|Add0~43\);

-- Location: FF_X25_Y17_N19
\f1|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(21));

-- Location: LCCOMB_X25_Y17_N20
\f1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~44_combout\ = (\f1|i\(22) & (\f1|Add0~43\ $ (GND))) # (!\f1|i\(22) & (!\f1|Add0~43\ & VCC))
-- \f1|Add0~45\ = CARRY((\f1|i\(22) & !\f1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(22),
	datad => VCC,
	cin => \f1|Add0~43\,
	combout => \f1|Add0~44_combout\,
	cout => \f1|Add0~45\);

-- Location: FF_X25_Y17_N21
\f1|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(22));

-- Location: LCCOMB_X25_Y17_N22
\f1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~46_combout\ = (\f1|i\(23) & (!\f1|Add0~45\)) # (!\f1|i\(23) & ((\f1|Add0~45\) # (GND)))
-- \f1|Add0~47\ = CARRY((!\f1|Add0~45\) # (!\f1|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|i\(23),
	datad => VCC,
	cin => \f1|Add0~45\,
	combout => \f1|Add0~46_combout\,
	cout => \f1|Add0~47\);

-- Location: FF_X25_Y17_N23
\f1|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(23));

-- Location: LCCOMB_X25_Y17_N24
\f1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~48_combout\ = \f1|i\(24) $ (!\f1|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(24),
	cin => \f1|Add0~47\,
	combout => \f1|Add0~48_combout\);

-- Location: LCCOMB_X25_Y17_N28
\f1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~6_combout\ = (!\f1|Add0~40_combout\ & !\f1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Add0~40_combout\,
	datad => \f1|Add0~42_combout\,
	combout => \f1|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y18_N28
\f1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~7_combout\ = (!\f1|Add0~48_combout\ & (!\f1|Add0~44_combout\ & (\f1|Equal0~6_combout\ & !\f1|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Add0~48_combout\,
	datab => \f1|Add0~44_combout\,
	datac => \f1|Equal0~6_combout\,
	datad => \f1|Add0~46_combout\,
	combout => \f1|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y18_N30
\f1|i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|i~1_combout\ = (\f1|Add0~6_combout\ & (((!\f1|Equal0~7_combout\) # (!\f1|Equal0~4_combout\)) # (!\f1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~5_combout\,
	datab => \f1|Add0~6_combout\,
	datac => \f1|Equal0~4_combout\,
	datad => \f1|Equal0~7_combout\,
	combout => \f1|i~1_combout\);

-- Location: FF_X26_Y18_N31
\f1|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(3));

-- Location: LCCOMB_X25_Y18_N16
\f1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~8_combout\ = (\f1|i\(4) & (\f1|Add0~7\ $ (GND))) # (!\f1|i\(4) & (!\f1|Add0~7\ & VCC))
-- \f1|Add0~9\ = CARRY((\f1|i\(4) & !\f1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|i\(4),
	datad => VCC,
	cin => \f1|Add0~7\,
	combout => \f1|Add0~8_combout\,
	cout => \f1|Add0~9\);

-- Location: LCCOMB_X25_Y17_N26
\f1|i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|i~2_combout\ = (!\f1|Add0~46_combout\ & (!\f1|Add0~44_combout\ & (\f1|Equal0~5_combout\ & !\f1|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Add0~46_combout\,
	datab => \f1|Add0~44_combout\,
	datac => \f1|Equal0~5_combout\,
	datad => \f1|Add0~48_combout\,
	combout => \f1|i~2_combout\);

-- Location: LCCOMB_X25_Y18_N2
\f1|i~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|i~3_combout\ = (\f1|Add0~8_combout\ & (((!\f1|i~2_combout\) # (!\f1|Equal0~6_combout\)) # (!\f1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Add0~8_combout\,
	datab => \f1|Equal0~4_combout\,
	datac => \f1|Equal0~6_combout\,
	datad => \f1|i~2_combout\,
	combout => \f1|i~3_combout\);

-- Location: FF_X25_Y18_N3
\f1|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|i~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(4));

-- Location: LCCOMB_X25_Y18_N18
\f1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~10_combout\ = (\f1|i\(5) & (!\f1|Add0~9\)) # (!\f1|i\(5) & ((\f1|Add0~9\) # (GND)))
-- \f1|Add0~11\ = CARRY((!\f1|Add0~9\) # (!\f1|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|i\(5),
	datad => VCC,
	cin => \f1|Add0~9\,
	combout => \f1|Add0~10_combout\,
	cout => \f1|Add0~11\);

-- Location: FF_X25_Y18_N19
\f1|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(5));

-- Location: LCCOMB_X25_Y18_N20
\f1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~12_combout\ = (\f1|i\(6) & (\f1|Add0~11\ $ (GND))) # (!\f1|i\(6) & (!\f1|Add0~11\ & VCC))
-- \f1|Add0~13\ = CARRY((\f1|i\(6) & !\f1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|i\(6),
	datad => VCC,
	cin => \f1|Add0~11\,
	combout => \f1|Add0~12_combout\,
	cout => \f1|Add0~13\);

-- Location: LCCOMB_X26_Y18_N24
\f1|i~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|i~4_combout\ = (\f1|Add0~12_combout\ & (((!\f1|Equal0~7_combout\) # (!\f1|Equal0~4_combout\)) # (!\f1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~5_combout\,
	datab => \f1|Add0~12_combout\,
	datac => \f1|Equal0~4_combout\,
	datad => \f1|Equal0~7_combout\,
	combout => \f1|i~4_combout\);

-- Location: FF_X26_Y18_N25
\f1|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|i~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(6));

-- Location: LCCOMB_X25_Y18_N22
\f1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~14_combout\ = (\f1|i\(7) & (!\f1|Add0~13\)) # (!\f1|i\(7) & ((\f1|Add0~13\) # (GND)))
-- \f1|Add0~15\ = CARRY((!\f1|Add0~13\) # (!\f1|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|i\(7),
	datad => VCC,
	cin => \f1|Add0~13\,
	combout => \f1|Add0~14_combout\,
	cout => \f1|Add0~15\);

-- Location: LCCOMB_X26_Y18_N18
\f1|i~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|i~5_combout\ = (\f1|Add0~14_combout\ & (((!\f1|Equal0~7_combout\) # (!\f1|Equal0~4_combout\)) # (!\f1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~5_combout\,
	datab => \f1|Add0~14_combout\,
	datac => \f1|Equal0~4_combout\,
	datad => \f1|Equal0~7_combout\,
	combout => \f1|i~5_combout\);

-- Location: FF_X26_Y18_N19
\f1|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|i~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(7));

-- Location: LCCOMB_X25_Y18_N24
\f1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~16_combout\ = (\f1|i\(8) & (\f1|Add0~15\ $ (GND))) # (!\f1|i\(8) & (!\f1|Add0~15\ & VCC))
-- \f1|Add0~17\ = CARRY((\f1|i\(8) & !\f1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|i\(8),
	datad => VCC,
	cin => \f1|Add0~15\,
	combout => \f1|Add0~16_combout\,
	cout => \f1|Add0~17\);

-- Location: FF_X25_Y18_N25
\f1|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(8));

-- Location: LCCOMB_X25_Y18_N26
\f1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~18_combout\ = (\f1|i\(9) & (!\f1|Add0~17\)) # (!\f1|i\(9) & ((\f1|Add0~17\) # (GND)))
-- \f1|Add0~19\ = CARRY((!\f1|Add0~17\) # (!\f1|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|i\(9),
	datad => VCC,
	cin => \f1|Add0~17\,
	combout => \f1|Add0~18_combout\,
	cout => \f1|Add0~19\);

-- Location: FF_X25_Y18_N27
\f1|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(9));

-- Location: LCCOMB_X25_Y18_N28
\f1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~20_combout\ = (\f1|i\(10) & (\f1|Add0~19\ $ (GND))) # (!\f1|i\(10) & (!\f1|Add0~19\ & VCC))
-- \f1|Add0~21\ = CARRY((\f1|i\(10) & !\f1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(10),
	datad => VCC,
	cin => \f1|Add0~19\,
	combout => \f1|Add0~20_combout\,
	cout => \f1|Add0~21\);

-- Location: FF_X25_Y18_N29
\f1|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(10));

-- Location: LCCOMB_X25_Y18_N30
\f1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~22_combout\ = (\f1|i\(11) & (!\f1|Add0~21\)) # (!\f1|i\(11) & ((\f1|Add0~21\) # (GND)))
-- \f1|Add0~23\ = CARRY((!\f1|Add0~21\) # (!\f1|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(11),
	datad => VCC,
	cin => \f1|Add0~21\,
	combout => \f1|Add0~22_combout\,
	cout => \f1|Add0~23\);

-- Location: FF_X25_Y18_N31
\f1|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(11));

-- Location: LCCOMB_X25_Y17_N0
\f1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~24_combout\ = (\f1|i\(12) & (\f1|Add0~23\ $ (GND))) # (!\f1|i\(12) & (!\f1|Add0~23\ & VCC))
-- \f1|Add0~25\ = CARRY((\f1|i\(12) & !\f1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|i\(12),
	datad => VCC,
	cin => \f1|Add0~23\,
	combout => \f1|Add0~24_combout\,
	cout => \f1|Add0~25\);

-- Location: FF_X25_Y17_N1
\f1|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(12));

-- Location: LCCOMB_X25_Y17_N2
\f1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~26_combout\ = (\f1|i\(13) & (!\f1|Add0~25\)) # (!\f1|i\(13) & ((\f1|Add0~25\) # (GND)))
-- \f1|Add0~27\ = CARRY((!\f1|Add0~25\) # (!\f1|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|i\(13),
	datad => VCC,
	cin => \f1|Add0~25\,
	combout => \f1|Add0~26_combout\,
	cout => \f1|Add0~27\);

-- Location: FF_X25_Y17_N3
\f1|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(13));

-- Location: LCCOMB_X25_Y17_N4
\f1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~28_combout\ = (\f1|i\(14) & (\f1|Add0~27\ $ (GND))) # (!\f1|i\(14) & (!\f1|Add0~27\ & VCC))
-- \f1|Add0~29\ = CARRY((\f1|i\(14) & !\f1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|i\(14),
	datad => VCC,
	cin => \f1|Add0~27\,
	combout => \f1|Add0~28_combout\,
	cout => \f1|Add0~29\);

-- Location: FF_X25_Y17_N5
\f1|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(14));

-- Location: LCCOMB_X25_Y17_N6
\f1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~30_combout\ = (\f1|i\(15) & (!\f1|Add0~29\)) # (!\f1|i\(15) & ((\f1|Add0~29\) # (GND)))
-- \f1|Add0~31\ = CARRY((!\f1|Add0~29\) # (!\f1|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(15),
	datad => VCC,
	cin => \f1|Add0~29\,
	combout => \f1|Add0~30_combout\,
	cout => \f1|Add0~31\);

-- Location: FF_X25_Y17_N7
\f1|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(15));

-- Location: LCCOMB_X25_Y17_N8
\f1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~32_combout\ = (\f1|i\(16) & (\f1|Add0~31\ $ (GND))) # (!\f1|i\(16) & (!\f1|Add0~31\ & VCC))
-- \f1|Add0~33\ = CARRY((\f1|i\(16) & !\f1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|i\(16),
	datad => VCC,
	cin => \f1|Add0~31\,
	combout => \f1|Add0~32_combout\,
	cout => \f1|Add0~33\);

-- Location: FF_X25_Y17_N9
\f1|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(16));

-- Location: LCCOMB_X25_Y17_N30
\f1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~5_combout\ = (!\f1|Add0~34_combout\ & (!\f1|Add0~32_combout\ & (!\f1|Add0~38_combout\ & !\f1|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Add0~34_combout\,
	datab => \f1|Add0~32_combout\,
	datac => \f1|Add0~38_combout\,
	datad => \f1|Add0~36_combout\,
	combout => \f1|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y18_N6
\f1|i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|i~0_combout\ = (\f1|Add0~0_combout\ & (((!\f1|Equal0~7_combout\) # (!\f1|Equal0~4_combout\)) # (!\f1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~5_combout\,
	datab => \f1|Add0~0_combout\,
	datac => \f1|Equal0~4_combout\,
	datad => \f1|Equal0~7_combout\,
	combout => \f1|i~0_combout\);

-- Location: FF_X26_Y18_N7
\f1|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|i\(0));

-- Location: LCCOMB_X25_Y18_N0
\f1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~0_combout\ = (\f1|Add0~0_combout\ & (!\f1|Add0~2_combout\ & (\f1|Add0~6_combout\ & !\f1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Add0~0_combout\,
	datab => \f1|Add0~2_combout\,
	datac => \f1|Add0~6_combout\,
	datad => \f1|Add0~4_combout\,
	combout => \f1|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y18_N6
\f1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~2_combout\ = (!\f1|Add0~16_combout\ & (!\f1|Add0~20_combout\ & (!\f1|Add0~18_combout\ & !\f1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Add0~16_combout\,
	datab => \f1|Add0~20_combout\,
	datac => \f1|Add0~18_combout\,
	datad => \f1|Add0~22_combout\,
	combout => \f1|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y18_N4
\f1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~1_combout\ = (!\f1|Add0~10_combout\ & (\f1|Add0~8_combout\ & (\f1|Add0~14_combout\ & \f1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Add0~10_combout\,
	datab => \f1|Add0~8_combout\,
	datac => \f1|Add0~14_combout\,
	datad => \f1|Add0~12_combout\,
	combout => \f1|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y18_N20
\f1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~3_combout\ = (!\f1|Add0~28_combout\ & (!\f1|Add0~24_combout\ & (!\f1|Add0~26_combout\ & !\f1|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Add0~28_combout\,
	datab => \f1|Add0~24_combout\,
	datac => \f1|Add0~26_combout\,
	datad => \f1|Add0~30_combout\,
	combout => \f1|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y18_N22
\f1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~4_combout\ = (\f1|Equal0~0_combout\ & (\f1|Equal0~2_combout\ & (\f1|Equal0~1_combout\ & \f1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~0_combout\,
	datab => \f1|Equal0~2_combout\,
	datac => \f1|Equal0~1_combout\,
	datad => \f1|Equal0~3_combout\,
	combout => \f1|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y18_N12
\f1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|temp~0_combout\ = \f1|temp~q\ $ (((\f1|Equal0~4_combout\ & (\f1|Equal0~5_combout\ & \f1|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~4_combout\,
	datab => \f1|temp~q\,
	datac => \f1|Equal0~5_combout\,
	datad => \f1|Equal0~7_combout\,
	combout => \f1|temp~0_combout\);

-- Location: LCCOMB_X26_Y18_N26
\f1|temp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|temp~feeder_combout\ = \f1|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|temp~0_combout\,
	combout => \f1|temp~feeder_combout\);

-- Location: FF_X26_Y18_N27
\f1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOckIn~inputclkctrl_outclk\,
	d => \f1|temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|temp~q\);

-- Location: CLKCTRL_G5
\f1|temp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \f1|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \f1|temp~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y8_N16
\State.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \State.IDLE~0_combout\ = !\State.TXE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \State.TXE~q\,
	combout => \State.IDLE~0_combout\);

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

-- Location: LCCOMB_X30_Y8_N28
\n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n~0_combout\ = (\State.TXE~q\) # (!\State.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.IDLE~q\,
	datad => \State.TXE~q\,
	combout => \n~0_combout\);

-- Location: LCCOMB_X31_Y9_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = n(0) $ (GND)
-- \Add0~1\ = CARRY(!n(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => n(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X30_Y9_N26
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (n(0) & (((!\State.TXING~q\) # (!\Add0~0_combout\)))) # (!n(0) & (!\n~0_combout\ & ((!\State.TXING~q\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(0),
	datab => \n~0_combout\,
	datac => \Add0~0_combout\,
	datad => \State.TXING~q\,
	combout => \Selector36~0_combout\);

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

-- Location: FF_X31_Y9_N21
\n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector36~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(0));

-- Location: LCCOMB_X31_Y9_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (n(1) & ((\Add0~1\) # (GND))) # (!n(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((n(1)) # (!\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X30_Y9_N14
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\State.TXING~q\ & (!\Add0~2_combout\ & ((n(1)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(1))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => \Add0~2_combout\,
	datad => n(1),
	combout => \Selector35~0_combout\);

-- Location: FF_X31_Y9_N17
\n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector35~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(1));

-- Location: LCCOMB_X31_Y9_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (n(2) & (!\Add0~3\ & VCC)) # (!n(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((!n(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X30_Y9_N16
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\Add0~4_combout\ & (!\State.TXING~q\ & ((n(2)) # (!\n~0_combout\)))) # (!\Add0~4_combout\ & (((n(2))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \n~0_combout\,
	datac => n(2),
	datad => \State.TXING~q\,
	combout => \Selector34~0_combout\);

-- Location: FF_X31_Y9_N1
\n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector34~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(2));

-- Location: LCCOMB_X31_Y9_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (n(3) & ((\Add0~5\) # (GND))) # (!n(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((n(3)) # (!\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X30_Y9_N22
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\State.TXING~q\ & (!\Add0~6_combout\ & ((n(3)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(3))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => n(3),
	datad => \Add0~6_combout\,
	combout => \Selector33~0_combout\);

-- Location: FF_X31_Y9_N15
\n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector33~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(3));

-- Location: LCCOMB_X31_Y9_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (n(4) & (!\Add0~7\ & VCC)) # (!n(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((!n(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X30_Y9_N4
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (n(4) & (((!\State.TXING~q\) # (!\Add0~8_combout\)))) # (!n(4) & (!\n~0_combout\ & ((!\State.TXING~q\) # (!\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(4),
	datab => \n~0_combout\,
	datac => \Add0~8_combout\,
	datad => \State.TXING~q\,
	combout => \Selector32~0_combout\);

-- Location: FF_X31_Y9_N25
\n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector32~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(4));

-- Location: LCCOMB_X31_Y9_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (n(5) & ((\Add0~9\) # (GND))) # (!n(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((n(5)) # (!\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X30_Y9_N6
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (n(5) & (((!\State.TXING~q\) # (!\Add0~10_combout\)))) # (!n(5) & (!\n~0_combout\ & ((!\State.TXING~q\) # (!\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(5),
	datab => \n~0_combout\,
	datac => \Add0~10_combout\,
	datad => \State.TXING~q\,
	combout => \Selector31~0_combout\);

-- Location: FF_X31_Y9_N3
\n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector31~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(5));

-- Location: LCCOMB_X31_Y9_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (n(6) & (!\Add0~11\ & VCC)) # (!n(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((!n(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X30_Y9_N0
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (n(6) & (((!\State.TXING~q\) # (!\Add0~12_combout\)))) # (!n(6) & (!\n~0_combout\ & ((!\State.TXING~q\) # (!\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(6),
	datab => \n~0_combout\,
	datac => \Add0~12_combout\,
	datad => \State.TXING~q\,
	combout => \Selector30~0_combout\);

-- Location: FF_X31_Y9_N31
\n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector30~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(6));

-- Location: LCCOMB_X31_Y9_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (n(7) & ((\Add0~13\) # (GND))) # (!n(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((n(7)) # (!\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X30_Y9_N10
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\State.TXING~q\ & (!\Add0~14_combout\ & ((n(7)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(7))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => \Add0~14_combout\,
	datad => n(7),
	combout => \Selector29~0_combout\);

-- Location: FF_X31_Y9_N27
\n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector29~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(7));

-- Location: LCCOMB_X30_Y9_N30
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!n(4) & (!n(7) & (!n(6) & !n(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(4),
	datab => n(7),
	datac => n(6),
	datad => n(5),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X30_Y9_N8
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!n(0) & (!n(1) & (!n(2) & !n(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(0),
	datab => n(1),
	datac => n(2),
	datad => n(3),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X31_Y9_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (n(8) & (!\Add0~15\ & VCC)) # (!n(8) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((!n(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X31_Y9_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (n(9) & ((\Add0~17\) # (GND))) # (!n(9) & (!\Add0~17\))
-- \Add0~19\ = CARRY((n(9)) # (!\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X32_Y9_N0
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\n~0_combout\ & (n(9) & ((!\Add0~18_combout\) # (!\State.TXING~q\)))) # (!\n~0_combout\ & (((!\Add0~18_combout\) # (!\State.TXING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~0_combout\,
	datab => n(9),
	datac => \State.TXING~q\,
	datad => \Add0~18_combout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X31_Y9_N7
\n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector27~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(9));

-- Location: LCCOMB_X31_Y9_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (n(10) & (!\Add0~19\ & VCC)) # (!n(10) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((!n(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X32_Y9_N10
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\Add0~20_combout\ & (!\State.TXING~q\ & ((n(10)) # (!\n~0_combout\)))) # (!\Add0~20_combout\ & ((n(10)) # ((!\n~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => n(10),
	datac => \State.TXING~q\,
	datad => \n~0_combout\,
	combout => \Selector26~0_combout\);

-- Location: FF_X31_Y9_N5
\n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector26~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(10));

-- Location: LCCOMB_X31_Y9_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (n(11) & ((\Add0~21\) # (GND))) # (!n(11) & (!\Add0~21\))
-- \Add0~23\ = CARRY((n(11)) # (!\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X32_Y9_N20
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\n~0_combout\ & (n(11) & ((!\Add0~22_combout\) # (!\State.TXING~q\)))) # (!\n~0_combout\ & (((!\Add0~22_combout\)) # (!\State.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~0_combout\,
	datab => \State.TXING~q\,
	datac => n(11),
	datad => \Add0~22_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X32_Y9_N21
\n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector25~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(11));

-- Location: LCCOMB_X32_Y9_N2
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!n(8) & (!n(9) & (!n(10) & !n(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(8),
	datab => n(9),
	datac => n(10),
	datad => n(11),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X31_Y9_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (n(12) & (!\Add0~23\ & VCC)) # (!n(12) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((!n(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X32_Y9_N8
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\Add0~24_combout\ & (!\State.TXING~q\ & ((n(12)) # (!\n~0_combout\)))) # (!\Add0~24_combout\ & ((n(12)) # ((!\n~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => n(12),
	datac => \State.TXING~q\,
	datad => \n~0_combout\,
	combout => \Selector24~0_combout\);

-- Location: FF_X31_Y9_N23
\n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector24~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(12));

-- Location: LCCOMB_X31_Y9_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (n(13) & ((\Add0~25\) # (GND))) # (!n(13) & (!\Add0~25\))
-- \Add0~27\ = CARRY((n(13)) # (!\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X32_Y9_N22
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (n(13) & (((!\Add0~26_combout\)) # (!\State.TXING~q\))) # (!n(13) & (!\n~0_combout\ & ((!\Add0~26_combout\) # (!\State.TXING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(13),
	datab => \State.TXING~q\,
	datac => \Add0~26_combout\,
	datad => \n~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X31_Y9_N29
\n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector23~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(13));

-- Location: LCCOMB_X31_Y9_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (n(14) & (!\Add0~27\ & VCC)) # (!n(14) & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((!n(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X32_Y9_N6
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\n~0_combout\ & (n(14) & ((!\Add0~28_combout\) # (!\State.TXING~q\)))) # (!\n~0_combout\ & (((!\Add0~28_combout\)) # (!\State.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~0_combout\,
	datab => \State.TXING~q\,
	datac => n(14),
	datad => \Add0~28_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X32_Y9_N7
\n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector22~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(14));

-- Location: LCCOMB_X31_Y9_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (n(15) & ((\Add0~29\) # (GND))) # (!n(15) & (!\Add0~29\))
-- \Add0~31\ = CARRY((n(15)) # (!\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X32_Y9_N12
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\n~0_combout\ & (n(15) & ((!\Add0~30_combout\) # (!\State.TXING~q\)))) # (!\n~0_combout\ & (((!\Add0~30_combout\)) # (!\State.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~0_combout\,
	datab => \State.TXING~q\,
	datac => n(15),
	datad => \Add0~30_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X32_Y9_N13
\n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector21~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(15));

-- Location: LCCOMB_X32_Y9_N16
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!n(14) & (!n(12) & (!n(13) & !n(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(14),
	datab => n(12),
	datac => n(13),
	datad => n(15),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X32_Y9_N28
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & \Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X31_Y8_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (n(16) & (!\Add0~31\ & VCC)) # (!n(16) & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((!n(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X32_Y8_N20
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Add0~32_combout\ & (!\State.TXING~q\ & ((n(16)) # (!\n~0_combout\)))) # (!\Add0~32_combout\ & (((n(16))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \n~0_combout\,
	datac => n(16),
	datad => \State.TXING~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X32_Y8_N21
\n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(16));

-- Location: LCCOMB_X31_Y8_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (n(17) & ((\Add0~33\) # (GND))) # (!n(17) & (!\Add0~33\))
-- \Add0~35\ = CARRY((n(17)) # (!\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X32_Y8_N22
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\State.TXING~q\ & (!\Add0~34_combout\ & ((n(17)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(17))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => n(17),
	datad => \Add0~34_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X32_Y8_N23
\n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(17));

-- Location: LCCOMB_X31_Y8_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (n(18) & (!\Add0~35\ & VCC)) # (!n(18) & (\Add0~35\ $ (GND)))
-- \Add0~37\ = CARRY((!n(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X32_Y8_N24
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\State.TXING~q\ & (!\Add0~36_combout\ & ((n(18)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(18))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => n(18),
	datad => \Add0~36_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X32_Y8_N25
\n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(18));

-- Location: LCCOMB_X31_Y8_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (n(19) & ((\Add0~37\) # (GND))) # (!n(19) & (!\Add0~37\))
-- \Add0~39\ = CARRY((n(19)) # (!\Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X32_Y8_N14
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\State.TXING~q\ & (!\Add0~38_combout\ & ((n(19)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(19))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => n(19),
	datad => \Add0~38_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X32_Y8_N15
\n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(19));

-- Location: LCCOMB_X32_Y8_N12
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!n(17) & (!n(16) & (!n(19) & !n(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(17),
	datab => n(16),
	datac => n(19),
	datad => n(18),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X31_Y8_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (n(20) & (!\Add0~39\ & VCC)) # (!n(20) & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((!n(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X32_Y8_N4
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\State.TXING~q\ & (!\Add0~40_combout\ & ((n(20)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(20))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => n(20),
	datad => \Add0~40_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X32_Y8_N5
\n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(20));

-- Location: LCCOMB_X31_Y8_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (n(21) & ((\Add0~41\) # (GND))) # (!n(21) & (!\Add0~41\))
-- \Add0~43\ = CARRY((n(21)) # (!\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X32_Y8_N26
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\State.TXING~q\ & (!\Add0~42_combout\ & ((n(21)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(21))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => n(21),
	datad => \Add0~42_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X32_Y8_N27
\n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(21));

-- Location: LCCOMB_X31_Y8_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (n(22) & (!\Add0~43\ & VCC)) # (!n(22) & (\Add0~43\ $ (GND)))
-- \Add0~45\ = CARRY((!n(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X32_Y8_N0
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\State.TXING~q\ & (!\Add0~44_combout\ & ((n(22)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(22))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => n(22),
	datad => \Add0~44_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X32_Y8_N1
\n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(22));

-- Location: LCCOMB_X31_Y8_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (n(23) & ((\Add0~45\) # (GND))) # (!n(23) & (!\Add0~45\))
-- \Add0~47\ = CARRY((n(23)) # (!\Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X32_Y8_N18
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\State.TXING~q\ & (!\Add0~46_combout\ & ((n(23)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(23))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => n(23),
	datad => \Add0~46_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X32_Y8_N19
\n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(23));

-- Location: LCCOMB_X31_Y8_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (n(24) & (!\Add0~47\ & VCC)) # (!n(24) & (\Add0~47\ $ (GND)))
-- \Add0~49\ = CARRY((!n(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X32_Y9_N18
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\n~0_combout\ & (n(24) & ((!\Add0~48_combout\) # (!\State.TXING~q\)))) # (!\n~0_combout\ & (((!\Add0~48_combout\)) # (!\State.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~0_combout\,
	datab => \State.TXING~q\,
	datac => n(24),
	datad => \Add0~48_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X32_Y9_N19
\n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(24));

-- Location: LCCOMB_X31_Y8_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (n(25) & ((\Add0~49\) # (GND))) # (!n(25) & (!\Add0~49\))
-- \Add0~51\ = CARRY((n(25)) # (!\Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X32_Y9_N24
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\n~0_combout\ & (n(25) & ((!\Add0~50_combout\) # (!\State.TXING~q\)))) # (!\n~0_combout\ & (((!\Add0~50_combout\)) # (!\State.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~0_combout\,
	datab => \State.TXING~q\,
	datac => n(25),
	datad => \Add0~50_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X32_Y9_N25
\n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(25));

-- Location: LCCOMB_X31_Y8_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (n(26) & (!\Add0~51\ & VCC)) # (!n(26) & (\Add0~51\ $ (GND)))
-- \Add0~53\ = CARRY((!n(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X32_Y9_N26
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Add0~52_combout\ & (!\State.TXING~q\ & ((n(26)) # (!\n~0_combout\)))) # (!\Add0~52_combout\ & (((n(26)) # (!\n~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \State.TXING~q\,
	datac => n(26),
	datad => \n~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X32_Y9_N27
\n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(26));

-- Location: LCCOMB_X31_Y8_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (n(27) & ((\Add0~53\) # (GND))) # (!n(27) & (!\Add0~53\))
-- \Add0~55\ = CARRY((n(27)) # (!\Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X32_Y9_N4
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\n~0_combout\ & (n(27) & ((!\Add0~54_combout\) # (!\State.TXING~q\)))) # (!\n~0_combout\ & (((!\Add0~54_combout\)) # (!\State.TXING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~0_combout\,
	datab => \State.TXING~q\,
	datac => n(27),
	datad => \Add0~54_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X32_Y9_N5
\n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(27));

-- Location: LCCOMB_X31_Y8_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (n(28) & (!\Add0~55\ & VCC)) # (!n(28) & (\Add0~55\ $ (GND)))
-- \Add0~57\ = CARRY((!n(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X32_Y8_N8
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\State.TXING~q\ & (!\Add0~56_combout\ & ((n(28)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(28))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => n(28),
	datad => \Add0~56_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X32_Y8_N9
\n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(28));

-- Location: LCCOMB_X31_Y8_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (n(29) & ((\Add0~57\) # (GND))) # (!n(29) & (!\Add0~57\))
-- \Add0~59\ = CARRY((n(29)) # (!\Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => n(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X32_Y8_N2
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Add0~58_combout\ & (!\State.TXING~q\ & ((n(29)) # (!\n~0_combout\)))) # (!\Add0~58_combout\ & (((n(29))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \n~0_combout\,
	datac => n(29),
	datad => \State.TXING~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X32_Y8_N3
\n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(29));

-- Location: LCCOMB_X31_Y8_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (n(30) & (!\Add0~59\ & VCC)) # (!n(30) & (\Add0~59\ $ (GND)))
-- \Add0~61\ = CARRY((!n(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => n(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X32_Y8_N16
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\State.TXING~q\ & (!\Add0~60_combout\ & ((n(30)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(30))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => n(30),
	datad => \Add0~60_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X32_Y8_N17
\n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(30));

-- Location: LCCOMB_X31_Y8_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (!n(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => n(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X32_Y8_N6
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\State.TXING~q\ & (!\Add0~62_combout\ & ((n(31)) # (!\n~0_combout\)))) # (!\State.TXING~q\ & (((n(31))) # (!\n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \n~0_combout\,
	datac => n(31),
	datad => \Add0~62_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X32_Y8_N7
\n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(31));

-- Location: LCCOMB_X32_Y8_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!n(31) & (!n(30) & (!n(28) & !n(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(31),
	datab => n(30),
	datac => n(28),
	datad => n(29),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y9_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!n(26) & (!n(25) & (!n(27) & !n(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(26),
	datab => n(25),
	datac => n(27),
	datad => n(24),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X32_Y8_N10
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!n(21) & (!n(23) & (!n(20) & !n(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(21),
	datab => n(23),
	datac => n(20),
	datad => n(22),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X32_Y8_N30
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X30_Y9_N18
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\ & (\Equal0~9_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X30_Y9_N12
\State.TXING~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \State.TXING~0_combout\ = (\State.TXING~q\) # ((!\State.IDLE~q\ & !\Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datac => \State.IDLE~q\,
	datad => \Equal0~10_combout\,
	combout => \State.TXING~0_combout\);

-- Location: LCCOMB_X30_Y8_N4
\Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (!\Add0~36_combout\ & (!\Add0~32_combout\ & (!\Add0~30_combout\ & !\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~34_combout\,
	combout => \Selector3~5_combout\);

-- Location: LCCOMB_X30_Y8_N6
\Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~6_combout\ = (!\Add0~40_combout\ & !\Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~40_combout\,
	datad => \Add0~38_combout\,
	combout => \Selector3~6_combout\);

-- Location: LCCOMB_X30_Y8_N8
\Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~7_combout\ = (!\Add0~44_combout\ & (!\Add0~42_combout\ & (\Selector3~5_combout\ & \Selector3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Add0~42_combout\,
	datac => \Selector3~5_combout\,
	datad => \Selector3~6_combout\,
	combout => \Selector3~7_combout\);

-- Location: LCCOMB_X30_Y8_N10
\Selector3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~8_combout\ = (!\Add0~48_combout\ & (!\Add0~46_combout\ & (!\Add0~52_combout\ & !\Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Add0~46_combout\,
	datac => \Add0~52_combout\,
	datad => \Add0~50_combout\,
	combout => \Selector3~8_combout\);

-- Location: LCCOMB_X30_Y8_N18
\Selector3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~12_combout\ = (!\Add0~56_combout\ & (!\Add0~54_combout\ & (\Selector3~7_combout\ & \Selector3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \Add0~54_combout\,
	datac => \Selector3~7_combout\,
	datad => \Selector3~8_combout\,
	combout => \Selector3~12_combout\);

-- Location: LCCOMB_X30_Y8_N0
\Selector3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~13_combout\ = (!\Add0~60_combout\ & (!\Add0~58_combout\ & (!\Add0~62_combout\ & \Selector3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Add0~58_combout\,
	datac => \Add0~62_combout\,
	datad => \Selector3~12_combout\,
	combout => \Selector3~13_combout\);

-- Location: LCCOMB_X30_Y8_N2
\State.TXING~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \State.TXING~1_combout\ = (!\RESet~input_o\ & (((\Selector3~4_combout\ & \Selector3~13_combout\)) # (!\State.TXING~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESet~input_o\,
	datab => \State.TXING~0_combout\,
	datac => \Selector3~4_combout\,
	datad => \Selector3~13_combout\,
	combout => \State.TXING~1_combout\);

-- Location: FF_X30_Y8_N17
\State.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \State.IDLE~0_combout\,
	ena => \State.TXING~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.IDLE~q\);

-- Location: LCCOMB_X30_Y9_N20
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\State.IDLE~q\ & \Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.IDLE~q\,
	datad => \Equal0~10_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X30_Y9_N21
\State.TXR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \ALT_INV_RESet~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.TXR~q\);

-- Location: FF_X30_Y8_N15
\State.TXING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \State.TXR~q\,
	sload => VCC,
	ena => \State.TXING~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.TXING~q\);

-- Location: LCCOMB_X32_Y9_N14
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (n(8) & (((!\Add0~16_combout\)) # (!\State.TXING~q\))) # (!n(8) & (!\n~0_combout\ & ((!\Add0~16_combout\) # (!\State.TXING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n(8),
	datab => \State.TXING~q\,
	datac => \Add0~16_combout\,
	datad => \n~0_combout\,
	combout => \Selector28~0_combout\);

-- Location: FF_X31_Y9_N9
\n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	asdata => \Selector28~0_combout\,
	clrn => \ALT_INV_RESet~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n(8));

-- Location: LCCOMB_X30_Y8_N26
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (!\Add0~16_combout\ & (!\Add0~14_combout\ & (!\Add0~18_combout\ & !\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~20_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X30_Y8_N14
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Add0~4_combout\ & (\Add0~0_combout\ & (\State.TXING~q\ & \Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~0_combout\,
	datac => \State.TXING~q\,
	datad => \Add0~2_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X30_Y9_N24
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (!\Add0~10_combout\ & (!\Add0~8_combout\ & (!\Add0~12_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~6_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X30_Y8_N20
\Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (!\Add0~26_combout\ & (!\Add0~28_combout\ & (!\Add0~24_combout\ & !\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~28_combout\,
	datac => \Add0~24_combout\,
	datad => \Add0~22_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X30_Y8_N22
\Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\Selector3~2_combout\ & (\Selector3~0_combout\ & (\Selector3~1_combout\ & \Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datab => \Selector3~0_combout\,
	datac => \Selector3~1_combout\,
	datad => \Selector3~3_combout\,
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X30_Y8_N12
\Selector3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~9_combout\ = (!\Add0~56_combout\ & !\Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~56_combout\,
	datad => \Add0~54_combout\,
	combout => \Selector3~9_combout\);

-- Location: LCCOMB_X30_Y8_N30
\Selector3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~10_combout\ = (\Selector3~8_combout\ & (!\Add0~58_combout\ & (!\Add0~60_combout\ & \Selector3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~8_combout\,
	datab => \Add0~58_combout\,
	datac => \Add0~60_combout\,
	datad => \Selector3~9_combout\,
	combout => \Selector3~10_combout\);

-- Location: LCCOMB_X30_Y8_N24
\Selector3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~11_combout\ = (\Selector3~4_combout\ & (\Selector3~7_combout\ & (\Selector3~10_combout\ & !\Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~4_combout\,
	datab => \Selector3~7_combout\,
	datac => \Selector3~10_combout\,
	datad => \Add0~62_combout\,
	combout => \Selector3~11_combout\);

-- Location: FF_X30_Y8_N25
\State.TXE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector3~11_combout\,
	ena => \ALT_INV_RESet~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.TXE~q\);

-- Location: LCCOMB_X30_Y9_N2
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\State.TXING~q\ & ((n(1)) # ((!\TX~reg0_q\ & !\State.IDLE~q\)))) # (!\State.TXING~q\ & (!\TX~reg0_q\ & (!\State.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.TXING~q\,
	datab => \TX~reg0_q\,
	datac => \State.IDLE~q\,
	datad => n(1),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X30_Y9_N28
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (!\State.TXE~q\ & !\Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \State.TXE~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X30_Y9_N29
\TX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \f1|temp~clkctrl_outclk\,
	d => \Selector4~1_combout\,
	ena => \ALT_INV_RESet~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX~reg0_q\);

ww_TX <= \TX~output_o\;

ww_text1 <= \text1~output_o\;
END structure;


