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

-- DATE "06/02/2022 16:57:51"

-- 
-- Device: Altera 5M160ZT100C4 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	ALU_16Bit IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	Opcode : IN std_logic_vector(2 DOWNTO 0);
	Result : OUT std_logic_vector(15 DOWNTO 0);
	Overflow : OUT std_logic
	);
END ALU_16Bit;

-- Design Ports Information


ARCHITECTURE structure OF ALU_16Bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Overflow : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \AInv~combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \BInv~combout\ : std_logic;
SIGNAL \I0|Mux0~0_combout\ : std_logic;
SIGNAL \I0|Mux0~1_combout\ : std_logic;
SIGNAL \I0|I1|f~0_combout\ : std_logic;
SIGNAL \I0|Mux0~2_combout\ : std_logic;
SIGNAL \I1|I1|f~0_combout\ : std_logic;
SIGNAL \I0|I4|Cout~0_combout\ : std_logic;
SIGNAL \I1|Mux0~0_combout\ : std_logic;
SIGNAL \I1|Mux0~1_combout\ : std_logic;
SIGNAL \I1|Mux0~2_combout\ : std_logic;
SIGNAL \I1|Mux0~3_combout\ : std_logic;
SIGNAL \I1|I4|Cout~0_combout\ : std_logic;
SIGNAL \I2|Mux0~0_combout\ : std_logic;
SIGNAL \I2|Mux0~1_combout\ : std_logic;
SIGNAL \I2|I1|f~0_combout\ : std_logic;
SIGNAL \I2|Mux0~2_combout\ : std_logic;
SIGNAL \I2|I4|Cout~0_combout\ : std_logic;
SIGNAL \I3|Mux0~0_combout\ : std_logic;
SIGNAL \I3|I1|f~0_combout\ : std_logic;
SIGNAL \I3|Mux0~1_combout\ : std_logic;
SIGNAL \I3|Mux0~2_combout\ : std_logic;
SIGNAL \I3|Mux0~3_combout\ : std_logic;
SIGNAL \I4|I1|f~0_combout\ : std_logic;
SIGNAL \I3|I4|Cout~0_combout\ : std_logic;
SIGNAL \I4|Mux0~0_combout\ : std_logic;
SIGNAL \I4|Mux0~1_combout\ : std_logic;
SIGNAL \I4|Mux0~2_combout\ : std_logic;
SIGNAL \I4|I4|Cout~0_combout\ : std_logic;
SIGNAL \I5|Mux0~0_combout\ : std_logic;
SIGNAL \I5|I1|f~0_combout\ : std_logic;
SIGNAL \I5|Mux0~1_combout\ : std_logic;
SIGNAL \I5|Mux0~2_combout\ : std_logic;
SIGNAL \I5|Mux0~3_combout\ : std_logic;
SIGNAL \I6|I1|f~0_combout\ : std_logic;
SIGNAL \I5|I4|Cout~0_combout\ : std_logic;
SIGNAL \I6|Mux0~0_combout\ : std_logic;
SIGNAL \I6|Mux0~1_combout\ : std_logic;
SIGNAL \I6|Mux0~2_combout\ : std_logic;
SIGNAL \I6|I4|Cout~0_combout\ : std_logic;
SIGNAL \I7|Mux0~0_combout\ : std_logic;
SIGNAL \I7|I1|f~0_combout\ : std_logic;
SIGNAL \I7|Mux0~1_combout\ : std_logic;
SIGNAL \I7|Mux0~2_combout\ : std_logic;
SIGNAL \I7|Mux0~3_combout\ : std_logic;
SIGNAL \I8|I1|f~0_combout\ : std_logic;
SIGNAL \I7|I4|Cout~0_combout\ : std_logic;
SIGNAL \I8|Mux0~0_combout\ : std_logic;
SIGNAL \I8|Mux0~1_combout\ : std_logic;
SIGNAL \I8|Mux0~2_combout\ : std_logic;
SIGNAL \I8|I4|Cout~0_combout\ : std_logic;
SIGNAL \I9|Mux0~0_combout\ : std_logic;
SIGNAL \I9|I1|f~0_combout\ : std_logic;
SIGNAL \I9|Mux0~1_combout\ : std_logic;
SIGNAL \I9|Mux0~2_combout\ : std_logic;
SIGNAL \I9|Mux0~3_combout\ : std_logic;
SIGNAL \I10|I1|f~0_combout\ : std_logic;
SIGNAL \I9|I4|Cout~0_combout\ : std_logic;
SIGNAL \I10|Mux0~0_combout\ : std_logic;
SIGNAL \I10|Mux0~1_combout\ : std_logic;
SIGNAL \I10|Mux0~2_combout\ : std_logic;
SIGNAL \I10|I4|Cout~0_combout\ : std_logic;
SIGNAL \I11|Mux0~0_combout\ : std_logic;
SIGNAL \I11|I1|f~0_combout\ : std_logic;
SIGNAL \I11|Mux0~2_combout\ : std_logic;
SIGNAL \I11|Mux0~1_combout\ : std_logic;
SIGNAL \I11|Mux0~3_combout\ : std_logic;
SIGNAL \I11|I4|Cout~0_combout\ : std_logic;
SIGNAL \I12|Mux0~0_combout\ : std_logic;
SIGNAL \I12|Mux0~1_combout\ : std_logic;
SIGNAL \I12|I1|f~0_combout\ : std_logic;
SIGNAL \I12|Mux0~2_combout\ : std_logic;
SIGNAL \I12|I4|Cout~0_combout\ : std_logic;
SIGNAL \I13|Mux0~0_combout\ : std_logic;
SIGNAL \I13|I1|f~0_combout\ : std_logic;
SIGNAL \I13|Mux0~1_combout\ : std_logic;
SIGNAL \I13|Mux0~2_combout\ : std_logic;
SIGNAL \I13|Mux0~3_combout\ : std_logic;
SIGNAL \I14|I1|f~0_combout\ : std_logic;
SIGNAL \I13|I4|Cout~0_combout\ : std_logic;
SIGNAL \I14|Mux0~0_combout\ : std_logic;
SIGNAL \I14|Mux0~1_combout\ : std_logic;
SIGNAL \I14|Mux0~2_combout\ : std_logic;
SIGNAL \I15|I1|f~0_combout\ : std_logic;
SIGNAL \I14|I4|Cout~0_combout\ : std_logic;
SIGNAL \I15|Mux0~0_combout\ : std_logic;
SIGNAL \I15|Mux0~1_combout\ : std_logic;
SIGNAL \I15|Mux0~2_combout\ : std_logic;
SIGNAL \I15|Mux0~3_combout\ : std_logic;
SIGNAL \Overflow~0_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Opcode~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL Op : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_Opcode <= Opcode;
Result <= ww_Result;
Overflow <= ww_Overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Opcode[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Opcode(1),
	combout => \Opcode~combout\(1));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Opcode[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Opcode(2),
	combout => \Opcode~combout\(2));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Opcode[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Opcode(0),
	combout => \Opcode~combout\(0));

-- Location: LC_X2_Y3_N1
\Mux1~0\ : maxv_lcell
-- Equation(s):
-- \Mux1~0_combout\ = ((\Opcode~combout\(1) & (\Opcode~combout\(2) & \Opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Opcode~combout\(1),
	datac => \Opcode~combout\(2),
	datad => \Opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X2_Y4_N1
\Op[1]\ : maxv_lcell
-- Equation(s):
-- Op(1) = ((GLOBAL(\Mux1~0_combout\) & ((Op(1)))) # (!GLOBAL(\Mux1~0_combout\) & (\Opcode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Opcode~combout\(1),
	datac => \Mux1~0_combout\,
	datad => Op(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => Op(1));

-- Location: LC_X2_Y4_N4
\Mux4~0\ : maxv_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\Opcode~combout\(0) & (!\Opcode~combout\(1))) # (!\Opcode~combout\(0) & (\Opcode~combout\(1) & ((\Opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6622",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode~combout\(0),
	datab => \Opcode~combout\(1),
	datad => \Opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X2_Y4_N5
\Op[0]\ : maxv_lcell
-- Equation(s):
-- Op(0) = (GLOBAL(\Mux1~0_combout\) & (Op(0))) # (!GLOBAL(\Mux1~0_combout\) & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(0),
	datab => \Mux4~0_combout\,
	datac => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => Op(0));

-- Location: LC_X2_Y4_N0
\Mux3~0\ : maxv_lcell
-- Equation(s):
-- \Mux3~0_combout\ = ((!\Opcode~combout\(1) & ((\Opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Opcode~combout\(1),
	datad => \Opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X3_Y3_N9
AInv : maxv_lcell
-- Equation(s):
-- \AInv~combout\ = ((GLOBAL(\Mux1~0_combout\) & ((\AInv~combout\))) # (!GLOBAL(\Mux1~0_combout\) & (\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \Mux1~0_combout\,
	datad => \AInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \AInv~combout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LC_X2_Y4_N9
\Mux1~1\ : maxv_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (\Opcode~combout\(0) & (((\Opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode~combout\(0),
	datad => \Opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: LC_X2_Y4_N2
Cin : maxv_lcell
-- Equation(s):
-- \Cin~combout\ = ((GLOBAL(\Mux1~0_combout\) & ((\Cin~combout\))) # (!GLOBAL(\Mux1~0_combout\) & (\Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~1_combout\,
	datac => \Mux1~0_combout\,
	datad => \Cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Cin~combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LC_X2_Y4_N8
\Mux2~0\ : maxv_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\Opcode~combout\(1) & (\Opcode~combout\(0) & ((!\Opcode~combout\(2))))) # (!\Opcode~combout\(1) & (((\Opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode~combout\(0),
	datab => \Opcode~combout\(1),
	datad => \Opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X2_Y4_N3
BInv : maxv_lcell
-- Equation(s):
-- \BInv~combout\ = ((GLOBAL(\Mux1~0_combout\) & ((\BInv~combout\))) # (!GLOBAL(\Mux1~0_combout\) & (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~0_combout\,
	datac => \Mux1~0_combout\,
	datad => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BInv~combout\);

-- Location: LC_X2_Y4_N6
\I0|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I0|Mux0~0_combout\ = (Op(0) & ((\b~combout\(0) $ (\BInv~combout\)))) # (!Op(0) & (\Cin~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ee4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(0),
	datab => \Cin~combout\,
	datac => \b~combout\(0),
	datad => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Mux0~0_combout\);

-- Location: LC_X2_Y3_N5
\I0|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I0|Mux0~1_combout\ = \AInv~combout\ $ (\a~combout\(0) $ (((Op(1) & \I0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \AInv~combout\,
	datac => \a~combout\(0),
	datad => \I0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Mux0~1_combout\);

-- Location: LC_X2_Y4_N7
\I0|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I0|I1|f~0_combout\ = ((\b~combout\(0) $ (\BInv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(0),
	datad => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|I1|f~0_combout\);

-- Location: LC_X2_Y3_N4
\I0|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I0|Mux0~2_combout\ = (\I0|Mux0~1_combout\ & ((Op(0)) # (Op(1) $ (\I0|I1|f~0_combout\)))) # (!\I0|Mux0~1_combout\ & (\I0|I1|f~0_combout\ & (Op(1) $ (Op(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d6e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => Op(0),
	datac => \I0|Mux0~1_combout\,
	datad => \I0|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|Mux0~2_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LC_X2_Y3_N2
\I1|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I1|I1|f~0_combout\ = (\BInv~combout\ $ ((\b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \BInv~combout\,
	datac => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I1|f~0_combout\);

-- Location: LC_X2_Y3_N3
\I0|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I0|I4|Cout~0_combout\ = (\Cin~combout\ & ((\I0|I1|f~0_combout\) # (\AInv~combout\ $ (\a~combout\(0))))) # (!\Cin~combout\ & (\I0|I1|f~0_combout\ & (\AInv~combout\ $ (\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datab => \AInv~combout\,
	datac => \a~combout\(0),
	datad => \I0|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|I4|Cout~0_combout\);

-- Location: LC_X2_Y3_N7
\I1|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I1|Mux0~0_combout\ = (Op(1) & (((\I0|I4|Cout~0_combout\)))) # (!Op(1) & (\BInv~combout\ $ ((\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \BInv~combout\,
	datac => \b~combout\(1),
	datad => \I0|I4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|Mux0~0_combout\);

-- Location: LC_X2_Y3_N8
\I1|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I1|Mux0~1_combout\ = (Op(1)) # ((Op(0) & (!\I1|I1|f~0_combout\)) # (!Op(0) & ((\I1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \I1|I1|f~0_combout\,
	datac => \I1|Mux0~0_combout\,
	datad => Op(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|Mux0~1_combout\);

-- Location: LC_X2_Y3_N0
\I1|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I1|Mux0~2_combout\ = (Op(0) & (((\I1|I1|f~0_combout\)))) # (!Op(0) & (Op(1) & (\I1|I1|f~0_combout\ $ (\I1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \I1|I1|f~0_combout\,
	datac => \I1|Mux0~0_combout\,
	datad => Op(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|Mux0~2_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X2_Y3_N9
\I1|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \I1|Mux0~3_combout\ = \I1|Mux0~2_combout\ $ (((\I1|Mux0~1_combout\ & (\AInv~combout\ $ (\a~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d278",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux0~1_combout\,
	datab => \AInv~combout\,
	datac => \I1|Mux0~2_combout\,
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|Mux0~3_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LC_X2_Y3_N6
\I1|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I1|I4|Cout~0_combout\ = (\I0|I4|Cout~0_combout\ & ((\I1|I1|f~0_combout\) # (\a~combout\(1) $ (\AInv~combout\)))) # (!\I0|I4|Cout~0_combout\ & (\I1|I1|f~0_combout\ & (\a~combout\(1) $ (\AInv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I0|I4|Cout~0_combout\,
	datab => \a~combout\(1),
	datac => \AInv~combout\,
	datad => \I1|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I4|Cout~0_combout\);

-- Location: LC_X2_Y2_N2
\I2|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I2|Mux0~0_combout\ = (Op(0) & (\BInv~combout\ $ ((\b~combout\(2))))) # (!Op(0) & (((\I1|I4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6f60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BInv~combout\,
	datab => \b~combout\(2),
	datac => Op(0),
	datad => \I1|I4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|Mux0~0_combout\);

-- Location: LC_X2_Y2_N8
\I2|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I2|Mux0~1_combout\ = \a~combout\(2) $ (\AInv~combout\ $ (((Op(1) & \I2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => Op(1),
	datac => \AInv~combout\,
	datad => \I2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|Mux0~1_combout\);

-- Location: LC_X2_Y2_N4
\I2|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I2|I1|f~0_combout\ = \BInv~combout\ $ ((((\b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BInv~combout\,
	datad => \b~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|I1|f~0_combout\);

-- Location: LC_X2_Y2_N9
\I2|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I2|Mux0~2_combout\ = (\I2|Mux0~1_combout\ & ((Op(0)) # (Op(1) $ (\I2|I1|f~0_combout\)))) # (!\I2|Mux0~1_combout\ & (\I2|I1|f~0_combout\ & (Op(1) $ (Op(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2|Mux0~1_combout\,
	datab => Op(1),
	datac => \I2|I1|f~0_combout\,
	datad => Op(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|Mux0~2_combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X2_Y2_N6
\I2|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I2|I4|Cout~0_combout\ = (\I2|I1|f~0_combout\ & ((\I1|I4|Cout~0_combout\) # (\a~combout\(2) $ (\AInv~combout\)))) # (!\I2|I1|f~0_combout\ & (\I1|I4|Cout~0_combout\ & (\a~combout\(2) $ (\AInv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I1|f~0_combout\,
	datab => \a~combout\(2),
	datac => \AInv~combout\,
	datad => \I1|I4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|I4|Cout~0_combout\);

-- Location: LC_X2_Y2_N3
\I3|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I3|Mux0~0_combout\ = (Op(1) & (((\I2|I4|Cout~0_combout\)))) # (!Op(1) & (\b~combout\(3) $ (((\BInv~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => Op(1),
	datac => \I2|I4|Cout~0_combout\,
	datad => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|Mux0~0_combout\);

-- Location: LC_X3_Y2_N4
\I3|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I3|I1|f~0_combout\ = ((\BInv~combout\ $ (\b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \BInv~combout\,
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|I1|f~0_combout\);

-- Location: LC_X2_Y2_N5
\I3|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I3|Mux0~1_combout\ = (Op(1)) # ((Op(0) & ((!\I3|I1|f~0_combout\))) # (!Op(0) & (\I3|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I3|Mux0~0_combout\,
	datab => Op(0),
	datac => Op(1),
	datad => \I3|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|Mux0~1_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X2_Y2_N1
\I3|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I3|Mux0~2_combout\ = (Op(0) & (((\I3|I1|f~0_combout\)))) # (!Op(0) & (Op(1) & (\I3|Mux0~0_combout\ $ (\I3|I1|f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I3|Mux0~0_combout\,
	datab => Op(0),
	datac => Op(1),
	datad => \I3|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|Mux0~2_combout\);

-- Location: LC_X2_Y2_N0
\I3|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \I3|Mux0~3_combout\ = \I3|Mux0~2_combout\ $ (((\I3|Mux0~1_combout\ & (\a~combout\(3) $ (\AInv~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d728",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I3|Mux0~1_combout\,
	datab => \a~combout\(3),
	datac => \AInv~combout\,
	datad => \I3|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|Mux0~3_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LC_X3_Y4_N5
\I4|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I4|I1|f~0_combout\ = (\BInv~combout\ $ (((\b~combout\(4)))))

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
	datab => \BInv~combout\,
	datad => \b~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|I1|f~0_combout\);

-- Location: LC_X2_Y2_N7
\I3|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I3|I4|Cout~0_combout\ = (\I2|I4|Cout~0_combout\ & ((\I3|I1|f~0_combout\) # (\a~combout\(3) $ (\AInv~combout\)))) # (!\I2|I4|Cout~0_combout\ & (\I3|I1|f~0_combout\ & (\a~combout\(3) $ (\AInv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I4|Cout~0_combout\,
	datab => \a~combout\(3),
	datac => \AInv~combout\,
	datad => \I3|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|I4|Cout~0_combout\);

-- Location: LC_X3_Y4_N7
\I4|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I4|Mux0~0_combout\ = (Op(0) & (\b~combout\(4) $ ((\BInv~combout\)))) # (!Op(0) & (((\I3|I4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6f60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \BInv~combout\,
	datac => Op(0),
	datad => \I3|I4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|Mux0~0_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LC_X3_Y4_N8
\I4|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I4|Mux0~1_combout\ = \AInv~combout\ $ (\a~combout\(4) $ (((Op(1) & \I4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \I4|Mux0~0_combout\,
	datac => \AInv~combout\,
	datad => \a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|Mux0~1_combout\);

-- Location: LC_X3_Y4_N4
\I4|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I4|Mux0~2_combout\ = (\I4|Mux0~1_combout\ & ((Op(0)) # (Op(1) $ (\I4|I1|f~0_combout\)))) # (!\I4|Mux0~1_combout\ & (\I4|I1|f~0_combout\ & (Op(1) $ (Op(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => Op(0),
	datac => \I4|I1|f~0_combout\,
	datad => \I4|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|Mux0~2_combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LC_X3_Y4_N2
\I4|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I4|I4|Cout~0_combout\ = (\I4|I1|f~0_combout\ & ((\I3|I4|Cout~0_combout\) # (\AInv~combout\ $ (\a~combout\(4))))) # (!\I4|I1|f~0_combout\ & (\I3|I4|Cout~0_combout\ & (\AInv~combout\ $ (\a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I4|I1|f~0_combout\,
	datab => \I3|I4|Cout~0_combout\,
	datac => \AInv~combout\,
	datad => \a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|I4|Cout~0_combout\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LC_X3_Y4_N9
\I5|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I5|Mux0~0_combout\ = (Op(1) & (\I4|I4|Cout~0_combout\)) # (!Op(1) & ((\b~combout\(5) $ (\BInv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8dd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \I4|I4|Cout~0_combout\,
	datac => \b~combout\(5),
	datad => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|Mux0~0_combout\);

-- Location: LC_X4_Y4_N4
\I5|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I5|I1|f~0_combout\ = ((\BInv~combout\ $ (\b~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \BInv~combout\,
	datad => \b~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|I1|f~0_combout\);

-- Location: LC_X3_Y4_N6
\I5|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I5|Mux0~1_combout\ = (Op(1)) # ((Op(0) & ((!\I5|I1|f~0_combout\))) # (!Op(0) & (\I5|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \I5|Mux0~0_combout\,
	datac => Op(0),
	datad => \I5|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|Mux0~1_combout\);

-- Location: LC_X3_Y4_N0
\I5|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I5|Mux0~2_combout\ = (Op(0) & (((\I5|I1|f~0_combout\)))) # (!Op(0) & (Op(1) & (\I5|Mux0~0_combout\ $ (\I5|I1|f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f208",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \I5|Mux0~0_combout\,
	datac => Op(0),
	datad => \I5|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|Mux0~2_combout\);

-- Location: LC_X3_Y4_N1
\I5|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \I5|Mux0~3_combout\ = \I5|Mux0~2_combout\ $ (((\I5|Mux0~1_combout\ & (\a~combout\(5) $ (\AInv~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9f60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \AInv~combout\,
	datac => \I5|Mux0~1_combout\,
	datad => \I5|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|Mux0~3_combout\);

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LC_X6_Y3_N5
\I6|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I6|I1|f~0_combout\ = ((\BInv~combout\ $ (\b~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \BInv~combout\,
	datad => \b~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|I1|f~0_combout\);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LC_X3_Y4_N3
\I5|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I5|I4|Cout~0_combout\ = (\I4|I4|Cout~0_combout\ & ((\I5|I1|f~0_combout\) # (\a~combout\(5) $ (\AInv~combout\)))) # (!\I4|I4|Cout~0_combout\ & (\I5|I1|f~0_combout\ & (\a~combout\(5) $ (\AInv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \I4|I4|Cout~0_combout\,
	datac => \AInv~combout\,
	datad => \I5|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|I4|Cout~0_combout\);

-- Location: LC_X6_Y4_N0
\I6|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I6|Mux0~0_combout\ = (Op(0) & (\BInv~combout\ $ ((\b~combout\(6))))) # (!Op(0) & (((\I5|I4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6f60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BInv~combout\,
	datab => \b~combout\(6),
	datac => Op(0),
	datad => \I5|I4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|Mux0~0_combout\);

-- Location: LC_X6_Y4_N1
\I6|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I6|Mux0~1_combout\ = \AInv~combout\ $ (\a~combout\(6) $ (((Op(1) & \I6|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \AInv~combout\,
	datac => \a~combout\(6),
	datad => \I6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|Mux0~1_combout\);

-- Location: LC_X6_Y4_N2
\I6|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I6|Mux0~2_combout\ = (\I6|Mux0~1_combout\ & ((Op(0)) # (Op(1) $ (\I6|I1|f~0_combout\)))) # (!\I6|Mux0~1_combout\ & (\I6|I1|f~0_combout\ & (Op(1) $ (Op(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f648",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \I6|I1|f~0_combout\,
	datac => Op(0),
	datad => \I6|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|Mux0~2_combout\);

-- Location: LC_X6_Y4_N9
\I6|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I6|I4|Cout~0_combout\ = (\I5|I4|Cout~0_combout\ & ((\I6|I1|f~0_combout\) # (\AInv~combout\ $ (\a~combout\(6))))) # (!\I5|I4|Cout~0_combout\ & (\I6|I1|f~0_combout\ & (\AInv~combout\ $ (\a~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I5|I4|Cout~0_combout\,
	datab => \AInv~combout\,
	datac => \a~combout\(6),
	datad => \I6|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|I4|Cout~0_combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LC_X6_Y4_N7
\I7|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I7|Mux0~0_combout\ = (Op(1) & (\I6|I4|Cout~0_combout\)) # (!Op(1) & ((\BInv~combout\ $ (\b~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8dd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \I6|I4|Cout~0_combout\,
	datac => \BInv~combout\,
	datad => \b~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|Mux0~0_combout\);

-- Location: LC_X6_Y4_N3
\I7|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I7|I1|f~0_combout\ = ((\BInv~combout\ $ (\b~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \BInv~combout\,
	datad => \b~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|I1|f~0_combout\);

-- Location: LC_X6_Y4_N6
\I7|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I7|Mux0~1_combout\ = (Op(1)) # ((Op(0) & ((!\I7|I1|f~0_combout\))) # (!Op(0) & (\I7|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \I7|Mux0~0_combout\,
	datac => Op(0),
	datad => \I7|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|Mux0~1_combout\);

-- Location: LC_X6_Y4_N4
\I7|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I7|Mux0~2_combout\ = (Op(0) & (((\I7|I1|f~0_combout\)))) # (!Op(0) & (Op(1) & (\I7|Mux0~0_combout\ $ (\I7|I1|f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f208",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \I7|Mux0~0_combout\,
	datac => Op(0),
	datad => \I7|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|Mux0~2_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LC_X6_Y4_N8
\I7|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \I7|Mux0~3_combout\ = \I7|Mux0~2_combout\ $ (((\I7|Mux0~1_combout\ & (\AInv~combout\ $ (\a~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d278",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I7|Mux0~1_combout\,
	datab => \AInv~combout\,
	datac => \I7|Mux0~2_combout\,
	datad => \a~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|Mux0~3_combout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: LC_X5_Y4_N3
\I8|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I8|I1|f~0_combout\ = ((\b~combout\(8) $ (\BInv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(8),
	datad => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|I1|f~0_combout\);

-- Location: LC_X6_Y4_N5
\I7|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I7|I4|Cout~0_combout\ = (\I7|I1|f~0_combout\ & ((\I6|I4|Cout~0_combout\) # (\AInv~combout\ $ (\a~combout\(7))))) # (!\I7|I1|f~0_combout\ & (\I6|I4|Cout~0_combout\ & (\AInv~combout\ $ (\a~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I7|I1|f~0_combout\,
	datab => \I6|I4|Cout~0_combout\,
	datac => \AInv~combout\,
	datad => \a~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|I4|Cout~0_combout\);

-- Location: LC_X5_Y4_N8
\I8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I8|Mux0~0_combout\ = (Op(0) & (\b~combout\(8) $ ((\BInv~combout\)))) # (!Op(0) & (((\I7|I4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6f60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(8),
	datab => \BInv~combout\,
	datac => Op(0),
	datad => \I7|I4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|Mux0~0_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: LC_X5_Y4_N9
\I8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I8|Mux0~1_combout\ = \a~combout\(8) $ (\AInv~combout\ $ (((\I8|Mux0~0_combout\ & Op(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I8|Mux0~0_combout\,
	datab => \a~combout\(8),
	datac => \AInv~combout\,
	datad => Op(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|Mux0~1_combout\);

-- Location: LC_X5_Y4_N6
\I8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I8|Mux0~2_combout\ = (\I8|Mux0~1_combout\ & ((Op(0)) # (\I8|I1|f~0_combout\ $ (Op(1))))) # (!\I8|Mux0~1_combout\ & (\I8|I1|f~0_combout\ & (Op(1) $ (Op(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f628",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I8|I1|f~0_combout\,
	datab => Op(1),
	datac => Op(0),
	datad => \I8|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|Mux0~2_combout\);

-- Location: LC_X5_Y4_N2
\I8|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I8|I4|Cout~0_combout\ = (\I8|I1|f~0_combout\ & ((\I7|I4|Cout~0_combout\) # (\a~combout\(8) $ (\AInv~combout\)))) # (!\I8|I1|f~0_combout\ & (\I7|I4|Cout~0_combout\ & (\a~combout\(8) $ (\AInv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I8|I1|f~0_combout\,
	datab => \a~combout\(8),
	datac => \AInv~combout\,
	datad => \I7|I4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|I4|Cout~0_combout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: LC_X6_Y3_N7
\I9|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I9|Mux0~0_combout\ = (Op(1) & (((\I8|I4|Cout~0_combout\)))) # (!Op(1) & (\BInv~combout\ $ (((\b~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \BInv~combout\,
	datac => \I8|I4|Cout~0_combout\,
	datad => \b~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I9|Mux0~0_combout\);

-- Location: LC_X6_Y3_N9
\I9|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I9|I1|f~0_combout\ = ((\BInv~combout\ $ (\b~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \BInv~combout\,
	datad => \b~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I9|I1|f~0_combout\);

-- Location: LC_X6_Y3_N8
\I9|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I9|Mux0~1_combout\ = (Op(1)) # ((Op(0) & ((!\I9|I1|f~0_combout\))) # (!Op(0) & (\I9|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(0),
	datab => \I9|Mux0~0_combout\,
	datac => Op(1),
	datad => \I9|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I9|Mux0~1_combout\);

-- Location: LC_X6_Y3_N2
\I9|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I9|Mux0~2_combout\ = (Op(0) & (((\I9|I1|f~0_combout\)))) # (!Op(0) & (Op(1) & (\I9|Mux0~0_combout\ $ (\I9|I1|f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(0),
	datab => \I9|Mux0~0_combout\,
	datac => Op(1),
	datad => \I9|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I9|Mux0~2_combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: LC_X6_Y3_N1
\I9|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \I9|Mux0~3_combout\ = \I9|Mux0~2_combout\ $ (((\I9|Mux0~1_combout\ & (\AInv~combout\ $ (\a~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c66c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I9|Mux0~1_combout\,
	datab => \I9|Mux0~2_combout\,
	datac => \AInv~combout\,
	datad => \a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I9|Mux0~3_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: LC_X5_Y4_N4
\I10|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I10|I1|f~0_combout\ = ((\b~combout\(10) $ (\BInv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(10),
	datad => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I10|I1|f~0_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: LC_X6_Y3_N3
\I9|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I9|I4|Cout~0_combout\ = (\I8|I4|Cout~0_combout\ & ((\I9|I1|f~0_combout\) # (\AInv~combout\ $ (\a~combout\(9))))) # (!\I8|I4|Cout~0_combout\ & (\I9|I1|f~0_combout\ & (\AInv~combout\ $ (\a~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I8|I4|Cout~0_combout\,
	datab => \I9|I1|f~0_combout\,
	datac => \AInv~combout\,
	datad => \a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I9|I4|Cout~0_combout\);

-- Location: LC_X5_Y4_N0
\I10|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I10|Mux0~0_combout\ = (Op(0) & (\b~combout\(10) $ ((\BInv~combout\)))) # (!Op(0) & (((\I9|I4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6f60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(10),
	datab => \BInv~combout\,
	datac => Op(0),
	datad => \I9|I4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I10|Mux0~0_combout\);

-- Location: LC_X5_Y4_N1
\I10|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I10|Mux0~1_combout\ = \a~combout\(10) $ (\AInv~combout\ $ (((Op(1) & \I10|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(10),
	datab => Op(1),
	datac => \AInv~combout\,
	datad => \I10|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I10|Mux0~1_combout\);

-- Location: LC_X5_Y4_N7
\I10|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I10|Mux0~2_combout\ = (\I10|Mux0~1_combout\ & ((Op(0)) # (\I10|I1|f~0_combout\ $ (Op(1))))) # (!\I10|Mux0~1_combout\ & (\I10|I1|f~0_combout\ & (Op(1) $ (Op(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f628",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I10|I1|f~0_combout\,
	datab => Op(1),
	datac => Op(0),
	datad => \I10|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I10|Mux0~2_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: LC_X5_Y4_N5
\I10|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I10|I4|Cout~0_combout\ = (\I9|I4|Cout~0_combout\ & ((\I10|I1|f~0_combout\) # (\AInv~combout\ $ (\a~combout\(10))))) # (!\I9|I4|Cout~0_combout\ & (\I10|I1|f~0_combout\ & (\AInv~combout\ $ (\a~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AInv~combout\,
	datab => \a~combout\(10),
	datac => \I9|I4|Cout~0_combout\,
	datad => \I10|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I10|I4|Cout~0_combout\);

-- Location: LC_X5_Y3_N0
\I11|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I11|Mux0~0_combout\ = (Op(1) & (((\I10|I4|Cout~0_combout\)))) # (!Op(1) & (\BInv~combout\ $ ((\b~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de12",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BInv~combout\,
	datab => Op(1),
	datac => \b~combout\(11),
	datad => \I10|I4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I11|Mux0~0_combout\);

-- Location: LC_X5_Y3_N3
\I11|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I11|I1|f~0_combout\ = ((\b~combout\(11) $ (\BInv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(11),
	datad => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I11|I1|f~0_combout\);

-- Location: LC_X5_Y3_N6
\I11|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I11|Mux0~2_combout\ = (Op(0) & (((\I11|I1|f~0_combout\)))) # (!Op(0) & (Op(1) & (\I11|Mux0~0_combout\ $ (\I11|I1|f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(0),
	datab => Op(1),
	datac => \I11|Mux0~0_combout\,
	datad => \I11|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I11|Mux0~2_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LC_X5_Y3_N2
\I11|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I11|Mux0~1_combout\ = (Op(1)) # ((Op(0) & ((!\I11|I1|f~0_combout\))) # (!Op(0) & (\I11|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcfe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(0),
	datab => Op(1),
	datac => \I11|Mux0~0_combout\,
	datad => \I11|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I11|Mux0~1_combout\);

-- Location: LC_X5_Y3_N8
\I11|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \I11|Mux0~3_combout\ = \I11|Mux0~2_combout\ $ (((\I11|Mux0~1_combout\ & (\a~combout\(11) $ (\AInv~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I11|Mux0~2_combout\,
	datab => \a~combout\(11),
	datac => \AInv~combout\,
	datad => \I11|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I11|Mux0~3_combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: LC_X5_Y3_N9
\I11|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I11|I4|Cout~0_combout\ = (\I11|I1|f~0_combout\ & ((\I10|I4|Cout~0_combout\) # (\a~combout\(11) $ (\AInv~combout\)))) # (!\I11|I1|f~0_combout\ & (\I10|I4|Cout~0_combout\ & (\a~combout\(11) $ (\AInv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I11|I1|f~0_combout\,
	datab => \a~combout\(11),
	datac => \AInv~combout\,
	datad => \I10|I4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I11|I4|Cout~0_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: LC_X5_Y3_N1
\I12|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I12|Mux0~0_combout\ = (Op(0) & ((\b~combout\(12) $ (\BInv~combout\)))) # (!Op(0) & (\I11|I4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ee4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(0),
	datab => \I11|I4|Cout~0_combout\,
	datac => \b~combout\(12),
	datad => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I12|Mux0~0_combout\);

-- Location: LC_X5_Y3_N7
\I12|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I12|Mux0~1_combout\ = \a~combout\(12) $ (\AInv~combout\ $ (((\I12|Mux0~0_combout\ & Op(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(12),
	datab => \I12|Mux0~0_combout\,
	datac => \AInv~combout\,
	datad => Op(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I12|Mux0~1_combout\);

-- Location: LC_X5_Y3_N4
\I12|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I12|I1|f~0_combout\ = (\b~combout\(12) $ (((\BInv~combout\))))

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
	datab => \b~combout\(12),
	datad => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I12|I1|f~0_combout\);

-- Location: LC_X6_Y3_N6
\I12|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I12|Mux0~2_combout\ = (\I12|Mux0~1_combout\ & ((Op(0)) # (Op(1) $ (\I12|I1|f~0_combout\)))) # (!\I12|Mux0~1_combout\ & (\I12|I1|f~0_combout\ & (Op(0) $ (Op(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9ec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(0),
	datab => \I12|Mux0~1_combout\,
	datac => Op(1),
	datad => \I12|I1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I12|Mux0~2_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: LC_X5_Y3_N5
\I12|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I12|I4|Cout~0_combout\ = (\I12|I1|f~0_combout\ & ((\I11|I4|Cout~0_combout\) # (\AInv~combout\ $ (\a~combout\(12))))) # (!\I12|I1|f~0_combout\ & (\I11|I4|Cout~0_combout\ & (\AInv~combout\ $ (\a~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I12|I1|f~0_combout\,
	datab => \I11|I4|Cout~0_combout\,
	datac => \AInv~combout\,
	datad => \a~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I12|I4|Cout~0_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: LC_X6_Y2_N7
\I13|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I13|Mux0~0_combout\ = (Op(1) & (((\I12|I4|Cout~0_combout\)))) # (!Op(1) & (\BInv~combout\ $ (((\b~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \BInv~combout\,
	datac => \I12|I4|Cout~0_combout\,
	datad => \b~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I13|Mux0~0_combout\);

-- Location: LC_X6_Y3_N0
\I13|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I13|I1|f~0_combout\ = ((\BInv~combout\ $ (\b~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \BInv~combout\,
	datad => \b~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I13|I1|f~0_combout\);

-- Location: LC_X6_Y2_N2
\I13|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I13|Mux0~1_combout\ = (Op(1)) # ((Op(0) & ((!\I13|I1|f~0_combout\))) # (!Op(0) & (\I13|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \I13|Mux0~0_combout\,
	datac => \I13|I1|f~0_combout\,
	datad => Op(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I13|Mux0~1_combout\);

-- Location: LC_X6_Y2_N0
\I13|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I13|Mux0~2_combout\ = (Op(0) & (((\I13|I1|f~0_combout\)))) # (!Op(0) & (Op(1) & (\I13|Mux0~0_combout\ $ (\I13|I1|f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f028",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => \I13|Mux0~0_combout\,
	datac => \I13|I1|f~0_combout\,
	datad => Op(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I13|Mux0~2_combout\);

-- Location: LC_X6_Y2_N6
\I13|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \I13|Mux0~3_combout\ = \I13|Mux0~2_combout\ $ (((\I13|Mux0~1_combout\ & (\a~combout\(13) $ (\AInv~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b478",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(13),
	datab => \I13|Mux0~1_combout\,
	datac => \I13|Mux0~2_combout\,
	datad => \AInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I13|Mux0~3_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: LC_X6_Y2_N5
\I14|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I14|I1|f~0_combout\ = \b~combout\(14) $ ((((\BInv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(14),
	datac => \BInv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I14|I1|f~0_combout\);

-- Location: LC_X6_Y2_N4
\I13|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I13|I4|Cout~0_combout\ = (\I13|I1|f~0_combout\ & ((\I12|I4|Cout~0_combout\) # (\AInv~combout\ $ (\a~combout\(13))))) # (!\I13|I1|f~0_combout\ & (\I12|I4|Cout~0_combout\ & (\AInv~combout\ $ (\a~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I13|I1|f~0_combout\,
	datab => \AInv~combout\,
	datac => \I12|I4|Cout~0_combout\,
	datad => \a~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I13|I4|Cout~0_combout\);

-- Location: LC_X6_Y2_N8
\I14|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I14|Mux0~0_combout\ = (Op(0) & (\b~combout\(14) $ ((\BInv~combout\)))) # (!Op(0) & (((\I13|I4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(14),
	datab => \BInv~combout\,
	datac => \I13|I4|Cout~0_combout\,
	datad => Op(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I14|Mux0~0_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: LC_X6_Y2_N1
\I14|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I14|Mux0~1_combout\ = \AInv~combout\ $ (\a~combout\(14) $ (((\I14|Mux0~0_combout\ & Op(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I14|Mux0~0_combout\,
	datab => \AInv~combout\,
	datac => Op(1),
	datad => \a~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I14|Mux0~1_combout\);

-- Location: LC_X6_Y2_N9
\I14|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I14|Mux0~2_combout\ = (\I14|Mux0~1_combout\ & ((Op(0)) # (Op(1) $ (\I14|I1|f~0_combout\)))) # (!\I14|Mux0~1_combout\ & (\I14|I1|f~0_combout\ & (Op(1) $ (Op(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Op(1),
	datab => Op(0),
	datac => \I14|I1|f~0_combout\,
	datad => \I14|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I14|Mux0~2_combout\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: LC_X3_Y2_N8
\I15|I1|f~0\ : maxv_lcell
-- Equation(s):
-- \I15|I1|f~0_combout\ = \BInv~combout\ $ ((((\b~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BInv~combout\,
	datac => \b~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I15|I1|f~0_combout\);

-- Location: LC_X6_Y2_N3
\I14|I4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \I14|I4|Cout~0_combout\ = (\I14|I1|f~0_combout\ & ((\I13|I4|Cout~0_combout\) # (\AInv~combout\ $ (\a~combout\(14))))) # (!\I14|I1|f~0_combout\ & (\I13|I4|Cout~0_combout\ & (\AInv~combout\ $ (\a~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I14|I1|f~0_combout\,
	datab => \AInv~combout\,
	datac => \I13|I4|Cout~0_combout\,
	datad => \a~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I14|I4|Cout~0_combout\);

-- Location: LC_X3_Y2_N2
\I15|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \I15|Mux0~0_combout\ = (Op(1) & (((\I14|I4|Cout~0_combout\)))) # (!Op(1) & (\BInv~combout\ $ ((\b~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de12",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BInv~combout\,
	datab => Op(1),
	datac => \b~combout\(15),
	datad => \I14|I4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I15|Mux0~0_combout\);

-- Location: LC_X3_Y2_N6
\I15|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \I15|Mux0~1_combout\ = (Op(1)) # ((Op(0) & (!\I15|I1|f~0_combout\)) # (!Op(0) & ((\I15|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I15|I1|f~0_combout\,
	datab => Op(1),
	datac => Op(0),
	datad => \I15|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I15|Mux0~1_combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: LC_X3_Y2_N9
\I15|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \I15|Mux0~2_combout\ = (Op(0) & (\I15|I1|f~0_combout\)) # (!Op(0) & (Op(1) & (\I15|I1|f~0_combout\ $ (\I15|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I15|I1|f~0_combout\,
	datab => Op(1),
	datac => Op(0),
	datad => \I15|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I15|Mux0~2_combout\);

-- Location: LC_X3_Y2_N7
\I15|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \I15|Mux0~3_combout\ = \I15|Mux0~2_combout\ $ (((\I15|Mux0~1_combout\ & (\a~combout\(15) $ (\AInv~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d728",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I15|Mux0~1_combout\,
	datab => \a~combout\(15),
	datac => \AInv~combout\,
	datad => \I15|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I15|Mux0~3_combout\);

-- Location: LC_X3_Y2_N5
\Overflow~0\ : maxv_lcell
-- Equation(s):
-- \Overflow~0_combout\ = (\I15|I1|f~0_combout\ & (!\I14|I4|Cout~0_combout\ & (\a~combout\(15) $ (\AInv~combout\)))) # (!\I15|I1|f~0_combout\ & (\I14|I4|Cout~0_combout\ & (\a~combout\(15) $ (!\AInv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4128",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I15|I1|f~0_combout\,
	datab => \a~combout\(15),
	datac => \AInv~combout\,
	datad => \I14|I4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Overflow~0_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I0|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(0));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1|Mux0~3_combout\,
	oe => VCC,
	padio => ww_Result(1));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I2|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(2));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I3|Mux0~3_combout\,
	oe => VCC,
	padio => ww_Result(3));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I4|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(4));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I5|Mux0~3_combout\,
	oe => VCC,
	padio => ww_Result(5));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I6|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(6));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I7|Mux0~3_combout\,
	oe => VCC,
	padio => ww_Result(7));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(8));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I9|Mux0~3_combout\,
	oe => VCC,
	padio => ww_Result(9));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I10|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(10));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I11|Mux0~3_combout\,
	oe => VCC,
	padio => ww_Result(11));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I12|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(12));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I13|Mux0~3_combout\,
	oe => VCC,
	padio => ww_Result(13));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I14|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result(14));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I15|Mux0~3_combout\,
	oe => VCC,
	padio => ww_Result(15));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Overflow~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Overflow~0_combout\,
	oe => VCC,
	padio => ww_Overflow);
END structure;


