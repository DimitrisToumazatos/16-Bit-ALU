-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "06/02/2022 15:38:26"

-- 
-- Device: Altera 5M40ZM64C4 Package MBGA64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	ALU_1Bit IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	AInv : IN std_logic;
	BInv : IN std_logic;
	CIn : IN std_logic;
	Op : IN std_logic_vector(1 DOWNTO 0);
	Cout : OUT std_logic;
	Result : OUT std_logic
	);
END ALU_1Bit;

-- Design Ports Information


ARCHITECTURE structure OF ALU_1Bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_AInv : std_logic;
SIGNAL ww_BInv : std_logic;
SIGNAL ww_CIn : std_logic;
SIGNAL ww_Op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Result : std_logic;
SIGNAL \a~combout\ : std_logic;
SIGNAL \b~combout\ : std_logic;
SIGNAL \BInv~combout\ : std_logic;
SIGNAL \I1|f~0_combout\ : std_logic;
SIGNAL \CIn~combout\ : std_logic;
SIGNAL \AInv~combout\ : std_logic;
SIGNAL \I4|Cout~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Op~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_AInv <= AInv;
ww_BInv <= BInv;
ww_CIn <= CIn;
ww_Op <= Op;
Cout <= ww_Cout;
Result <= ww_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a,
	combout => \a~combout\);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b,
	combout => \b~combout\);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BInv~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BInv,
	combout => \BInv~combout\);

-- Location: LC_X5_Y2_N2
\I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I1|f~0_combout\ = (\b~combout\ $ (((\BInv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\,
	datad => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|f~0_combout\);

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CIn~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CIn,
	combout => \CIn~combout\);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AInv~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_AInv,
	combout => \AInv~combout\);

-- Location: LC_X5_Y2_N4
\I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I4|Cout~0_combout\ = (\I1|f~0_combout\ & ((\CIn~combout\) # (\a~combout\ $ (\AInv~combout\)))) # (!\I1|f~0_combout\ & (\CIn~combout\ & (\a~combout\ $ (\AInv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\,
	datab => \I1|f~0_combout\,
	datac => \CIn~combout\,
	datad => \AInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|Cout~0_combout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Op(1),
	combout => \Op~combout\(1));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Op(0),
	combout => \Op~combout\(0));

-- Location: LC_X5_Y2_N5
\Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\Op~combout\(0) & ((\b~combout\ $ (\BInv~combout\)))) # (!\Op~combout\(0) & (\CIn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3aca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CIn~combout\,
	datab => \b~combout\,
	datac => \Op~combout\(0),
	datad => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X5_Y2_N6
\Mux0~1\ : maxv_lcell
-- Equation(s):
-- \Mux0~1_combout\ = \a~combout\ $ (\AInv~combout\ $ (((\Op~combout\(1) & \Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\,
	datab => \Op~combout\(1),
	datac => \Mux0~0_combout\,
	datad => \AInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X5_Y2_N8
\Mux0~2\ : maxv_lcell
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & ((\Op~combout\(0)) # (\I1|f~0_combout\ $ (\Op~combout\(1))))) # (!\Mux0~1_combout\ & (\I1|f~0_combout\ & (\Op~combout\(0) $ (\Op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a6e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \I1|f~0_combout\,
	datac => \Op~combout\(0),
	datad => \Op~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Cout~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I4|Cout~0_combout\,
	oe => VCC,
	padio => ww_Cout);

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result);
END structure;


