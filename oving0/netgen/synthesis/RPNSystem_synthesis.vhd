--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: RPNSystem_synthesis.vhd
-- /___/   /\     Timestamp: Thu Aug 27 21:18:40 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm RPNSystem -w -dir netgen/synthesis -ofmt vhdl -sim RPNSystem.ngc RPNSystem_synthesis.vhd 
-- Device	: xc6slx16-2-csg324
-- Input file	: RPNSystem.ngc
-- Output file	: /home/shomec/p/peteraa/Documents/oving0/oving0/netgen/synthesis/RPNSystem_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: RPNSystem
-- Xilinx	: /opt/Xilinx/12.4/ISE_DS/ISE/
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


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity RPNSystem is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    UART_Rx : in STD_LOGIC := 'X'; 
    UART_Tx : out STD_LOGIC; 
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end RPNSystem;

architecture Structure of RPNSystem is
  component RPNDataMem
    port (
      clka : in STD_LOGIC := 'X'; 
      clkb : in STD_LOGIC := 'X'; 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 9 downto 0 ); 
      addrb : in STD_LOGIC_VECTOR ( 8 downto 0 ); 
      doutb : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal clk_BUFGP_0 : STD_LOGIC; 
  signal reset_IBUF_1 : STD_LOGIC; 
  signal UART_Rx_IBUF_2 : STD_LOGIC; 
  signal RPNC_control_state_FSM_FFd7_11 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_serOut_20 : STD_LOGIC; 
  signal InstrBufferInst_RPNCResetSignal_21 : STD_LOGIC; 
  signal leds_3_OBUF_22 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal leds_0_OBUF_24 : STD_LOGIC; 
  signal RPNC_push_inv : STD_LOGIC; 
  signal RPNC_control_alu_sel_56 : STD_LOGIC; 
  signal RPNC_stack_n0024_inv : STD_LOGIC; 
  signal RPNC_stack_n0021 : STD_LOGIC; 
  signal RPNC_control_state_FSM_FFd5_107 : STD_LOGIC; 
  signal RPNC_control_state_FSM_FFd3_108 : STD_LOGIC; 
  signal RPNC_control_state_FSM_FFd1_109 : STD_LOGIC; 
  signal RPNC_control_state_FSM_FFd4_118 : STD_LOGIC; 
  signal RPNC_control_state_FSM_FFd6_119 : STD_LOGIC; 
  signal RPNC_control_state_FSM_FFd8_120 : STD_LOGIC; 
  signal RPNC_control_state_FSM_FFd4_In_121 : STD_LOGIC; 
  signal RPNC_control_state_FSM_FFd5_In_122 : STD_LOGIC; 
  signal RPNC_control_state_FSM_FFd7_In : STD_LOGIC; 
  signal RPNC_control_state_FSM_FFd8_In : STD_LOGIC; 
  signal RPNC_control_GND_7_o_INV_18_o_125 : STD_LOGIC; 
  signal RPNC_control_op_code_0_126 : STD_LOGIC; 
  signal RPNC_control_op_code_1_127 : STD_LOGIC; 
  signal RPNC_control_op_code_2_128 : STD_LOGIC; 
  signal RPNC_control_op_code_3_129 : STD_LOGIC; 
  signal RPNC_control_op_code_4_130 : STD_LOGIC; 
  signal RPNC_control_op_code_5_131 : STD_LOGIC; 
  signal RPNC_control_op_code_6_132 : STD_LOGIC; 
  signal RPNC_control_op_code_7_133 : STD_LOGIC; 
  signal RPNC_control_state_FSM_FFd2_134 : STD_LOGIC; 
  signal RPNC_stack_store_N171 : STD_LOGIC; 
  signal RPNC_stack_store_N7 : STD_LOGIC; 
  signal RPNC_stack_store_N42 : STD_LOGIC; 
  signal RPNC_stack_store_N01 : STD_LOGIC; 
  signal RPNC_stack_store_N69 : STD_LOGIC; 
  signal RPNC_stack_store_N68 : STD_LOGIC; 
  signal RPNC_stack_store_N65 : STD_LOGIC; 
  signal RPNC_stack_store_N64 : STD_LOGIC; 
  signal RPNC_stack_store_N61 : STD_LOGIC; 
  signal RPNC_stack_store_N60 : STD_LOGIC; 
  signal RPNC_stack_store_N57 : STD_LOGIC; 
  signal RPNC_stack_store_N56 : STD_LOGIC; 
  signal RPNC_stack_store_N53 : STD_LOGIC; 
  signal RPNC_stack_store_N52 : STD_LOGIC; 
  signal RPNC_stack_store_N51 : STD_LOGIC; 
  signal RPNC_stack_store_N47 : STD_LOGIC; 
  signal RPNC_stack_store_N46 : STD_LOGIC; 
  signal RPNC_stack_store_N45 : STD_LOGIC; 
  signal RPNC_stack_store_N41 : STD_LOGIC; 
  signal RPNC_stack_store_N40 : STD_LOGIC; 
  signal RPNC_stack_store_N39 : STD_LOGIC; 
  signal RPNC_stack_store_N35 : STD_LOGIC; 
  signal RPNC_stack_store_N34 : STD_LOGIC; 
  signal RPNC_stack_store_N33 : STD_LOGIC; 
  signal RPNC_stack_store_N29 : STD_LOGIC; 
  signal RPNC_stack_store_N28 : STD_LOGIC; 
  signal RPNC_stack_store_N27 : STD_LOGIC; 
  signal RPNC_stack_store_N23 : STD_LOGIC; 
  signal RPNC_stack_store_N22 : STD_LOGIC; 
  signal RPNC_stack_store_N21 : STD_LOGIC; 
  signal RPNC_stack_store_N17 : STD_LOGIC; 
  signal RPNC_stack_store_N16 : STD_LOGIC; 
  signal RPNC_stack_store_N15 : STD_LOGIC; 
  signal RPNC_stack_store_N11 : STD_LOGIC; 
  signal RPNC_stack_store_N10 : STD_LOGIC; 
  signal RPNC_stack_store_N9 : STD_LOGIC; 
  signal RPNC_stack_store_write_ctrl3_171 : STD_LOGIC; 
  signal RPNC_stack_store_write_ctrl2_172 : STD_LOGIC; 
  signal RPNC_stack_store_write_ctrl1_173 : STD_LOGIC; 
  signal RPNC_stack_store_write_ctrl_174 : STD_LOGIC; 
  signal RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q : STD_LOGIC; 
  signal RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q : STD_LOGIC; 
  signal RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q : STD_LOGIC; 
  signal RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q : STD_LOGIC; 
  signal RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q : STD_LOGIC; 
  signal RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_7_Q : STD_LOGIC; 
  signal RPNC_stack_store_BUS_0010 : STD_LOGIC; 
  signal RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_0_Q : STD_LOGIC; 
  signal RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_1_Q : STD_LOGIC; 
  signal RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_2_Q : STD_LOGIC; 
  signal RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_3_Q : STD_LOGIC; 
  signal RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_4_Q : STD_LOGIC; 
  signal RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_5_Q : STD_LOGIC; 
  signal RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_6_Q : STD_LOGIC; 
  signal RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_7_Q : STD_LOGIC; 
  signal InstrBufferInst_N68 : STD_LOGIC; 
  signal InstrBufferInst_N57 : STD_LOGIC; 
  signal InstrBufferInst_N19 : STD_LOGIC; 
  signal InstrBufferInst_N18 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_15_Q_200 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_14_Q_202 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_13_Q_204 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_12_Q_206 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_11_Q_208 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_10_Q_210 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_8_Q_214 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_7_Q_216 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_5_Q_220 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_4_Q_222 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_3_Q_224 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_2_Q_226 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_1_Q_228 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv : STD_LOGIC; 
  signal InstrBufferInst_Result_7_1 : STD_LOGIC; 
  signal InstrBufferInst_Result_6_1 : STD_LOGIC; 
  signal InstrBufferInst_Result_5_1 : STD_LOGIC; 
  signal InstrBufferInst_Result_4_1 : STD_LOGIC; 
  signal InstrBufferInst_Result_3_1 : STD_LOGIC; 
  signal InstrBufferInst_Result_2_1 : STD_LOGIC; 
  signal InstrBufferInst_Result_1_1 : STD_LOGIC; 
  signal InstrBufferInst_Result_0_1 : STD_LOGIC; 
  signal InstrBufferInst_n0087_inv : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_newTxData_302 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312 : STD_LOGIC; 
  signal InstrBufferInst_n0084_inv : STD_LOGIC; 
  signal InstrBufferInst_regWriteEnable_GND_19_o_AND_129_o : STD_LOGIC; 
  signal InstrBufferInst_regWriteEnable_GND_19_o_AND_127_o : STD_LOGIC; 
  signal InstrBufferInst_regWriteEnable_GND_19_o_AND_126_o : STD_LOGIC; 
  signal InstrBufferInst_dataMemWriteEn : STD_LOGIC; 
  signal InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_1_Q : STD_LOGIC; 
  signal InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_2_Q : STD_LOGIC; 
  signal InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_3_Q : STD_LOGIC; 
  signal InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_4_Q : STD_LOGIC; 
  signal InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_5_Q : STD_LOGIC; 
  signal InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_6_Q : STD_LOGIC; 
  signal InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_7_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntRead_350 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntWrite_351 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_N63 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_N59 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_N57 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_N52 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_14_Q_380 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_13_Q_381 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_12_Q_382 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_11_Q_383 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_10_Q_384 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_9_Q_385 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_8_Q_386 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_7_Q_387 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_6_Q_388 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_5_Q_389 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_4_Q_390 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_3_Q_391 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_2_Q_392 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_1_Q_393 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_0_Q_394 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_lut_0_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount7 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount6 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount5 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount4 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount3 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount2 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount1 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0372_inv_419 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_In : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2_In : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_In_422 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In_427 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_N3 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0411_inv : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0366_inv : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0335_inv : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0347_inv : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0326_inv : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0323_inv : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_binLastByte : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iReadReq_PWR_36_o_MUX_142_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataInHexRange : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_19_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_25_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_24_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_22_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_rxData_7_GND_53_o_equal_1_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iReadReq_PWR_36_o_MUX_144_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_0_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_1_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_2_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_3_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_4_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_5_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_6_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_7_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_8_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_9_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_10_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_11_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_12_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_13_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_14_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_15_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam_7_GND_53_o_mux_60_OUT_4_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam_7_GND_53_o_mux_60_OUT_5_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam_7_GND_53_o_mux_60_OUT_6_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam_7_GND_53_o_mux_60_OUT_7_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_binWriteOp_PWR_36_o_MUX_125_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_binReadOp_PWR_36_o_MUX_123_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_0_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_1_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_2_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_3_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_4_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_5_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_6_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_7_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_2_newTxData_Mux_107_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_0_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_1_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_2_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_3_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_4_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_5_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_6_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_7_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_8_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_9_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_10_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_11_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_12_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_13_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_14_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_15_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_0_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_1_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_2_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_3_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_4_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_5_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_6_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_7_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_8_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_9_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_10_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_11_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_12_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_13_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_14_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_15_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_rxData_1_INV_112_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_72_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_92_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_35_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2_525 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iWriteReq_543 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iReadReq_544 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_addrAutoInc_545 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_sendStatFlag_546 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_binWriteOp_547 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_binReadOp_548 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_writeOp_549 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_readOp_550 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_3_PWR_36_o_equal_65_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_readDoneS_568 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_readDone_569 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_sTxBusy_570 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_N4 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count163 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count162 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count161 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count16 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_n0054_inv : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount3 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount2 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount1 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_n0050_inv_590 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_PWR_29_o_dataBuf_0_MUX_102_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_0_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_1_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_2_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_3_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_4_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_5_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_6_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_7_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_8_Q : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_PWR_29_o_MUX_92_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount3 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount2 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount1 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_n0061_inv : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count163 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count162 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count161 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count16 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_n0057_inv_628 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_PWR_30_o_MUX_104_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_25_o : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal InstrBufferInst_regReadData_3_1_664 : STD_LOGIC; 
  signal InstrBufferInst_regReadData_1_1_665 : STD_LOGIC; 
  signal InstrBufferInst_regReadData_5_1_666 : STD_LOGIC; 
  signal InstrBufferInst_regReadData_7_1_667 : STD_LOGIC; 
  signal InstrBufferInst_regReadData_6_1_668 : STD_LOGIC; 
  signal InstrBufferInst_regReadData_4_1_669 : STD_LOGIC; 
  signal InstrBufferInst_regReadData_2_1_670 : STD_LOGIC; 
  signal InstrBufferInst_regReadData_0_1_671 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_673 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_1_674 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_2_675 : STD_LOGIC; 
  signal InstrBufferInst_regReadData_0_2 : STD_LOGIC; 
  signal InstrBufferInst_regReadData_0_21_677 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0406_inv21 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0406_inv211_681 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In2_682 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In21_683 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT2 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT21_685 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataNibble_3_1_687 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT1 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT11_689 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT7 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT71_691 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT3 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT4 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In1_698 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In4_699 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In1_700 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In2_701 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataInHexRange1_702 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataInHexRange2_703 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In1_704 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In3_705 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4_706 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In5_707 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_9_rt_721 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_6_rt_722 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_0_rt_723 : STD_LOGIC; 
  signal InstrBufferInst_Mcount_remainingInstructions_cy_0_rt_724 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_14_rt_725 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_13_rt_726 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_12_rt_727 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_11_rt_728 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_10_rt_729 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_9_rt_730 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_8_rt_731 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_7_rt_732 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_6_rt_733 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_5_rt_734 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_4_rt_735 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_3_rt_736 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_2_rt_737 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_1_rt_738 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_15_rt_739 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0351_inv1_cepot_740 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntWrite_dpot_741 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_intWrData_7_rstpot_744 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_intWrData_6_rstpot_745 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_intWrData_5_rstpot_746 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_intWrData_4_rstpot_747 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_intWrData_3_rstpot_748 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_intWrData_2_rstpot_749 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_intWrData_1_rstpot_750 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_intWrData_0_rstpot_751 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal InstrBufferInst_remainingInstructions_7_rstpot_768 : STD_LOGIC; 
  signal InstrBufferInst_remainingInstructions_6_rstpot_769 : STD_LOGIC; 
  signal InstrBufferInst_remainingInstructions_5_rstpot_770 : STD_LOGIC; 
  signal InstrBufferInst_remainingInstructions_4_rstpot_771 : STD_LOGIC; 
  signal InstrBufferInst_remainingInstructions_3_rstpot_772 : STD_LOGIC; 
  signal InstrBufferInst_remainingInstructions_2_rstpot_773 : STD_LOGIC; 
  signal InstrBufferInst_remainingInstructions_1_rstpot_774 : STD_LOGIC; 
  signal InstrBufferInst_remainingInstructions_0_rstpot_775 : STD_LOGIC; 
  signal InstrBufferInst_currentReadAddr_0_rstpot_776 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_iIntRead_rstpot_777 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0406_inv1_rstpot_782 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0406_inv1_cepot : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txData_0_dpot_784 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txData_1_dpot_785 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txData_2_dpot_786 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txData_3_dpot_787 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txData_4_dpot_788 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txData_5_dpot_789 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txData_6_dpot_790 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_txData_7_dpot_791 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o11_833 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_n0369_inv1_rstpot_834 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam_0_dpot_835 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam_1_dpot_836 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam_2_dpot_837 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam_3_dpot_838 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam_4_dpot_839 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam_5_dpot_840 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam_6_dpot_841 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam_7_dpot_842 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_1_843 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o111 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_rxData_3_1_845 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_rxData_2_1_846 : STD_LOGIC; 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_rxData_4_1_847 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram122_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram121_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram101_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram92_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram102_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram91_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram112_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram111_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram7_DOD_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram6_DOD_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram8_DOD_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram4_DOD_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram3_DOD_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram5_DOD_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram1_DOD_UNCONNECTED : STD_LOGIC; 
  signal NLW_RPNC_stack_store_Mram_ram2_DOD_UNCONNECTED : STD_LOGIC; 
  signal RPNC_stack_store_stack_top : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal instrDataSignal : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RPNC_stack_Mcount_stack_ptr_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RPNC_stack_Mcount_stack_ptr_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal RPNC_Maddsub_alu_result_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RPNC_Maddsub_alu_result_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal RPNC_Result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RPNC_stack_stack_ptr : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RPNC_alu_result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RPNC_stack_in : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RPNC_a : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RPNC_b : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal RPNC_stack_store_n0011 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_ut_bg_counter : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal InstrBufferInst_Mcount_remainingInstructions_lut : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal InstrBufferInst_Mcount_remainingInstructions_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal InstrBufferInst_currentReadAddr : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal InstrBufferInst_Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_up_txData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_rxData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal InstrBufferInst_regReadData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal InstrBufferInst_dataMemReadAddr : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal InstrBufferInst_remainingInstructions : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_up_intWrData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_up_iIntAddress : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_up_dataNibble : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_up_txNibble : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_up_binByteCount : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_up_dataParam : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_up_addrParam : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_up_readDataS : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_count16 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_ut_ut_bitCount : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_bitCount : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_count16 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal InstrBufferInst_UARTHandlerInst_ut_ur_inSync : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => leds_0_OBUF_24
    );
  RPNC_stack_Mcount_stack_ptr_xor_7_Q : XORCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(6),
      LI => RPNC_stack_Mcount_stack_ptr_lut(7),
      O => RPNC_Result(7)
    );
  RPNC_stack_Mcount_stack_ptr_xor_6_Q : XORCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(5),
      LI => RPNC_stack_Mcount_stack_ptr_lut(6),
      O => RPNC_Result(6)
    );
  RPNC_stack_Mcount_stack_ptr_cy_6_Q : MUXCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(5),
      DI => RPNC_stack_stack_ptr(6),
      S => RPNC_stack_Mcount_stack_ptr_lut(6),
      O => RPNC_stack_Mcount_stack_ptr_cy(6)
    );
  RPNC_stack_Mcount_stack_ptr_xor_5_Q : XORCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(4),
      LI => RPNC_stack_Mcount_stack_ptr_lut(5),
      O => RPNC_Result(5)
    );
  RPNC_stack_Mcount_stack_ptr_cy_5_Q : MUXCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(4),
      DI => RPNC_stack_stack_ptr(5),
      S => RPNC_stack_Mcount_stack_ptr_lut(5),
      O => RPNC_stack_Mcount_stack_ptr_cy(5)
    );
  RPNC_stack_Mcount_stack_ptr_xor_4_Q : XORCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(3),
      LI => RPNC_stack_Mcount_stack_ptr_lut(4),
      O => RPNC_Result(4)
    );
  RPNC_stack_Mcount_stack_ptr_cy_4_Q : MUXCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(3),
      DI => RPNC_stack_stack_ptr(4),
      S => RPNC_stack_Mcount_stack_ptr_lut(4),
      O => RPNC_stack_Mcount_stack_ptr_cy(4)
    );
  RPNC_stack_Mcount_stack_ptr_xor_3_Q : XORCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(2),
      LI => RPNC_stack_Mcount_stack_ptr_lut(3),
      O => RPNC_Result(3)
    );
  RPNC_stack_Mcount_stack_ptr_cy_3_Q : MUXCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(2),
      DI => RPNC_stack_stack_ptr(3),
      S => RPNC_stack_Mcount_stack_ptr_lut(3),
      O => RPNC_stack_Mcount_stack_ptr_cy(3)
    );
  RPNC_stack_Mcount_stack_ptr_xor_2_Q : XORCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(1),
      LI => RPNC_stack_Mcount_stack_ptr_lut(2),
      O => RPNC_Result(2)
    );
  RPNC_stack_Mcount_stack_ptr_cy_2_Q : MUXCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(1),
      DI => RPNC_stack_stack_ptr(2),
      S => RPNC_stack_Mcount_stack_ptr_lut(2),
      O => RPNC_stack_Mcount_stack_ptr_cy(2)
    );
  RPNC_stack_Mcount_stack_ptr_xor_1_Q : XORCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(0),
      LI => RPNC_stack_Mcount_stack_ptr_lut(1),
      O => RPNC_Result(1)
    );
  RPNC_stack_Mcount_stack_ptr_cy_1_Q : MUXCY
    port map (
      CI => RPNC_stack_Mcount_stack_ptr_cy(0),
      DI => RPNC_stack_stack_ptr(1),
      S => RPNC_stack_Mcount_stack_ptr_lut(1),
      O => RPNC_stack_Mcount_stack_ptr_cy(1)
    );
  RPNC_stack_Mcount_stack_ptr_xor_0_Q : XORCY
    port map (
      CI => RPNC_push_inv,
      LI => RPNC_stack_Mcount_stack_ptr_lut(0),
      O => RPNC_Result(0)
    );
  RPNC_stack_Mcount_stack_ptr_cy_0_Q : MUXCY
    port map (
      CI => RPNC_push_inv,
      DI => RPNC_stack_stack_ptr(0),
      S => RPNC_stack_Mcount_stack_ptr_lut(0),
      O => RPNC_stack_Mcount_stack_ptr_cy(0)
    );
  RPNC_Maddsub_alu_result_xor_7_Q : XORCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(6),
      LI => RPNC_Maddsub_alu_result_lut(7),
      O => RPNC_alu_result(7)
    );
  RPNC_Maddsub_alu_result_lut_7_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RPNC_a(7),
      I1 => RPNC_b(7),
      I2 => RPNC_control_alu_sel_56,
      O => RPNC_Maddsub_alu_result_lut(7)
    );
  RPNC_Maddsub_alu_result_xor_6_Q : XORCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(5),
      LI => RPNC_Maddsub_alu_result_lut(6),
      O => RPNC_alu_result(6)
    );
  RPNC_Maddsub_alu_result_cy_6_Q : MUXCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(5),
      DI => RPNC_a(6),
      S => RPNC_Maddsub_alu_result_lut(6),
      O => RPNC_Maddsub_alu_result_cy(6)
    );
  RPNC_Maddsub_alu_result_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RPNC_a(6),
      I1 => RPNC_b(6),
      I2 => RPNC_control_alu_sel_56,
      O => RPNC_Maddsub_alu_result_lut(6)
    );
  RPNC_Maddsub_alu_result_xor_5_Q : XORCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(4),
      LI => RPNC_Maddsub_alu_result_lut(5),
      O => RPNC_alu_result(5)
    );
  RPNC_Maddsub_alu_result_cy_5_Q : MUXCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(4),
      DI => RPNC_a(5),
      S => RPNC_Maddsub_alu_result_lut(5),
      O => RPNC_Maddsub_alu_result_cy(5)
    );
  RPNC_Maddsub_alu_result_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RPNC_a(5),
      I1 => RPNC_b(5),
      I2 => RPNC_control_alu_sel_56,
      O => RPNC_Maddsub_alu_result_lut(5)
    );
  RPNC_Maddsub_alu_result_xor_4_Q : XORCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(3),
      LI => RPNC_Maddsub_alu_result_lut(4),
      O => RPNC_alu_result(4)
    );
  RPNC_Maddsub_alu_result_cy_4_Q : MUXCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(3),
      DI => RPNC_a(4),
      S => RPNC_Maddsub_alu_result_lut(4),
      O => RPNC_Maddsub_alu_result_cy(4)
    );
  RPNC_Maddsub_alu_result_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RPNC_a(4),
      I1 => RPNC_b(4),
      I2 => RPNC_control_alu_sel_56,
      O => RPNC_Maddsub_alu_result_lut(4)
    );
  RPNC_Maddsub_alu_result_xor_3_Q : XORCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(2),
      LI => RPNC_Maddsub_alu_result_lut(3),
      O => RPNC_alu_result(3)
    );
  RPNC_Maddsub_alu_result_cy_3_Q : MUXCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(2),
      DI => RPNC_a(3),
      S => RPNC_Maddsub_alu_result_lut(3),
      O => RPNC_Maddsub_alu_result_cy(3)
    );
  RPNC_Maddsub_alu_result_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RPNC_a(3),
      I1 => RPNC_b(3),
      I2 => RPNC_control_alu_sel_56,
      O => RPNC_Maddsub_alu_result_lut(3)
    );
  RPNC_Maddsub_alu_result_xor_2_Q : XORCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(1),
      LI => RPNC_Maddsub_alu_result_lut(2),
      O => RPNC_alu_result(2)
    );
  RPNC_Maddsub_alu_result_cy_2_Q : MUXCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(1),
      DI => RPNC_a(2),
      S => RPNC_Maddsub_alu_result_lut(2),
      O => RPNC_Maddsub_alu_result_cy(2)
    );
  RPNC_Maddsub_alu_result_lut_2_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RPNC_a(2),
      I1 => RPNC_b(2),
      I2 => RPNC_control_alu_sel_56,
      O => RPNC_Maddsub_alu_result_lut(2)
    );
  RPNC_Maddsub_alu_result_xor_1_Q : XORCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(0),
      LI => RPNC_Maddsub_alu_result_lut(1),
      O => RPNC_alu_result(1)
    );
  RPNC_Maddsub_alu_result_cy_1_Q : MUXCY
    port map (
      CI => RPNC_Maddsub_alu_result_cy(0),
      DI => RPNC_a(1),
      S => RPNC_Maddsub_alu_result_lut(1),
      O => RPNC_Maddsub_alu_result_cy(1)
    );
  RPNC_Maddsub_alu_result_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RPNC_a(1),
      I1 => RPNC_b(1),
      I2 => RPNC_control_alu_sel_56,
      O => RPNC_Maddsub_alu_result_lut(1)
    );
  RPNC_Maddsub_alu_result_xor_0_Q : XORCY
    port map (
      CI => RPNC_control_alu_sel_56,
      LI => RPNC_Maddsub_alu_result_lut(0),
      O => RPNC_alu_result(0)
    );
  RPNC_Maddsub_alu_result_cy_0_Q : MUXCY
    port map (
      CI => RPNC_control_alu_sel_56,
      DI => RPNC_a(0),
      S => RPNC_Maddsub_alu_result_lut(0),
      O => RPNC_Maddsub_alu_result_cy(0)
    );
  RPNC_Maddsub_alu_result_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RPNC_a(0),
      I1 => RPNC_b(0),
      I2 => RPNC_control_alu_sel_56,
      O => RPNC_Maddsub_alu_result_lut(0)
    );
  RPNC_stack_stack_ptr_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      D => RPNC_Result(7),
      R => RPNC_stack_n0021,
      Q => RPNC_stack_stack_ptr(7)
    );
  RPNC_stack_stack_ptr_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      D => RPNC_Result(6),
      R => RPNC_stack_n0021,
      Q => RPNC_stack_stack_ptr(6)
    );
  RPNC_stack_stack_ptr_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      D => RPNC_Result(5),
      R => RPNC_stack_n0021,
      Q => RPNC_stack_stack_ptr(5)
    );
  RPNC_stack_stack_ptr_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      D => RPNC_Result(4),
      R => RPNC_stack_n0021,
      Q => RPNC_stack_stack_ptr(4)
    );
  RPNC_stack_stack_ptr_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      D => RPNC_Result(3),
      R => RPNC_stack_n0021,
      Q => RPNC_stack_stack_ptr(3)
    );
  RPNC_stack_stack_ptr_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      D => RPNC_Result(2),
      R => RPNC_stack_n0021,
      Q => RPNC_stack_stack_ptr(2)
    );
  RPNC_stack_stack_ptr_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      D => RPNC_Result(1),
      R => RPNC_stack_n0021,
      Q => RPNC_stack_stack_ptr(1)
    );
  RPNC_stack_stack_ptr_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      D => RPNC_Result(0),
      R => RPNC_stack_n0021,
      Q => RPNC_stack_stack_ptr(0)
    );
  RPNC_a_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd3_108,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(7),
      Q => RPNC_a(7)
    );
  RPNC_a_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd3_108,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(6),
      Q => RPNC_a(6)
    );
  RPNC_a_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd3_108,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(5),
      Q => RPNC_a(5)
    );
  RPNC_a_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd3_108,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(4),
      Q => RPNC_a(4)
    );
  RPNC_a_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd3_108,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(3),
      Q => RPNC_a(3)
    );
  RPNC_a_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd3_108,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(2),
      Q => RPNC_a(2)
    );
  RPNC_a_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd3_108,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(1),
      Q => RPNC_a(1)
    );
  RPNC_a_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd3_108,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(0),
      Q => RPNC_a(0)
    );
  RPNC_b_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd5_107,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(7),
      Q => RPNC_b(7)
    );
  RPNC_b_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd5_107,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(6),
      Q => RPNC_b(6)
    );
  RPNC_b_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd5_107,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(5),
      Q => RPNC_b(5)
    );
  RPNC_b_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd5_107,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(4),
      Q => RPNC_b(4)
    );
  RPNC_b_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd5_107,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(3),
      Q => RPNC_b(3)
    );
  RPNC_b_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd5_107,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(2),
      Q => RPNC_b(2)
    );
  RPNC_b_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd5_107,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(1),
      Q => RPNC_b(1)
    );
  RPNC_b_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_control_state_FSM_FFd5_107,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top(0),
      Q => RPNC_b(0)
    );
  RPNC_control_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_control_state_FSM_FFd2_134,
      Q => RPNC_control_state_FSM_FFd1_109
    );
  RPNC_control_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_control_state_FSM_FFd3_108,
      Q => RPNC_control_state_FSM_FFd2_134
    );
  RPNC_control_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_control_state_FSM_FFd5_107,
      Q => RPNC_control_state_FSM_FFd3_108
    );
  RPNC_control_state_FSM_FFd6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_control_state_FSM_FFd7_11,
      Q => RPNC_control_state_FSM_FFd6_119
    );
  RPNC_control_state_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_control_state_FSM_FFd4_In_121,
      Q => RPNC_control_state_FSM_FFd4_118
    );
  RPNC_control_state_FSM_FFd5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_control_state_FSM_FFd5_In_122,
      Q => RPNC_control_state_FSM_FFd5_107
    );
  RPNC_control_state_FSM_FFd7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_control_state_FSM_FFd7_In,
      Q => RPNC_control_state_FSM_FFd7_11
    );
  RPNC_control_state_FSM_FFd8 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      D => RPNC_control_state_FSM_FFd8_In,
      PRE => InstrBufferInst_RPNCResetSignal_21,
      Q => RPNC_control_state_FSM_FFd8_120
    );
  RPNC_control_alu_sel : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => RPNC_control_GND_7_o_INV_18_o_125,
      G => RPNC_control_state_FSM_FFd2_134,
      Q => RPNC_control_alu_sel_56
    );
  RPNC_control_op_code_0 : LD
    port map (
      D => instrDataSignal(8),
      G => RPNC_control_state_FSM_FFd7_11,
      Q => RPNC_control_op_code_0_126
    );
  RPNC_control_op_code_2 : LD
    port map (
      D => instrDataSignal(10),
      G => RPNC_control_state_FSM_FFd7_11,
      Q => RPNC_control_op_code_2_128
    );
  RPNC_control_op_code_3 : LD
    port map (
      D => instrDataSignal(11),
      G => RPNC_control_state_FSM_FFd7_11,
      Q => RPNC_control_op_code_3_129
    );
  RPNC_control_op_code_1 : LD
    port map (
      D => instrDataSignal(9),
      G => RPNC_control_state_FSM_FFd7_11,
      Q => RPNC_control_op_code_1_127
    );
  RPNC_control_op_code_4 : LD
    port map (
      D => instrDataSignal(12),
      G => RPNC_control_state_FSM_FFd7_11,
      Q => RPNC_control_op_code_4_130
    );
  RPNC_control_op_code_5 : LD
    port map (
      D => instrDataSignal(13),
      G => RPNC_control_state_FSM_FFd7_11,
      Q => RPNC_control_op_code_5_131
    );
  RPNC_control_op_code_7 : LD
    port map (
      D => instrDataSignal(15),
      G => RPNC_control_state_FSM_FFd7_11,
      Q => RPNC_control_op_code_7_133
    );
  RPNC_control_op_code_6 : LD
    port map (
      D => instrDataSignal(14),
      G => RPNC_control_state_FSM_FFd7_11,
      Q => RPNC_control_op_code_6_132
    );
  RPNC_stack_store_Mram_ram122 : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => RPNC_stack_store_n0011(0),
      A1 => RPNC_stack_store_n0011(1),
      A2 => RPNC_stack_store_n0011(2),
      A3 => RPNC_stack_store_n0011(3),
      A4 => RPNC_stack_store_n0011(4),
      A5 => RPNC_stack_store_n0011(5),
      D => RPNC_stack_in(7),
      DPRA0 => RPNC_stack_store_n0011(0),
      DPRA1 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      DPRA2 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      DPRA3 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      DPRA4 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      DPRA5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl3_171,
      SPO => NLW_RPNC_stack_store_Mram_ram122_SPO_UNCONNECTED,
      DPO => RPNC_stack_store_N69
    );
  RPNC_stack_store_Mram_ram121 : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => RPNC_stack_store_n0011(0),
      A1 => RPNC_stack_store_n0011(1),
      A2 => RPNC_stack_store_n0011(2),
      A3 => RPNC_stack_store_n0011(3),
      A4 => RPNC_stack_store_n0011(4),
      A5 => RPNC_stack_store_n0011(5),
      D => RPNC_stack_in(6),
      DPRA0 => RPNC_stack_store_n0011(0),
      DPRA1 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      DPRA2 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      DPRA3 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      DPRA4 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      DPRA5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl3_171,
      SPO => NLW_RPNC_stack_store_Mram_ram121_SPO_UNCONNECTED,
      DPO => RPNC_stack_store_N68
    );
  RPNC_stack_store_Mram_ram101 : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => RPNC_stack_store_n0011(0),
      A1 => RPNC_stack_store_n0011(1),
      A2 => RPNC_stack_store_n0011(2),
      A3 => RPNC_stack_store_n0011(3),
      A4 => RPNC_stack_store_n0011(4),
      A5 => RPNC_stack_store_n0011(5),
      D => RPNC_stack_in(6),
      DPRA0 => RPNC_stack_store_n0011(0),
      DPRA1 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      DPRA2 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      DPRA3 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      DPRA4 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      DPRA5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl1_173,
      SPO => NLW_RPNC_stack_store_Mram_ram101_SPO_UNCONNECTED,
      DPO => RPNC_stack_store_N60
    );
  RPNC_stack_store_Mram_ram92 : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => RPNC_stack_store_n0011(0),
      A1 => RPNC_stack_store_n0011(1),
      A2 => RPNC_stack_store_n0011(2),
      A3 => RPNC_stack_store_n0011(3),
      A4 => RPNC_stack_store_n0011(4),
      A5 => RPNC_stack_store_n0011(5),
      D => RPNC_stack_in(7),
      DPRA0 => RPNC_stack_store_n0011(0),
      DPRA1 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      DPRA2 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      DPRA3 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      DPRA4 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      DPRA5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl_174,
      SPO => NLW_RPNC_stack_store_Mram_ram92_SPO_UNCONNECTED,
      DPO => RPNC_stack_store_N57
    );
  RPNC_stack_store_Mram_ram102 : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => RPNC_stack_store_n0011(0),
      A1 => RPNC_stack_store_n0011(1),
      A2 => RPNC_stack_store_n0011(2),
      A3 => RPNC_stack_store_n0011(3),
      A4 => RPNC_stack_store_n0011(4),
      A5 => RPNC_stack_store_n0011(5),
      D => RPNC_stack_in(7),
      DPRA0 => RPNC_stack_store_n0011(0),
      DPRA1 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      DPRA2 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      DPRA3 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      DPRA4 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      DPRA5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl1_173,
      SPO => NLW_RPNC_stack_store_Mram_ram102_SPO_UNCONNECTED,
      DPO => RPNC_stack_store_N61
    );
  RPNC_stack_store_Mram_ram91 : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => RPNC_stack_store_n0011(0),
      A1 => RPNC_stack_store_n0011(1),
      A2 => RPNC_stack_store_n0011(2),
      A3 => RPNC_stack_store_n0011(3),
      A4 => RPNC_stack_store_n0011(4),
      A5 => RPNC_stack_store_n0011(5),
      D => RPNC_stack_in(6),
      DPRA0 => RPNC_stack_store_n0011(0),
      DPRA1 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      DPRA2 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      DPRA3 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      DPRA4 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      DPRA5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl_174,
      SPO => NLW_RPNC_stack_store_Mram_ram91_SPO_UNCONNECTED,
      DPO => RPNC_stack_store_N56
    );
  RPNC_stack_store_Mram_ram112 : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => RPNC_stack_store_n0011(0),
      A1 => RPNC_stack_store_n0011(1),
      A2 => RPNC_stack_store_n0011(2),
      A3 => RPNC_stack_store_n0011(3),
      A4 => RPNC_stack_store_n0011(4),
      A5 => RPNC_stack_store_n0011(5),
      D => RPNC_stack_in(7),
      DPRA0 => RPNC_stack_store_n0011(0),
      DPRA1 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      DPRA2 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      DPRA3 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      DPRA4 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      DPRA5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl2_172,
      SPO => NLW_RPNC_stack_store_Mram_ram112_SPO_UNCONNECTED,
      DPO => RPNC_stack_store_N65
    );
  RPNC_stack_store_Mram_ram111 : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => RPNC_stack_store_n0011(0),
      A1 => RPNC_stack_store_n0011(1),
      A2 => RPNC_stack_store_n0011(2),
      A3 => RPNC_stack_store_n0011(3),
      A4 => RPNC_stack_store_n0011(4),
      A5 => RPNC_stack_store_n0011(5),
      D => RPNC_stack_in(6),
      DPRA0 => RPNC_stack_store_n0011(0),
      DPRA1 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      DPRA2 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      DPRA3 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      DPRA4 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      DPRA5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl2_172,
      SPO => NLW_RPNC_stack_store_Mram_ram111_SPO_UNCONNECTED,
      DPO => RPNC_stack_store_N64
    );
  RPNC_stack_store_Mram_ram7 : RAM64M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl2_172,
      DIA => RPNC_stack_in(3),
      DIB => RPNC_stack_in(4),
      DIC => RPNC_stack_in(5),
      DID => leds_0_OBUF_24,
      DOA => RPNC_stack_store_N45,
      DOB => RPNC_stack_store_N46,
      DOC => RPNC_stack_store_N47,
      DOD => NLW_RPNC_stack_store_Mram_ram7_DOD_UNCONNECTED,
      ADDRA(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRA(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRA(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRA(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRA(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRA(0) => RPNC_stack_store_n0011(0),
      ADDRB(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRB(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRB(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRB(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRB(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRB(0) => RPNC_stack_store_n0011(0),
      ADDRC(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRC(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRC(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRC(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRC(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRC(0) => RPNC_stack_store_n0011(0),
      ADDRD(5) => RPNC_stack_store_n0011(5),
      ADDRD(4) => RPNC_stack_store_n0011(4),
      ADDRD(3) => RPNC_stack_store_n0011(3),
      ADDRD(2) => RPNC_stack_store_n0011(2),
      ADDRD(1) => RPNC_stack_store_n0011(1),
      ADDRD(0) => RPNC_stack_store_n0011(0)
    );
  RPNC_stack_store_Mram_ram6 : RAM64M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl1_173,
      DIA => RPNC_stack_in(3),
      DIB => RPNC_stack_in(4),
      DIC => RPNC_stack_in(5),
      DID => leds_0_OBUF_24,
      DOA => RPNC_stack_store_N39,
      DOB => RPNC_stack_store_N40,
      DOC => RPNC_stack_store_N41,
      DOD => NLW_RPNC_stack_store_Mram_ram6_DOD_UNCONNECTED,
      ADDRA(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRA(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRA(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRA(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRA(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRA(0) => RPNC_stack_store_n0011(0),
      ADDRB(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRB(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRB(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRB(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRB(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRB(0) => RPNC_stack_store_n0011(0),
      ADDRC(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRC(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRC(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRC(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRC(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRC(0) => RPNC_stack_store_n0011(0),
      ADDRD(5) => RPNC_stack_store_n0011(5),
      ADDRD(4) => RPNC_stack_store_n0011(4),
      ADDRD(3) => RPNC_stack_store_n0011(3),
      ADDRD(2) => RPNC_stack_store_n0011(2),
      ADDRD(1) => RPNC_stack_store_n0011(1),
      ADDRD(0) => RPNC_stack_store_n0011(0)
    );
  RPNC_stack_store_Mram_ram8 : RAM64M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl3_171,
      DIA => RPNC_stack_in(3),
      DIB => RPNC_stack_in(4),
      DIC => RPNC_stack_in(5),
      DID => leds_0_OBUF_24,
      DOA => RPNC_stack_store_N51,
      DOB => RPNC_stack_store_N52,
      DOC => RPNC_stack_store_N53,
      DOD => NLW_RPNC_stack_store_Mram_ram8_DOD_UNCONNECTED,
      ADDRA(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRA(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRA(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRA(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRA(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRA(0) => RPNC_stack_store_n0011(0),
      ADDRB(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRB(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRB(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRB(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRB(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRB(0) => RPNC_stack_store_n0011(0),
      ADDRC(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRC(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRC(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRC(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRC(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRC(0) => RPNC_stack_store_n0011(0),
      ADDRD(5) => RPNC_stack_store_n0011(5),
      ADDRD(4) => RPNC_stack_store_n0011(4),
      ADDRD(3) => RPNC_stack_store_n0011(3),
      ADDRD(2) => RPNC_stack_store_n0011(2),
      ADDRD(1) => RPNC_stack_store_n0011(1),
      ADDRD(0) => RPNC_stack_store_n0011(0)
    );
  RPNC_stack_store_Mram_ram4 : RAM64M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl3_171,
      DIA => RPNC_stack_in(0),
      DIB => RPNC_stack_in(1),
      DIC => RPNC_stack_in(2),
      DID => leds_0_OBUF_24,
      DOA => RPNC_stack_store_N27,
      DOB => RPNC_stack_store_N28,
      DOC => RPNC_stack_store_N29,
      DOD => NLW_RPNC_stack_store_Mram_ram4_DOD_UNCONNECTED,
      ADDRA(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRA(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRA(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRA(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRA(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRA(0) => RPNC_stack_store_n0011(0),
      ADDRB(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRB(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRB(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRB(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRB(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRB(0) => RPNC_stack_store_n0011(0),
      ADDRC(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRC(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRC(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRC(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRC(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRC(0) => RPNC_stack_store_n0011(0),
      ADDRD(5) => RPNC_stack_store_n0011(5),
      ADDRD(4) => RPNC_stack_store_n0011(4),
      ADDRD(3) => RPNC_stack_store_n0011(3),
      ADDRD(2) => RPNC_stack_store_n0011(2),
      ADDRD(1) => RPNC_stack_store_n0011(1),
      ADDRD(0) => RPNC_stack_store_n0011(0)
    );
  RPNC_stack_store_Mram_ram3 : RAM64M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl2_172,
      DIA => RPNC_stack_in(0),
      DIB => RPNC_stack_in(1),
      DIC => RPNC_stack_in(2),
      DID => leds_0_OBUF_24,
      DOA => RPNC_stack_store_N21,
      DOB => RPNC_stack_store_N22,
      DOC => RPNC_stack_store_N23,
      DOD => NLW_RPNC_stack_store_Mram_ram3_DOD_UNCONNECTED,
      ADDRA(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRA(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRA(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRA(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRA(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRA(0) => RPNC_stack_store_n0011(0),
      ADDRB(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRB(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRB(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRB(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRB(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRB(0) => RPNC_stack_store_n0011(0),
      ADDRC(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRC(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRC(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRC(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRC(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRC(0) => RPNC_stack_store_n0011(0),
      ADDRD(5) => RPNC_stack_store_n0011(5),
      ADDRD(4) => RPNC_stack_store_n0011(4),
      ADDRD(3) => RPNC_stack_store_n0011(3),
      ADDRD(2) => RPNC_stack_store_n0011(2),
      ADDRD(1) => RPNC_stack_store_n0011(1),
      ADDRD(0) => RPNC_stack_store_n0011(0)
    );
  RPNC_stack_store_Mram_ram5 : RAM64M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl_174,
      DIA => RPNC_stack_in(3),
      DIB => RPNC_stack_in(4),
      DIC => RPNC_stack_in(5),
      DID => leds_0_OBUF_24,
      DOA => RPNC_stack_store_N33,
      DOB => RPNC_stack_store_N34,
      DOC => RPNC_stack_store_N35,
      DOD => NLW_RPNC_stack_store_Mram_ram5_DOD_UNCONNECTED,
      ADDRA(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRA(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRA(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRA(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRA(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRA(0) => RPNC_stack_store_n0011(0),
      ADDRB(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRB(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRB(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRB(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRB(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRB(0) => RPNC_stack_store_n0011(0),
      ADDRC(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRC(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRC(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRC(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRC(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRC(0) => RPNC_stack_store_n0011(0),
      ADDRD(5) => RPNC_stack_store_n0011(5),
      ADDRD(4) => RPNC_stack_store_n0011(4),
      ADDRD(3) => RPNC_stack_store_n0011(3),
      ADDRD(2) => RPNC_stack_store_n0011(2),
      ADDRD(1) => RPNC_stack_store_n0011(1),
      ADDRD(0) => RPNC_stack_store_n0011(0)
    );
  RPNC_stack_store_Mram_ram1 : RAM64M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl_174,
      DIA => RPNC_stack_in(0),
      DIB => RPNC_stack_in(1),
      DIC => RPNC_stack_in(2),
      DID => leds_0_OBUF_24,
      DOA => RPNC_stack_store_N9,
      DOB => RPNC_stack_store_N10,
      DOC => RPNC_stack_store_N11,
      DOD => NLW_RPNC_stack_store_Mram_ram1_DOD_UNCONNECTED,
      ADDRA(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRA(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRA(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRA(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRA(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRA(0) => RPNC_stack_store_n0011(0),
      ADDRB(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRB(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRB(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRB(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRB(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRB(0) => RPNC_stack_store_n0011(0),
      ADDRC(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRC(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRC(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRC(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRC(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRC(0) => RPNC_stack_store_n0011(0),
      ADDRD(5) => RPNC_stack_store_n0011(5),
      ADDRD(4) => RPNC_stack_store_n0011(4),
      ADDRD(3) => RPNC_stack_store_n0011(3),
      ADDRD(2) => RPNC_stack_store_n0011(2),
      ADDRD(1) => RPNC_stack_store_n0011(1),
      ADDRD(0) => RPNC_stack_store_n0011(0)
    );
  RPNC_stack_store_Mram_ram2 : RAM64M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_0,
      WE => RPNC_stack_store_write_ctrl1_173,
      DIA => RPNC_stack_in(0),
      DIB => RPNC_stack_in(1),
      DIC => RPNC_stack_in(2),
      DID => leds_0_OBUF_24,
      DOA => RPNC_stack_store_N15,
      DOB => RPNC_stack_store_N16,
      DOC => RPNC_stack_store_N17,
      DOD => NLW_RPNC_stack_store_Mram_ram2_DOD_UNCONNECTED,
      ADDRA(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRA(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRA(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRA(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRA(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRA(0) => RPNC_stack_store_n0011(0),
      ADDRB(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRB(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRB(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRB(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRB(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRB(0) => RPNC_stack_store_n0011(0),
      ADDRC(5) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q,
      ADDRC(4) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q,
      ADDRC(3) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q,
      ADDRC(2) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q,
      ADDRC(1) => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q,
      ADDRC(0) => RPNC_stack_store_n0011(0),
      ADDRD(5) => RPNC_stack_store_n0011(5),
      ADDRD(4) => RPNC_stack_store_n0011(4),
      ADDRD(3) => RPNC_stack_store_n0011(3),
      ADDRD(2) => RPNC_stack_store_n0011(2),
      ADDRD(1) => RPNC_stack_store_n0011(1),
      ADDRD(0) => RPNC_stack_store_n0011(0)
    );
  RPNC_stack_store_stack_top_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_7_Q,
      Q => RPNC_stack_store_stack_top(7)
    );
  RPNC_stack_store_stack_top_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_6_Q,
      Q => RPNC_stack_store_stack_top(6)
    );
  RPNC_stack_store_stack_top_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_5_Q,
      Q => RPNC_stack_store_stack_top(5)
    );
  RPNC_stack_store_stack_top_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_4_Q,
      Q => RPNC_stack_store_stack_top(4)
    );
  RPNC_stack_store_stack_top_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_3_Q,
      Q => RPNC_stack_store_stack_top(3)
    );
  RPNC_stack_store_stack_top_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_2_Q,
      Q => RPNC_stack_store_stack_top(2)
    );
  RPNC_stack_store_stack_top_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_1_Q,
      Q => RPNC_stack_store_stack_top(1)
    );
  RPNC_stack_store_stack_top_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => RPNC_stack_n0024_inv,
      CLR => InstrBufferInst_RPNCResetSignal_21,
      D => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_0_Q,
      Q => RPNC_stack_store_stack_top(0)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_15_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(14),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_15_Q_200,
      O => InstrBufferInst_Result(15)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_15_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(15),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_15_Q_200
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_14_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(13),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_14_Q_202,
      O => InstrBufferInst_Result(14)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_14_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(13),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(14),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_14_Q_202,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(14)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_14_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(14),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_14_Q_202
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_13_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(12),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_13_Q_204,
      O => InstrBufferInst_Result(13)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_13_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(12),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(13),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_13_Q_204,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(13)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_13_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(13),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_13_Q_204
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_12_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(11),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_12_Q_206,
      O => InstrBufferInst_Result(12)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_12_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(11),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(12),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_12_Q_206,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(12)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_12_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(12),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_12_Q_206
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_11_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(10),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_11_Q_208,
      O => InstrBufferInst_Result(11)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_11_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(10),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(11),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_11_Q_208,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(11)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(11),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_11_Q_208
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_10_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(9),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_10_Q_210,
      O => InstrBufferInst_Result(10)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_10_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(9),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(10),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_10_Q_210,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(10)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(10),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_10_Q_210
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_9_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(8),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_9_rt_721,
      O => InstrBufferInst_Result(9)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_9_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(8),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(9),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_9_rt_721,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(9)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_8_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(7),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_8_Q_214,
      O => InstrBufferInst_Result(8)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_8_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(7),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(8),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_8_Q_214,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(8)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_7_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(6),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_7_Q_216,
      O => InstrBufferInst_Result(7)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_7_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(6),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(7),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_7_Q_216,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(7)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_6_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(5),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_6_rt_722,
      O => InstrBufferInst_Result(6)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_6_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(5),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(6),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_6_rt_722,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(6)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_5_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(4),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_5_Q_220,
      O => InstrBufferInst_Result(5)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_5_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(4),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(5),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_5_Q_220,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(5)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(5),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_Q,
      I2 => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_5_Q_220
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_4_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(3),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_4_Q_222,
      O => InstrBufferInst_Result(4)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_4_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(3),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(4),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_4_Q_222,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(4)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(4),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_Q,
      I2 => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_4_Q_222
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_3_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(2),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_3_Q_224,
      O => InstrBufferInst_Result(3)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_3_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(2),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(3),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_3_Q_224,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(3)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_2_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(1),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_2_Q_226,
      O => InstrBufferInst_Result(2)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_2_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(1),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(2),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_2_Q_226,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(2)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_1_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(0),
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_1_Q_228,
      O => InstrBufferInst_Result(1)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_1_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(0),
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(1),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_1_Q_228,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(1)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_xor_0_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv,
      LI => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_0_rt_723,
      O => InstrBufferInst_Result(0)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_0_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv,
      DI => InstrBufferInst_UARTHandlerInst_ut_bg_counter(0),
      S => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_0_rt_723,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy(0)
    );
  InstrBufferInst_Mcount_remainingInstructions_xor_7_Q : XORCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(6),
      LI => InstrBufferInst_Mcount_remainingInstructions_lut(7),
      O => InstrBufferInst_Result_7_1
    );
  InstrBufferInst_Mcount_remainingInstructions_xor_6_Q : XORCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(5),
      LI => InstrBufferInst_Mcount_remainingInstructions_lut(6),
      O => InstrBufferInst_Result_6_1
    );
  InstrBufferInst_Mcount_remainingInstructions_cy_6_Q : MUXCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(5),
      DI => N0,
      S => InstrBufferInst_Mcount_remainingInstructions_lut(6),
      O => InstrBufferInst_Mcount_remainingInstructions_cy(6)
    );
  InstrBufferInst_Mcount_remainingInstructions_xor_5_Q : XORCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(4),
      LI => InstrBufferInst_Mcount_remainingInstructions_lut(5),
      O => InstrBufferInst_Result_5_1
    );
  InstrBufferInst_Mcount_remainingInstructions_cy_5_Q : MUXCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(4),
      DI => N0,
      S => InstrBufferInst_Mcount_remainingInstructions_lut(5),
      O => InstrBufferInst_Mcount_remainingInstructions_cy(5)
    );
  InstrBufferInst_Mcount_remainingInstructions_xor_4_Q : XORCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(3),
      LI => InstrBufferInst_Mcount_remainingInstructions_lut(4),
      O => InstrBufferInst_Result_4_1
    );
  InstrBufferInst_Mcount_remainingInstructions_cy_4_Q : MUXCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(3),
      DI => N0,
      S => InstrBufferInst_Mcount_remainingInstructions_lut(4),
      O => InstrBufferInst_Mcount_remainingInstructions_cy(4)
    );
  InstrBufferInst_Mcount_remainingInstructions_xor_3_Q : XORCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(2),
      LI => InstrBufferInst_Mcount_remainingInstructions_lut(3),
      O => InstrBufferInst_Result_3_1
    );
  InstrBufferInst_Mcount_remainingInstructions_cy_3_Q : MUXCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(2),
      DI => N0,
      S => InstrBufferInst_Mcount_remainingInstructions_lut(3),
      O => InstrBufferInst_Mcount_remainingInstructions_cy(3)
    );
  InstrBufferInst_Mcount_remainingInstructions_xor_2_Q : XORCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(1),
      LI => InstrBufferInst_Mcount_remainingInstructions_lut(2),
      O => InstrBufferInst_Result_2_1
    );
  InstrBufferInst_Mcount_remainingInstructions_cy_2_Q : MUXCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(1),
      DI => N0,
      S => InstrBufferInst_Mcount_remainingInstructions_lut(2),
      O => InstrBufferInst_Mcount_remainingInstructions_cy(2)
    );
  InstrBufferInst_Mcount_remainingInstructions_xor_1_Q : XORCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(0),
      LI => InstrBufferInst_Mcount_remainingInstructions_lut(1),
      O => InstrBufferInst_Result_1_1
    );
  InstrBufferInst_Mcount_remainingInstructions_cy_1_Q : MUXCY
    port map (
      CI => InstrBufferInst_Mcount_remainingInstructions_cy(0),
      DI => N0,
      S => InstrBufferInst_Mcount_remainingInstructions_lut(1),
      O => InstrBufferInst_Mcount_remainingInstructions_cy(1)
    );
  InstrBufferInst_Mcount_remainingInstructions_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => InstrBufferInst_Mcount_remainingInstructions_cy_0_rt_724,
      O => InstrBufferInst_Result_0_1
    );
  InstrBufferInst_Mcount_remainingInstructions_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_Mcount_remainingInstructions_cy_0_rt_724,
      O => InstrBufferInst_Mcount_remainingInstructions_cy(0)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_15 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(15),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(15)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_14 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(14),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(14)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_13 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(13),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(13)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_12 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(12),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(12)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_11 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(11),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(11)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_10 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(10),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(10)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_9 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(9),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(9)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_8 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(8),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(8)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_7 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(7),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(7)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_6 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(6),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(6)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_5 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(5),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(5)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_4 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(4),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(4)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_3 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(3),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(3)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_2 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(2),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(2)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_1 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(1),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(1)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_counter_0 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_Result(0),
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_counter(0)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_ce16 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv,
      Q => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293
    );
  InstrBufferInst_currentReadAddr_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_n0084_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_7_Q,
      Q => InstrBufferInst_currentReadAddr(7)
    );
  InstrBufferInst_currentReadAddr_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_n0084_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_6_Q,
      Q => InstrBufferInst_currentReadAddr(6)
    );
  InstrBufferInst_currentReadAddr_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_n0084_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_5_Q,
      Q => InstrBufferInst_currentReadAddr(5)
    );
  InstrBufferInst_currentReadAddr_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_n0084_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_4_Q,
      Q => InstrBufferInst_currentReadAddr(4)
    );
  InstrBufferInst_currentReadAddr_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_n0084_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_3_Q,
      Q => InstrBufferInst_currentReadAddr(3)
    );
  InstrBufferInst_currentReadAddr_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_n0084_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_2_Q,
      Q => InstrBufferInst_currentReadAddr(2)
    );
  InstrBufferInst_currentReadAddr_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_n0084_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_1_Q,
      Q => InstrBufferInst_currentReadAddr(1)
    );
  InstrBufferInst_RPNCResetSignal : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_regWriteEnable_GND_19_o_AND_127_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_intWrData(0),
      Q => InstrBufferInst_RPNCResetSignal_21
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_15_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_14_Q_380,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_15_rt_739,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_15_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_14_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_13_Q_381,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_14_rt_725,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_14_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_14_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_13_Q_381,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_14_rt_725,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_14_Q_380
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_13_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_12_Q_382,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_13_rt_726,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_13_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_13_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_12_Q_382,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_13_rt_726,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_13_Q_381
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_12_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_11_Q_383,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_12_rt_727,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_12_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_12_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_11_Q_383,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_12_rt_727,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_12_Q_382
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_11_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_10_Q_384,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_11_rt_728,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_11_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_11_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_10_Q_384,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_11_rt_728,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_11_Q_383
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_10_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_9_Q_385,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_10_rt_729,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_10_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_10_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_9_Q_385,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_10_rt_729,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_10_Q_384
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_9_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_8_Q_386,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_9_rt_730,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_9_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_9_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_8_Q_386,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_9_rt_730,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_9_Q_385
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_8_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_7_Q_387,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_8_rt_731,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_8_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_8_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_7_Q_387,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_8_rt_731,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_8_Q_386
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_7_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_6_Q_388,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_7_rt_732,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_7_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_7_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_6_Q_388,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_7_rt_732,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_7_Q_387
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_6_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_5_Q_389,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_6_rt_733,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_6_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_6_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_5_Q_389,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_6_rt_733,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_6_Q_388
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_5_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_4_Q_390,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_5_rt_734,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_5_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_5_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_4_Q_390,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_5_rt_734,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_5_Q_389
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_4_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_3_Q_391,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_4_rt_735,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_4_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_4_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_3_Q_391,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_4_rt_735,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_4_Q_390
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_3_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_2_Q_392,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_3_rt_736,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_3_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_3_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_2_Q_392,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_3_rt_736,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_3_Q_391
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_2_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_1_Q_393,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_2_rt_737,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_2_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_2_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_1_Q_393,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_2_rt_737,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_2_Q_392
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_1_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_0_Q_394,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_1_rt_738,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_1_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_1_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_0_Q_394,
      DI => leds_0_OBUF_24,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_1_rt_738,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_1_Q_393
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_0_Q : XORCY
    port map (
      CI => leds_0_OBUF_24,
      LI => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_lut_0_Q,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_0_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_0_Q : MUXCY
    port map (
      CI => leds_0_OBUF_24,
      DI => N0,
      S => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_lut_0_Q,
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_0_Q_394
    );
  InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_In,
      Q => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526
    );
  InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2_In,
      Q => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2_525
    );
  InstrBufferInst_UARTHandlerInst_up_binByteCount_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0372_inv_419,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount7,
      Q => InstrBufferInst_UARTHandlerInst_up_binByteCount(7)
    );
  InstrBufferInst_UARTHandlerInst_up_binByteCount_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0372_inv_419,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount6,
      Q => InstrBufferInst_UARTHandlerInst_up_binByteCount(6)
    );
  InstrBufferInst_UARTHandlerInst_up_binByteCount_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0372_inv_419,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount5,
      Q => InstrBufferInst_UARTHandlerInst_up_binByteCount(5)
    );
  InstrBufferInst_UARTHandlerInst_up_binByteCount_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0372_inv_419,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount4,
      Q => InstrBufferInst_UARTHandlerInst_up_binByteCount(4)
    );
  InstrBufferInst_UARTHandlerInst_up_binByteCount_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0372_inv_419,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount3,
      Q => InstrBufferInst_UARTHandlerInst_up_binByteCount(3)
    );
  InstrBufferInst_UARTHandlerInst_up_binByteCount_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0372_inv_419,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount2,
      Q => InstrBufferInst_UARTHandlerInst_up_binByteCount(2)
    );
  InstrBufferInst_UARTHandlerInst_up_binByteCount_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0372_inv_419,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount1,
      Q => InstrBufferInst_UARTHandlerInst_up_binByteCount(1)
    );
  InstrBufferInst_UARTHandlerInst_up_binByteCount_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0372_inv_419,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount,
      Q => InstrBufferInst_UARTHandlerInst_up_binByteCount(0)
    );
  InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_In_422,
      Q => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In_427,
      Q => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In,
      Q => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In,
      Q => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In,
      Q => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_xor_7_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(6),
      LI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(7),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount7
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_xor_6_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(5),
      LI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(6),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount6
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy_6_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(5),
      DI => N0,
      S => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(6),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(6)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_xor_5_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(4),
      LI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(5),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount5
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy_5_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(4),
      DI => N0,
      S => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(5),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(5)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_xor_4_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(3),
      LI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(4),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount4
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy_4_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(3),
      DI => N0,
      S => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(4),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(4)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_xor_3_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(2),
      LI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(3),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount3
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy_3_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(2),
      DI => N0,
      S => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(3),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(3)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_xor_2_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(1),
      LI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(2),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount2
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy_2_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(1),
      DI => N0,
      S => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(2),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(2)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_xor_1_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(0),
      LI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(1),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount1
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy_1_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(0),
      DI => N0,
      S => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(1),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(1)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_xor_0_Q : XORCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      LI => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(0),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy_0_Q : MUXCY
    port map (
      CI => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      DI => N0,
      S => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(0),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_cy(0)
    );
  InstrBufferInst_UARTHandlerInst_up_txData_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_cepot,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_txData_7_dpot_791,
      Q => InstrBufferInst_UARTHandlerInst_up_txData(7)
    );
  InstrBufferInst_UARTHandlerInst_up_txData_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_cepot,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_txData_6_dpot_790,
      Q => InstrBufferInst_UARTHandlerInst_up_txData(6)
    );
  InstrBufferInst_UARTHandlerInst_up_txData_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_cepot,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_txData_5_dpot_789,
      Q => InstrBufferInst_UARTHandlerInst_up_txData(5)
    );
  InstrBufferInst_UARTHandlerInst_up_txData_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_cepot,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_txData_4_dpot_788,
      Q => InstrBufferInst_UARTHandlerInst_up_txData(4)
    );
  InstrBufferInst_UARTHandlerInst_up_txData_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_cepot,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_txData_3_dpot_787,
      Q => InstrBufferInst_UARTHandlerInst_up_txData(3)
    );
  InstrBufferInst_UARTHandlerInst_up_txData_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_cepot,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_txData_2_dpot_786,
      Q => InstrBufferInst_UARTHandlerInst_up_txData(2)
    );
  InstrBufferInst_UARTHandlerInst_up_txData_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_cepot,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_txData_1_dpot_785,
      Q => InstrBufferInst_UARTHandlerInst_up_txData(1)
    );
  InstrBufferInst_UARTHandlerInst_up_txData_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_cepot,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_txData_0_dpot_784,
      Q => InstrBufferInst_UARTHandlerInst_up_txData(0)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_15 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_15_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(15)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_14 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_14_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_13 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_13_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(13)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_12 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_12_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(12)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_11 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_11_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(11)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_10 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_10_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(10)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_9 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_9_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(9)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_8 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_8_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(8)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_7_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(7)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_6_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(6)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_5_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(5)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_4_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(4)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_3_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(3)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_2_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(2)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_1_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntAddress_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0411_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_0_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0)
    );
  InstrBufferInst_UARTHandlerInst_up_newTxData : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0366_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_txSm_2_newTxData_Mux_107_o,
      Q => InstrBufferInst_UARTHandlerInst_up_newTxData_302
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_15 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_15_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(15)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_14 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_14_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(14)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_13 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_13_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(13)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_12 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_12_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(12)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_11 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_11_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(11)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_10 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_10_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(10)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_9 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_9_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(9)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_8 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_8_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(8)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_7 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_7_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(7)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_6 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_6_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(6)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_5 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_5_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(5)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_4 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_4_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(4)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_3 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_3_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(3)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_2 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_2_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(2)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_1 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_1_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(1)
    );
  InstrBufferInst_UARTHandlerInst_up_addrParam_0 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_0_Q,
      Q => InstrBufferInst_UARTHandlerInst_up_addrParam(0)
    );
  InstrBufferInst_UARTHandlerInst_up_readDoneS : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_readDone_569,
      Q => InstrBufferInst_UARTHandlerInst_up_readDoneS_568
    );
  InstrBufferInst_UARTHandlerInst_up_readDataS_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_readDone_569,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_regReadData(7),
      Q => InstrBufferInst_UARTHandlerInst_up_readDataS(7)
    );
  InstrBufferInst_UARTHandlerInst_up_readDataS_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_readDone_569,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_regReadData(6),
      Q => InstrBufferInst_UARTHandlerInst_up_readDataS(6)
    );
  InstrBufferInst_UARTHandlerInst_up_readDataS_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_readDone_569,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_regReadData(5),
      Q => InstrBufferInst_UARTHandlerInst_up_readDataS(5)
    );
  InstrBufferInst_UARTHandlerInst_up_readDataS_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_readDone_569,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_regReadData(4),
      Q => InstrBufferInst_UARTHandlerInst_up_readDataS(4)
    );
  InstrBufferInst_UARTHandlerInst_up_readDataS_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_readDone_569,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_regReadData(3),
      Q => InstrBufferInst_UARTHandlerInst_up_readDataS(3)
    );
  InstrBufferInst_UARTHandlerInst_up_readDataS_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_readDone_569,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_regReadData(2),
      Q => InstrBufferInst_UARTHandlerInst_up_readDataS(2)
    );
  InstrBufferInst_UARTHandlerInst_up_readDataS_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_readDone_569,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_regReadData(1),
      Q => InstrBufferInst_UARTHandlerInst_up_readDataS(1)
    );
  InstrBufferInst_UARTHandlerInst_up_readDataS_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_readDone_569,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_regReadData(0),
      Q => InstrBufferInst_UARTHandlerInst_up_readDataS(0)
    );
  InstrBufferInst_UARTHandlerInst_up_readDone : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntRead_350,
      Q => InstrBufferInst_UARTHandlerInst_up_readDone_569
    );
  InstrBufferInst_UARTHandlerInst_up_iIntWrite : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0351_inv1_cepot_740,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntWrite_dpot_741,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntWrite_351
    );
  InstrBufferInst_UARTHandlerInst_up_iReadReq : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0335_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iReadReq_PWR_36_o_MUX_144_o,
      Q => InstrBufferInst_UARTHandlerInst_up_iReadReq_544
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_dataParam_7_dpot_842,
      Q => InstrBufferInst_UARTHandlerInst_up_dataParam(7)
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_dataParam_6_dpot_841,
      Q => InstrBufferInst_UARTHandlerInst_up_dataParam(6)
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_dataParam_5_dpot_840,
      Q => InstrBufferInst_UARTHandlerInst_up_dataParam(5)
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_dataParam_4_dpot_839,
      Q => InstrBufferInst_UARTHandlerInst_up_dataParam(4)
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_dataParam_3_dpot_838,
      Q => InstrBufferInst_UARTHandlerInst_up_dataParam(3)
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_dataParam_2_dpot_837,
      Q => InstrBufferInst_UARTHandlerInst_up_dataParam(2)
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_dataParam_1_dpot_836,
      Q => InstrBufferInst_UARTHandlerInst_up_dataParam(1)
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_dataParam_0_dpot_835,
      Q => InstrBufferInst_UARTHandlerInst_up_dataParam(0)
    );
  InstrBufferInst_UARTHandlerInst_up_iWriteReq : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0347_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o,
      Q => InstrBufferInst_UARTHandlerInst_up_iWriteReq_543
    );
  InstrBufferInst_UARTHandlerInst_up_addrAutoInc : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_92_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_rxData_1_INV_112_o,
      Q => InstrBufferInst_UARTHandlerInst_up_addrAutoInc_545
    );
  InstrBufferInst_UARTHandlerInst_up_sendStatFlag : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_92_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      Q => InstrBufferInst_UARTHandlerInst_up_sendStatFlag_546
    );
  InstrBufferInst_UARTHandlerInst_up_binWriteOp : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0326_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_binWriteOp_PWR_36_o_MUX_125_o,
      Q => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547
    );
  InstrBufferInst_UARTHandlerInst_up_binReadOp : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_n0323_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_binReadOp_PWR_36_o_MUX_123_o,
      Q => InstrBufferInst_UARTHandlerInst_up_binReadOp_548
    );
  InstrBufferInst_UARTHandlerInst_up_writeOp : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_35_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_25_o,
      Q => InstrBufferInst_UARTHandlerInst_up_writeOp_549
    );
  InstrBufferInst_UARTHandlerInst_up_readOp : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_35_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_24_o,
      Q => InstrBufferInst_UARTHandlerInst_up_readOp_550
    );
  InstrBufferInst_UARTHandlerInst_up_sTxBusy : FDP
    port map (
      C => clk_BUFGP_0,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      PRE => reset_IBUF_1,
      Q => InstrBufferInst_UARTHandlerInst_up_sTxBusy_570
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_count16_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0054_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count163,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_count16(3)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_count16_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0054_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count162,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_count16(2)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_count16_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0054_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count161,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_count16(1)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_count16_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0054_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count16,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_count16(0)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_bitCount_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount3,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(3)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_bitCount_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount2,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(2)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_bitCount_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount1,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(1)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_bitCount_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(0)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_serOut : FDP
    port map (
      C => clk_BUFGP_0,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_PWR_29_o_dataBuf_0_MUX_102_o,
      PRE => reset_IBUF_1,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_serOut_20
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_8_Q,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(8)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_7_Q,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(7)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_6_Q,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(6)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_5_Q,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(5)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_4_Q,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(4)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_3_Q,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(3)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_2_Q,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(2)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_1_Q,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(1)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_0_Q,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(0)
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ut_n0050_inv_590,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_PWR_29_o_MUX_92_o,
      Q => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_bitCount_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_n0061_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount3,
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(3)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_bitCount_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_n0061_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount2,
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(2)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_bitCount_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_n0061_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount1,
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(1)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_bitCount_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_n0061_inv,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount,
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(0)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_count16_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count163,
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_count16(3)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_count16_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count162,
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_count16(2)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_count16_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count161,
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_count16(1)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_count16_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count16,
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_count16(0)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxData_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(7),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxData_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(6),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxData_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(5),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxData_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(4),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxData_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(3),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxData_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(2),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxData_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(1),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxData_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(0),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_25_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_inSync(1),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(7)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_25_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(7),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(6)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_25_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(6),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(5)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_25_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(5),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(4)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_25_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(4),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(3)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_25_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(3),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(2)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_25_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(2),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(1)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_25_o,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(1),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(0)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_n0057_inv_628,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_PWR_30_o_MUX_104_o,
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_newRxData : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631,
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_inSync_1 : FDP
    port map (
      C => clk_BUFGP_0,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_inSync(0),
      PRE => reset_IBUF_1,
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_inSync(1)
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_inSync_0 : FDP
    port map (
      C => clk_BUFGP_0,
      D => UART_Rx_IBUF_2,
      PRE => reset_IBUF_1,
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_inSync(0)
    );
  RPNC_Mmux_stack_in11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd1_109,
      I1 => RPNC_alu_result(0),
      I2 => instrDataSignal(0),
      O => RPNC_stack_in(0)
    );
  RPNC_Mmux_stack_in21 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd1_109,
      I1 => RPNC_alu_result(1),
      I2 => instrDataSignal(1),
      O => RPNC_stack_in(1)
    );
  RPNC_Mmux_stack_in31 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd1_109,
      I1 => RPNC_alu_result(2),
      I2 => instrDataSignal(2),
      O => RPNC_stack_in(2)
    );
  RPNC_Mmux_stack_in41 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd1_109,
      I1 => RPNC_alu_result(3),
      I2 => instrDataSignal(3),
      O => RPNC_stack_in(3)
    );
  RPNC_Mmux_stack_in51 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd1_109,
      I1 => RPNC_alu_result(4),
      I2 => instrDataSignal(4),
      O => RPNC_stack_in(4)
    );
  RPNC_Mmux_stack_in61 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd1_109,
      I1 => RPNC_alu_result(5),
      I2 => instrDataSignal(5),
      O => RPNC_stack_in(5)
    );
  RPNC_Mmux_stack_in71 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd1_109,
      I1 => RPNC_alu_result(6),
      I2 => instrDataSignal(6),
      O => RPNC_stack_in(6)
    );
  RPNC_Mmux_stack_in81 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd1_109,
      I1 => RPNC_alu_result(7),
      I2 => instrDataSignal(7),
      O => RPNC_stack_in(7)
    );
  RPNC_control_state_FSM_FFd7_In1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => leds_3_OBUF_22,
      I1 => RPNC_control_state_FSM_FFd8_120,
      O => RPNC_control_state_FSM_FFd7_In
    );
  RPNC_control_state_FSM_FFd8_In1 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd4_118,
      I1 => leds_3_OBUF_22,
      I2 => RPNC_control_state_FSM_FFd8_120,
      I3 => RPNC_control_state_FSM_FFd1_109,
      O => RPNC_control_state_FSM_FFd8_In
    );
  RPNC_stack_store_Madd_n0011_Madd_xor_4_11 : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(4),
      I1 => RPNC_stack_stack_ptr(0),
      I2 => RPNC_stack_stack_ptr(1),
      I3 => RPNC_stack_stack_ptr(2),
      I4 => RPNC_stack_stack_ptr(3),
      O => RPNC_stack_store_n0011(4)
    );
  RPNC_stack_store_Madd_n0011_Madd_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(3),
      I1 => RPNC_stack_stack_ptr(0),
      I2 => RPNC_stack_stack_ptr(1),
      I3 => RPNC_stack_stack_ptr(2),
      O => RPNC_stack_store_n0011(3)
    );
  RPNC_stack_store_Madd_n0011_Madd_xor_5_111 : LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(3),
      I1 => RPNC_stack_stack_ptr(2),
      I2 => RPNC_stack_stack_ptr(0),
      I3 => RPNC_stack_stack_ptr(1),
      I4 => RPNC_stack_stack_ptr(4),
      O => RPNC_stack_store_N42
    );
  RPNC_stack_store_Msub_stack_ptr_31_GND_18_o_sub_3_OUT_7_0_xor_7_11 : LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(7),
      I1 => RPNC_stack_stack_ptr(4),
      I2 => RPNC_stack_stack_ptr(5),
      I3 => RPNC_stack_stack_ptr(6),
      I4 => RPNC_stack_store_N7,
      O => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_7_Q
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT1111 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(6),
      I1 => RPNC_stack_stack_ptr(4),
      I2 => RPNC_stack_stack_ptr(5),
      I3 => RPNC_stack_store_N7,
      O => RPNC_stack_store_N171
    );
  RPNC_stack_store_Msub_stack_ptr_31_GND_18_o_sub_3_OUT_7_0_xor_3_12 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(3),
      I1 => RPNC_stack_stack_ptr(2),
      I2 => RPNC_stack_stack_ptr(1),
      I3 => RPNC_stack_stack_ptr(0),
      O => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_3_Q
    );
  RPNC_stack_store_Msub_stack_ptr_31_GND_18_o_sub_3_OUT_7_0_xor_2_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(2),
      I1 => RPNC_stack_stack_ptr(0),
      I2 => RPNC_stack_stack_ptr(1),
      O => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_2_Q
    );
  RPNC_stack_store_Madd_n0011_Madd_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(2),
      I1 => RPNC_stack_stack_ptr(0),
      I2 => RPNC_stack_stack_ptr(1),
      O => RPNC_stack_store_n0011(2)
    );
  RPNC_stack_store_Msub_stack_ptr_31_GND_18_o_sub_3_OUT_7_0_xor_3_111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(3),
      I1 => RPNC_stack_stack_ptr(2),
      I2 => RPNC_stack_stack_ptr(1),
      I3 => RPNC_stack_stack_ptr(0),
      O => RPNC_stack_store_N7
    );
  RPNC_stack_store_inst_LPM_DECODE011 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(2),
      I1 => RPNC_stack_stack_ptr(3),
      I2 => RPNC_stack_stack_ptr(4),
      I3 => RPNC_stack_stack_ptr(5),
      I4 => RPNC_stack_stack_ptr(0),
      I5 => RPNC_stack_stack_ptr(1),
      O => RPNC_stack_store_N01
    );
  RPNC_stack_store_Msub_stack_ptr_31_GND_18_o_sub_3_OUT_7_0_xor_1_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(1),
      I1 => RPNC_stack_stack_ptr(0),
      O => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_1_Q
    );
  InstrBufferInst_regWriteEnable_GND_19_o_AND_127_o1 : LUT5
    generic map(
      INIT => X"20000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntWrite_351,
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I3 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I4 => InstrBufferInst_N19,
      O => InstrBufferInst_regWriteEnable_GND_19_o_AND_127_o
    );
  InstrBufferInst_Mmux_currentReadAddr_7_regWriteData_7_mux_29_OUT61 : LUT6
    generic map(
      INIT => X"EBEEEEEE41444444"
    )
    port map (
      I0 => InstrBufferInst_regWriteEnable_GND_19_o_AND_129_o,
      I1 => InstrBufferInst_currentReadAddr(5),
      I2 => InstrBufferInst_N18,
      I3 => InstrBufferInst_currentReadAddr(3),
      I4 => InstrBufferInst_currentReadAddr(4),
      I5 => InstrBufferInst_UARTHandlerInst_up_intWrData(5),
      O => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_5_Q
    );
  InstrBufferInst_Mmux_currentReadAddr_7_regWriteData_7_mux_29_OUT81 : LUT6
    generic map(
      INIT => X"FBEEEAEE51444044"
    )
    port map (
      I0 => InstrBufferInst_regWriteEnable_GND_19_o_AND_129_o,
      I1 => InstrBufferInst_currentReadAddr(7),
      I2 => InstrBufferInst_N68,
      I3 => InstrBufferInst_currentReadAddr(6),
      I4 => InstrBufferInst_N57,
      I5 => InstrBufferInst_UARTHandlerInst_up_intWrData(7),
      O => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_7_Q
    );
  InstrBufferInst_Mmux_dataMemReadAddr31 : LUT6
    generic map(
      INIT => X"BEEEEEEE14444444"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntRead_350,
      I1 => InstrBufferInst_currentReadAddr(2),
      I2 => InstrBufferInst_currentReadAddr(0),
      I3 => InstrBufferInst_currentReadAddr(1),
      I4 => RPNC_control_state_FSM_FFd7_11,
      I5 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(3),
      O => InstrBufferInst_dataMemReadAddr(2)
    );
  InstrBufferInst_Mmux_currentReadAddr_7_regWriteData_7_mux_29_OUT51 : LUT5
    generic map(
      INIT => X"EBEE4144"
    )
    port map (
      I0 => InstrBufferInst_regWriteEnable_GND_19_o_AND_129_o,
      I1 => InstrBufferInst_currentReadAddr(4),
      I2 => InstrBufferInst_N18,
      I3 => InstrBufferInst_currentReadAddr(3),
      I4 => InstrBufferInst_UARTHandlerInst_up_intWrData(4),
      O => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_4_Q
    );
  InstrBufferInst_Mmux_currentReadAddr_7_regWriteData_7_mux_29_OUT31 : LUT5
    generic map(
      INIT => X"BEEE1444"
    )
    port map (
      I0 => InstrBufferInst_regWriteEnable_GND_19_o_AND_129_o,
      I1 => InstrBufferInst_currentReadAddr(2),
      I2 => InstrBufferInst_currentReadAddr(0),
      I3 => InstrBufferInst_currentReadAddr(1),
      I4 => InstrBufferInst_UARTHandlerInst_up_intWrData(2),
      O => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_2_Q
    );
  InstrBufferInst_Mmux_dataMemReadAddr51 : LUT6
    generic map(
      INIT => X"EBEEEEEE41444444"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntRead_350,
      I1 => InstrBufferInst_currentReadAddr(4),
      I2 => InstrBufferInst_N18,
      I3 => InstrBufferInst_currentReadAddr(3),
      I4 => RPNC_control_state_FSM_FFd7_11,
      I5 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(5),
      O => InstrBufferInst_dataMemReadAddr(4)
    );
  InstrBufferInst_Mmux_currentReadAddr_7_regWriteData_7_mux_29_OUT71 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => InstrBufferInst_regWriteEnable_GND_19_o_AND_129_o,
      I1 => InstrBufferInst_currentReadAddr(6),
      I2 => InstrBufferInst_N68,
      I3 => InstrBufferInst_N57,
      I4 => InstrBufferInst_UARTHandlerInst_up_intWrData(6),
      O => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_6_Q
    );
  InstrBufferInst_Mmux_currentReadAddr_7_regWriteData_7_mux_29_OUT21 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => InstrBufferInst_regWriteEnable_GND_19_o_AND_129_o,
      I1 => InstrBufferInst_currentReadAddr(0),
      I2 => InstrBufferInst_currentReadAddr(1),
      I3 => InstrBufferInst_UARTHandlerInst_up_intWrData(1),
      O => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_1_Q
    );
  InstrBufferInst_Mmux_dataMemReadAddr11 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntRead_350,
      I1 => InstrBufferInst_currentReadAddr(0),
      I2 => RPNC_control_state_FSM_FFd7_11,
      I3 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      O => InstrBufferInst_dataMemReadAddr(0)
    );
  InstrBufferInst_Mmux_dataMemReadAddr41 : LUT5
    generic map(
      INIT => X"EBEE4144"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntRead_350,
      I1 => InstrBufferInst_currentReadAddr(3),
      I2 => InstrBufferInst_N18,
      I3 => RPNC_control_state_FSM_FFd7_11,
      I4 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(4),
      O => InstrBufferInst_dataMemReadAddr(3)
    );
  InstrBufferInst_Mmux_dataMemReadAddr21 : LUT5
    generic map(
      INIT => X"BEEE1444"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntRead_350,
      I1 => InstrBufferInst_currentReadAddr(1),
      I2 => InstrBufferInst_currentReadAddr(0),
      I3 => RPNC_control_state_FSM_FFd7_11,
      I4 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(2),
      O => InstrBufferInst_dataMemReadAddr(1)
    );
  InstrBufferInst_Mmux_currentReadAddr_7_regWriteData_7_mux_29_OUT411 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => InstrBufferInst_currentReadAddr(2),
      I1 => InstrBufferInst_currentReadAddr(0),
      I2 => InstrBufferInst_currentReadAddr(1),
      O => InstrBufferInst_N18
    );
  InstrBufferInst_Mmux_dataMemReadAddr91 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntRead_350,
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(9),
      O => InstrBufferInst_dataMemReadAddr(8)
    );
  InstrBufferInst_dataMemWriteEn1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(15),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntWrite_351,
      O => InstrBufferInst_dataMemWriteEn
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txNibble_0_11 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_readDataS(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I2 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I3 => InstrBufferInst_UARTHandlerInst_up_readDataS(0),
      O => InstrBufferInst_UARTHandlerInst_up_txNibble(0)
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txNibble_1_11 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_readDataS(5),
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I2 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I3 => InstrBufferInst_UARTHandlerInst_up_readDataS(1),
      O => InstrBufferInst_UARTHandlerInst_up_txNibble(1)
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txNibble_2_11 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_readDataS(6),
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I2 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I3 => InstrBufferInst_UARTHandlerInst_up_readDataS(2),
      O => InstrBufferInst_UARTHandlerInst_up_txNibble(2)
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txNibble_3_11 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_readDataS(7),
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I2 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I3 => InstrBufferInst_UARTHandlerInst_up_readDataS(3),
      O => InstrBufferInst_UARTHandlerInst_up_txNibble(3)
    );
  InstrBufferInst_UARTHandlerInst_up_n0323_inv1 : LUT5
    generic map(
      INIT => X"FFFF0800"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_sTxBusy_570,
      I1 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I3 => InstrBufferInst_UARTHandlerInst_up_binLastByte,
      I4 => InstrBufferInst_UARTHandlerInst_up_binReadOp_PWR_36_o_MUX_123_o,
      O => InstrBufferInst_UARTHandlerInst_up_n0323_inv
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_dataParam_7_GND_53_o_mux_60_OUT51 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(0),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_dataParam_7_GND_53_o_mux_60_OUT_4_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_dataParam_7_GND_53_o_mux_60_OUT61 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(1),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_dataParam_7_GND_53_o_mux_60_OUT_5_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_dataParam_7_GND_53_o_mux_60_OUT71 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(2),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_dataParam_7_GND_53_o_mux_60_OUT_6_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_dataParam_7_GND_53_o_mux_60_OUT81 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(3),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_dataParam_7_GND_53_o_mux_60_OUT_7_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iReadReq_PWR_36_o_MUX_144_o11 : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_readOp_550,
      I1 => InstrBufferInst_UARTHandlerInst_up_iReadReq_PWR_36_o_MUX_142_o,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_72_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iReadReq_PWR_36_o_MUX_144_o
    );
  InstrBufferInst_UARTHandlerInst_up_n0335_inv1 : LUT5
    generic map(
      INIT => X"FFFEFFFA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iReadReq_544,
      I1 => InstrBufferInst_UARTHandlerInst_up_readOp_550,
      I2 => InstrBufferInst_UARTHandlerInst_up_iReadReq_PWR_36_o_MUX_142_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_72_o,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o111,
      O => InstrBufferInst_UARTHandlerInst_up_n0335_inv
    );
  InstrBufferInst_UARTHandlerInst_up_n0326_inv1 : LUT5
    generic map(
      INIT => X"FFFF8000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I3 => InstrBufferInst_UARTHandlerInst_up_binLastByte,
      I4 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_PWR_36_o_MUX_125_o,
      O => InstrBufferInst_UARTHandlerInst_up_n0326_inv
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_72_o1 : LUT5
    generic map(
      INIT => X"00800000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_72_o
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o1 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_mainSm_3_PWR_36_o_equal_65_o1 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_3_PWR_36_o_equal_65_o
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_19_o1 : LUT6
    generic map(
      INIT => X"0010000200000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I5 => InstrBufferInst_UARTHandlerInst_up_N63,
      O => InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_19_o
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_7_GND_53_o_equal_1_o_7_1 : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I5 => InstrBufferInst_UARTHandlerInst_up_N63,
      O => InstrBufferInst_UARTHandlerInst_up_rxData_7_GND_53_o_equal_1_o
    );
  InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"BA8A8A8A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2_525,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I2 => InstrBufferInst_UARTHandlerInst_up_sTxBusy_570,
      I3 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I4 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      O => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2_In
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT81 : LUT5
    generic map(
      INIT => X"04000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I1 => InstrBufferInst_UARTHandlerInst_up_readDataS(7),
      I2 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I3 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      I4 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      O => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_7_Q
    );
  InstrBufferInst_UARTHandlerInst_up_dataNibble_4_21 : LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      O => InstrBufferInst_UARTHandlerInst_up_N52
    );
  InstrBufferInst_UARTHandlerInst_up_n0411_inv1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFA888"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrAutoInc_545,
      I1 => InstrBufferInst_UARTHandlerInst_up_iReadReq_PWR_36_o_MUX_142_o,
      I2 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547,
      I3 => InstrBufferInst_UARTHandlerInst_up_iIntWrite_351,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o11_833,
      O => InstrBufferInst_UARTHandlerInst_up_n0411_inv
    );
  InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_In1 : LUT5
    generic map(
      INIT => X"BABA8AAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I2 => InstrBufferInst_UARTHandlerInst_up_sTxBusy_570,
      I3 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2_525,
      I4 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      O => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_In
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_22_o1 : LUT6
    generic map(
      INIT => X"0200100000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I5 => InstrBufferInst_UARTHandlerInst_up_N63,
      O => InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_22_o
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_22_o21 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      O => InstrBufferInst_UARTHandlerInst_up_N63
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_25_o1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I2 => InstrBufferInst_UARTHandlerInst_up_N57,
      O => InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_25_o
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_24_o2 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I2 => InstrBufferInst_UARTHandlerInst_up_N57,
      O => InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_24_o
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_24_o11 : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      O => InstrBufferInst_UARTHandlerInst_up_N57
    );
  InstrBufferInst_UARTHandlerInst_up_dataNibble_1_1 : LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      O => InstrBufferInst_UARTHandlerInst_up_dataNibble(3)
    );
  InstrBufferInst_UARTHandlerInst_up_n0366_inv1 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2_525,
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I2 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      O => InstrBufferInst_UARTHandlerInst_up_n0366_inv
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_92_o1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_1_843,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_92_o
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_35_o1 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_35_o
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_n0050_inv11 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(3),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(2),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(0),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(1),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_N4
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv1 : LUT6
    generic map(
      INIT => X"D555555555555555"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(3),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(2),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(0),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(1),
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      O => InstrBufferInst_UARTHandlerInst_ut_ut_n0052_inv
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count16_xor_3_11 : LUT6
    generic map(
      INIT => X"0880808080808080"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(3),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(0),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(1),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(2),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count163
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount_xor_3_11 : LUT5
    generic map(
      INIT => X"28888888"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_N4,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(3),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(0),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(1),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(2),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount3
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount_xor_1_11 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_N4,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(0),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(1),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount1
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count16_xor_1_11 : LUT4
    generic map(
      INIT => X"0880"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(0),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(1),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count161
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount_xor_2_11 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_N4,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(2),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(0),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(1),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount2
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count16_xor_2_11 : LUT5
    generic map(
      INIT => X"08808080"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(2),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(0),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(1),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count162
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount_xor_0_11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(0),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_N4,
      O => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_bitCount
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count16_xor_0_11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(0),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_Mcount_count16
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_n0054_inv1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      O => InstrBufferInst_UARTHandlerInst_ut_ut_n0054_inv
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mmux_PWR_29_o_dataBuf_0_MUX_102_o11 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(0),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_PWR_29_o_dataBuf_0_MUX_102_o
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(1),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_0_Q
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT21 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(2),
      I2 => InstrBufferInst_UARTHandlerInst_up_txData(0),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_1_Q
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT31 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(3),
      I2 => InstrBufferInst_UARTHandlerInst_up_txData(1),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_2_Q
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT41 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(4),
      I2 => InstrBufferInst_UARTHandlerInst_up_txData(2),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_3_Q
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT51 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(5),
      I2 => InstrBufferInst_UARTHandlerInst_up_txData(3),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_4_Q
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT61 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(6),
      I2 => InstrBufferInst_UARTHandlerInst_up_txData(4),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_5_Q
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT71 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(7),
      I2 => InstrBufferInst_UARTHandlerInst_up_txData(5),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_6_Q
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT81 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf(8),
      I2 => InstrBufferInst_UARTHandlerInst_up_txData(6),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_7_Q
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_Mmux_dataBuf_8_txData_7_mux_10_OUT91 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_up_txData(7),
      O => InstrBufferInst_UARTHandlerInst_ut_ut_dataBuf_8_txData_7_mux_10_OUT_8_Q
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_PWR_29_o_MUX_92_o1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_up_newTxData_302,
      O => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_PWR_29_o_MUX_92_o
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count16_xor_3_11 : LUT6
    generic map(
      INIT => X"7F8000007F807F80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(0),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(1),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(2),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(3),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_inSync(1),
      O => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count163
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count16_xor_2_11 : LUT5
    generic map(
      INIT => X"78007878"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(0),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(1),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(2),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_inSync(1),
      O => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count162
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count16_xor_1_11 : LUT4
    generic map(
      INIT => X"6066"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(0),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(1),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_inSync(1),
      O => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count161
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count16_xor_0_11 : LUT3
    generic map(
      INIT => X"51"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(0),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_inSync(1),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      O => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_count16
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_n0061_inv1 : LUT6
    generic map(
      INIT => X"5D55555555555555"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(0),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(3),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(1),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(2),
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      O => InstrBufferInst_UARTHandlerInst_ut_ur_n0061_inv
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_PWR_30_o_MUX_104_o1 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(1),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      I2 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(0),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(3),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(2),
      O => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_PWR_30_o_MUX_104_o
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_25_o1 : LUT6
    generic map(
      INIT => X"0800000000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(3),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(0),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(1),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(2),
      O => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1Mid_AND_25_o
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount_xor_3_11 : LUT5
    generic map(
      INIT => X"28888888"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(3),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(0),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(1),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(2),
      O => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount3
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount_xor_1_11 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(0),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(1),
      O => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount1
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount_xor_2_11 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(2),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(0),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(1),
      O => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount2
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount_xor_0_11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(0),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      O => InstrBufferInst_UARTHandlerInst_ut_ur_Mcount_bitCount
    );
  RPNC_control_state_FSM_FFd5_In_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => RPNC_control_op_code_3_129,
      I1 => RPNC_control_op_code_2_128,
      I2 => RPNC_control_op_code_1_127,
      I3 => RPNC_control_op_code_0_126,
      O => N2
    );
  RPNC_control_state_FSM_FFd5_In : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd6_119,
      I1 => RPNC_control_op_code_7_133,
      I2 => RPNC_control_op_code_6_132,
      I3 => RPNC_control_op_code_5_131,
      I4 => RPNC_control_op_code_4_130,
      I5 => N2,
      O => RPNC_control_state_FSM_FFd5_In_122
    );
  RPNC_control_state_FSM_FFd4_In : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => RPNC_control_op_code_7_133,
      I1 => RPNC_control_op_code_6_132,
      I2 => RPNC_control_op_code_5_131,
      I3 => RPNC_control_op_code_4_130,
      I4 => N2,
      I5 => RPNC_control_state_FSM_FFd6_119,
      O => RPNC_control_state_FSM_FFd4_In_121
    );
  RPNC_control_GND_7_o_INV_18_o_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => RPNC_control_op_code_1_127,
      I1 => RPNC_control_op_code_0_126,
      I2 => RPNC_control_op_code_2_128,
      O => N6
    );
  RPNC_control_GND_7_o_INV_18_o : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => RPNC_control_op_code_7_133,
      I1 => RPNC_control_op_code_6_132,
      I2 => RPNC_control_op_code_5_131,
      I3 => RPNC_control_op_code_4_130,
      I4 => RPNC_control_op_code_3_129,
      I5 => N6,
      O => RPNC_control_GND_7_o_INV_18_o_125
    );
  RPNC_stack_store_Madd_n0011_Madd_xor_5_1_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(1),
      I1 => RPNC_stack_stack_ptr(4),
      O => N8
    );
  RPNC_stack_store_Madd_n0011_Madd_xor_5_1 : LUT6
    generic map(
      INIT => X"FF00FF8000000080"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(2),
      I1 => RPNC_stack_stack_ptr(3),
      I2 => RPNC_stack_stack_ptr(0),
      I3 => RPNC_stack_stack_ptr(5),
      I4 => N8,
      I5 => RPNC_stack_store_N42,
      O => RPNC_stack_store_n0011(5)
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT2_SW0 : LUT6
    generic map(
      INIT => X"0F0F00FF55553333"
    )
    port map (
      I0 => RPNC_stack_store_N16,
      I1 => RPNC_stack_store_N10,
      I2 => RPNC_stack_store_N28,
      I3 => RPNC_stack_store_N22,
      I4 => RPNC_stack_store_N171,
      I5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_7_Q,
      O => N10
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT3_SW0 : LUT6
    generic map(
      INIT => X"0F0F00FF55553333"
    )
    port map (
      I0 => RPNC_stack_store_N17,
      I1 => RPNC_stack_store_N11,
      I2 => RPNC_stack_store_N29,
      I3 => RPNC_stack_store_N23,
      I4 => RPNC_stack_store_N171,
      I5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_7_Q,
      O => N12
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT4_SW0 : LUT6
    generic map(
      INIT => X"0F0F00FF55553333"
    )
    port map (
      I0 => RPNC_stack_store_N39,
      I1 => RPNC_stack_store_N33,
      I2 => RPNC_stack_store_N51,
      I3 => RPNC_stack_store_N45,
      I4 => RPNC_stack_store_N171,
      I5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_7_Q,
      O => N14
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT5_SW0 : LUT6
    generic map(
      INIT => X"0F0F00FF55553333"
    )
    port map (
      I0 => RPNC_stack_store_N40,
      I1 => RPNC_stack_store_N34,
      I2 => RPNC_stack_store_N52,
      I3 => RPNC_stack_store_N46,
      I4 => RPNC_stack_store_N171,
      I5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_7_Q,
      O => N16
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT6_SW0 : LUT6
    generic map(
      INIT => X"0F0F00FF55553333"
    )
    port map (
      I0 => RPNC_stack_store_N41,
      I1 => RPNC_stack_store_N35,
      I2 => RPNC_stack_store_N53,
      I3 => RPNC_stack_store_N47,
      I4 => RPNC_stack_store_N171,
      I5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_7_Q,
      O => N18
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT7_SW0 : LUT6
    generic map(
      INIT => X"028A139B46CE57DF"
    )
    port map (
      I0 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_7_Q,
      I1 => RPNC_stack_store_N171,
      I2 => RPNC_stack_store_N64,
      I3 => RPNC_stack_store_N68,
      I4 => RPNC_stack_store_N56,
      I5 => RPNC_stack_store_N60,
      O => N20
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT8_SW0 : LUT6
    generic map(
      INIT => X"028A139B46CE57DF"
    )
    port map (
      I0 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_7_Q,
      I1 => RPNC_stack_store_N171,
      I2 => RPNC_stack_store_N65,
      I3 => RPNC_stack_store_N69,
      I4 => RPNC_stack_store_N57,
      I5 => RPNC_stack_store_N61,
      O => N22
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT1_SW0 : LUT6
    generic map(
      INIT => X"0F0F00FF55553333"
    )
    port map (
      I0 => RPNC_stack_store_N15,
      I1 => RPNC_stack_store_N9,
      I2 => RPNC_stack_store_N27,
      I3 => RPNC_stack_store_N21,
      I4 => RPNC_stack_store_N171,
      I5 => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_7_Q,
      O => N24
    );
  InstrBufferInst_Mmux_dataMemReadAddr6_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => InstrBufferInst_currentReadAddr(4),
      I1 => InstrBufferInst_currentReadAddr(3),
      O => N26
    );
  InstrBufferInst_Mmux_dataMemReadAddr6 : LUT6
    generic map(
      INIT => X"EEEEEBEE44444144"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntRead_350,
      I1 => InstrBufferInst_currentReadAddr(5),
      I2 => N26,
      I3 => RPNC_control_state_FSM_FFd7_11,
      I4 => InstrBufferInst_N18,
      I5 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(6),
      O => InstrBufferInst_dataMemReadAddr(5)
    );
  InstrBufferInst_Mmux_dataMemReadAddr8_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd7_11,
      I1 => InstrBufferInst_currentReadAddr(6),
      O => N30
    );
  InstrBufferInst_Mmux_dataMemReadAddr8 : LUT6
    generic map(
      INIT => X"FBEEEAEE51444044"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntRead_350,
      I1 => InstrBufferInst_currentReadAddr(7),
      I2 => InstrBufferInst_N68,
      I3 => N30,
      I4 => InstrBufferInst_N57,
      I5 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(8),
      O => InstrBufferInst_dataMemReadAddr(7)
    );
  InstrBufferInst_regReadData_3_1 : LUT6
    generic map(
      INIT => X"BDB9BCB8ADA9ACA8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I3 => InstrBufferInst_remainingInstructions(3),
      I4 => RPNC_stack_store_stack_top(3),
      I5 => InstrBufferInst_currentReadAddr(3),
      O => InstrBufferInst_regReadData_3_1_664
    );
  InstrBufferInst_regReadData_3_2 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(15),
      I1 => instrDataSignal(11),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I3 => instrDataSignal(3),
      I4 => InstrBufferInst_regReadData_3_1_664,
      I5 => InstrBufferInst_N19,
      O => InstrBufferInst_regReadData(3)
    );
  InstrBufferInst_regReadData_1_1 : LUT6
    generic map(
      INIT => X"BDB9BCB8ADA9ACA8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I3 => InstrBufferInst_remainingInstructions(1),
      I4 => RPNC_stack_store_stack_top(1),
      I5 => InstrBufferInst_currentReadAddr(1),
      O => InstrBufferInst_regReadData_1_1_665
    );
  InstrBufferInst_regReadData_1_2 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(15),
      I1 => instrDataSignal(9),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I3 => instrDataSignal(1),
      I4 => InstrBufferInst_regReadData_1_1_665,
      I5 => InstrBufferInst_N19,
      O => InstrBufferInst_regReadData(1)
    );
  InstrBufferInst_regReadData_5_1 : LUT6
    generic map(
      INIT => X"9585948491819080"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I3 => InstrBufferInst_currentReadAddr(5),
      I4 => RPNC_stack_store_stack_top(5),
      I5 => InstrBufferInst_remainingInstructions(5),
      O => InstrBufferInst_regReadData_5_1_666
    );
  InstrBufferInst_regReadData_5_2 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(15),
      I1 => instrDataSignal(13),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I3 => instrDataSignal(5),
      I4 => InstrBufferInst_N19,
      I5 => InstrBufferInst_regReadData_5_1_666,
      O => InstrBufferInst_regReadData(5)
    );
  InstrBufferInst_regReadData_7_1 : LUT6
    generic map(
      INIT => X"FFFFFFFF5E0E5404"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I1 => RPNC_stack_store_stack_top(7),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I3 => InstrBufferInst_currentReadAddr(7),
      I4 => InstrBufferInst_remainingInstructions(7),
      I5 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      O => InstrBufferInst_regReadData_7_1_667
    );
  InstrBufferInst_regReadData_7_2 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(15),
      I1 => instrDataSignal(15),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I3 => instrDataSignal(7),
      I4 => InstrBufferInst_regReadData_7_1_667,
      I5 => InstrBufferInst_N19,
      O => InstrBufferInst_regReadData(7)
    );
  InstrBufferInst_regReadData_6_1 : LUT6
    generic map(
      INIT => X"FFFFFFFF5E0E5404"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I1 => RPNC_stack_store_stack_top(6),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I3 => InstrBufferInst_currentReadAddr(6),
      I4 => InstrBufferInst_remainingInstructions(6),
      I5 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      O => InstrBufferInst_regReadData_6_1_668
    );
  InstrBufferInst_regReadData_6_2 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(15),
      I1 => instrDataSignal(14),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I3 => instrDataSignal(6),
      I4 => InstrBufferInst_regReadData_6_1_668,
      I5 => InstrBufferInst_N19,
      O => InstrBufferInst_regReadData(6)
    );
  InstrBufferInst_regReadData_4_1 : LUT6
    generic map(
      INIT => X"AA5DAA0DAA58AA08"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I1 => InstrBufferInst_remainingInstructions(4),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I3 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      I4 => InstrBufferInst_currentReadAddr(4),
      I5 => RPNC_stack_store_stack_top(4),
      O => InstrBufferInst_regReadData_4_1_669
    );
  InstrBufferInst_regReadData_4_2 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(15),
      I1 => instrDataSignal(12),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I3 => instrDataSignal(4),
      I4 => InstrBufferInst_N19,
      I5 => InstrBufferInst_regReadData_4_1_669,
      O => InstrBufferInst_regReadData(4)
    );
  InstrBufferInst_regReadData_2_1 : LUT6
    generic map(
      INIT => X"AA5DAA0DAA58AA08"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I1 => InstrBufferInst_remainingInstructions(2),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I3 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      I4 => InstrBufferInst_currentReadAddr(2),
      I5 => RPNC_stack_store_stack_top(2),
      O => InstrBufferInst_regReadData_2_1_670
    );
  InstrBufferInst_regReadData_2_2 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(15),
      I1 => instrDataSignal(10),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I3 => instrDataSignal(2),
      I4 => InstrBufferInst_N19,
      I5 => InstrBufferInst_regReadData_2_1_670,
      O => InstrBufferInst_regReadData(2)
    );
  InstrBufferInst_regReadData_0_1 : LUT6
    generic map(
      INIT => X"1154005411100010"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I2 => RPNC_stack_store_stack_top(0),
      I3 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I4 => InstrBufferInst_remainingInstructions(0),
      I5 => InstrBufferInst_currentReadAddr(0),
      O => InstrBufferInst_regReadData_0_1_671
    );
  InstrBufferInst_regReadData_0_3 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(15),
      I1 => instrDataSignal(8),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I3 => instrDataSignal(0),
      I4 => InstrBufferInst_N19,
      I5 => InstrBufferInst_regReadData_0_1_671,
      O => InstrBufferInst_regReadData(0)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(14),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(15),
      I2 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(12),
      I3 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(13),
      I4 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(10),
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(11),
      O => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o22 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(4),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(5),
      I2 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(2),
      I3 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(3),
      I4 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(0),
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(1),
      O => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_673
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o23 : LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8A8A8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(9),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(7),
      I2 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(8),
      I3 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(6),
      I4 => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_673,
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_inv
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(14),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(15),
      I2 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(13),
      I3 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(12),
      I4 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(11),
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(10),
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_1_674
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(4),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(5),
      I2 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(3),
      I3 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(2),
      I4 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(1),
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(0),
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_2_675
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_3 : LUT6
    generic map(
      INIT => X"1F1F0F1F00000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(8),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(7),
      I2 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(9),
      I3 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(6),
      I4 => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_2_675,
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_1_674,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Mmux_counter_15_GND_25_o_mux_3_OUT_rs_B_4_Q
    );
  InstrBufferInst_regReadData_0_21 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(11),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(10),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(12),
      I3 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(13),
      I4 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(15),
      I5 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(2),
      O => InstrBufferInst_regReadData_0_2
    );
  InstrBufferInst_regReadData_0_22 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(3),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(5),
      I3 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(6),
      I4 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(8),
      I5 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(7),
      O => InstrBufferInst_regReadData_0_21_677
    );
  InstrBufferInst_regReadData_0_23 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(9),
      I1 => InstrBufferInst_regReadData_0_2,
      I2 => InstrBufferInst_regReadData_0_21_677,
      O => InstrBufferInst_N19
    );
  InstrBufferInst_empty_7_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => InstrBufferInst_remainingInstructions(4),
      I1 => InstrBufferInst_remainingInstructions(7),
      I2 => InstrBufferInst_remainingInstructions(6),
      O => N32
    );
  InstrBufferInst_empty_7_Q : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => InstrBufferInst_remainingInstructions(1),
      I1 => InstrBufferInst_remainingInstructions(0),
      I2 => InstrBufferInst_remainingInstructions(5),
      I3 => InstrBufferInst_remainingInstructions(3),
      I4 => InstrBufferInst_remainingInstructions(2),
      I5 => N32,
      O => leds_3_OBUF_22
    );
  InstrBufferInst_UARTHandlerInst_up_n0372_inv_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I1 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      O => N34
    );
  InstrBufferInst_UARTHandlerInst_up_n0372_inv : LUT6
    generic map(
      INIT => X"FFFFFFFFFF080808"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_sTxBusy_570,
      I1 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => N34,
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      O => InstrBufferInst_UARTHandlerInst_up_n0372_inv_419
    );
  InstrBufferInst_UARTHandlerInst_up_n0406_inv211 : LUT4
    generic map(
      INIT => X"ABAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_92_o,
      O => InstrBufferInst_UARTHandlerInst_up_n0406_inv21
    );
  InstrBufferInst_UARTHandlerInst_up_n0406_inv212 : LUT6
    generic map(
      INIT => X"AAAA008000800080"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_sendStatFlag_546,
      I1 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I2 => InstrBufferInst_UARTHandlerInst_up_sTxBusy_570,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I5 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547,
      O => InstrBufferInst_UARTHandlerInst_up_n0406_inv211_681
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In22 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In21_683
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In23 : LUT6
    generic map(
      INIT => X"FFFFA0A8A0A8A0A8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In21_683,
      I3 => InstrBufferInst_UARTHandlerInst_up_binLastByte,
      I4 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In2_682,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_N3
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT21 : LUT5
    generic map(
      INIT => X"98889999"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I2 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I3 => InstrBufferInst_UARTHandlerInst_up_readDataS(1),
      I4 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      O => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT2
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT22 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I2 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      O => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT21_685
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT23 : LUT6
    generic map(
      INIT => X"FFFFFFFF82888088"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT21_685,
      I1 => InstrBufferInst_UARTHandlerInst_up_txNibble(1),
      I2 => InstrBufferInst_UARTHandlerInst_up_txNibble(0),
      I3 => InstrBufferInst_UARTHandlerInst_up_txNibble(3),
      I4 => InstrBufferInst_UARTHandlerInst_up_txNibble(2),
      I5 => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT2,
      O => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_1_Q
    );
  InstrBufferInst_UARTHandlerInst_up_dataNibble_2_SW0 : LUT5
    generic map(
      INIT => X"FEEFD4C5"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      O => N39
    );
  InstrBufferInst_UARTHandlerInst_up_dataNibble_3_1 : LUT6
    generic map(
      INIT => X"FFA8ECA8FFFDECA8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      O => InstrBufferInst_UARTHandlerInst_up_dataNibble_3_1_687
    );
  InstrBufferInst_UARTHandlerInst_up_dataNibble_3_2 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4454"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I4 => InstrBufferInst_UARTHandlerInst_up_N52,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataNibble_3_1_687,
      O => InstrBufferInst_UARTHandlerInst_up_dataNibble(1)
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT11 : LUT5
    generic map(
      INIT => X"55554000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I1 => InstrBufferInst_UARTHandlerInst_up_readDataS(0),
      I2 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      I3 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I4 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      O => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT1
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT12 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I1 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      I2 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I3 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      O => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT11_689
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT71 : LUT4
    generic map(
      INIT => X"5111"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I1 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      I2 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I3 => InstrBufferInst_UARTHandlerInst_up_readDataS(6),
      O => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT7
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT72 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      O => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT71_691
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT73 : LUT6
    generic map(
      INIT => X"5555555540404000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I1 => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT71_691,
      I2 => InstrBufferInst_UARTHandlerInst_up_txNibble(3),
      I3 => InstrBufferInst_UARTHandlerInst_up_txNibble(2),
      I4 => InstrBufferInst_UARTHandlerInst_up_txNibble(1),
      I5 => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT7,
      O => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_6_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT31 : LUT5
    generic map(
      INIT => X"55554000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I1 => InstrBufferInst_UARTHandlerInst_up_readDataS(2),
      I2 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      I3 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I4 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      O => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT3
    );
  InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_In_SW0 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I1 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      O => N41
    );
  InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_In : LUT6
    generic map(
      INIT => X"A2F7A2A2A6F7A6A2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I1 => InstrBufferInst_UARTHandlerInst_up_sTxBusy_570,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I3 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I4 => N41,
      I5 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2_525,
      O => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_In_422
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT41 : LUT5
    generic map(
      INIT => X"FFFF4055"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I1 => InstrBufferInst_UARTHandlerInst_up_readDataS(3),
      I2 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I3 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      I4 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      O => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT4
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT42 : LUT6
    generic map(
      INIT => X"FFFFFFFF02000202"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txNibble(3),
      I1 => InstrBufferInst_UARTHandlerInst_up_txNibble(2),
      I2 => InstrBufferInst_UARTHandlerInst_up_txNibble(1),
      I3 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I4 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I5 => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT4,
      O => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_3_Q
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In1_698
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In1 : LUT6
    generic map(
      INIT => X"22222022AAAAAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In1_700
    );
  InstrBufferInst_UARTHandlerInst_up_dataInHexRange1 : LUT6
    generic map(
      INIT => X"0100110011001000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData_3_1_845,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData_4_1_847,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData_2_1_846,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      O => InstrBufferInst_UARTHandlerInst_up_dataInHexRange1_702
    );
  InstrBufferInst_UARTHandlerInst_up_dataInHexRange2 : LUT6
    generic map(
      INIT => X"0000300010003000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData_2_1_846,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      O => InstrBufferInst_UARTHandlerInst_up_dataInHexRange2_703
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In1 : LUT4
    generic map(
      INIT => X"55D5"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I2 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In1_704
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4 : LUT6
    generic map(
      INIT => X"3F3F000A0F0F000A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_22_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_19_o,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4_706,
      I5 => InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_25_o,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In5_707
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In5 : LUT6
    generic map(
      INIT => X"FFFFFFFFF444F000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In3_705,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In5_707,
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_N3,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In
    );
  InstrBufferInst_UARTHandlerInst_up_dataNibble_4_1 : LUT6
    generic map(
      INIT => X"AE8AAE8AFFFFAE8A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      O => InstrBufferInst_UARTHandlerInst_up_dataNibble(4)
    );
  InstrBufferInst_UARTHandlerInst_up_binLastByte_7_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(7),
      I1 => InstrBufferInst_UARTHandlerInst_up_binByteCount(6),
      I2 => InstrBufferInst_UARTHandlerInst_up_binByteCount(5),
      O => N51
    );
  InstrBufferInst_UARTHandlerInst_up_binLastByte_7_Q : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(0),
      I1 => InstrBufferInst_UARTHandlerInst_up_binByteCount(4),
      I2 => InstrBufferInst_UARTHandlerInst_up_binByteCount(3),
      I3 => InstrBufferInst_UARTHandlerInst_up_binByteCount(2),
      I4 => InstrBufferInst_UARTHandlerInst_up_binByteCount(1),
      I5 => N51,
      O => InstrBufferInst_UARTHandlerInst_up_binLastByte
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_n0050_inv_SW0 : LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(0),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(3),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(1),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(2),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(2),
      O => N53
    );
  InstrBufferInst_UARTHandlerInst_ut_ut_n0050_inv : LUT6
    generic map(
      INIT => X"44444444E4444444"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I1 => InstrBufferInst_UARTHandlerInst_up_newTxData_302,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(1),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ut_count16(0),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ut_bitCount(3),
      I5 => N53,
      O => InstrBufferInst_UARTHandlerInst_ut_ut_n0050_inv_590
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_n0057_inv_SW0 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(2),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(1),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(0),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(3),
      O => N55
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_n0057_inv : LUT6
    generic map(
      INIT => X"0000000455555555"
    )
    port map (
      I0 => N55,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(3),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(0),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(2),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(1),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      O => InstrBufferInst_UARTHandlerInst_ut_ur_n0057_inv_628
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_SW0 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_ce16_293,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(2),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(1),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(0),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(0),
      O => N57
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o : LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(2),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(1),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_bitCount(3),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_count16(3),
      I4 => N57,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_648,
      O => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_1
    );
  UART_Rx_IBUF : IBUF
    port map (
      I => UART_Rx,
      O => UART_Rx_IBUF_2
    );
  leds_3_OBUF : OBUF
    port map (
      I => leds_3_OBUF_22,
      O => leds(3)
    );
  leds_2_OBUF : OBUF
    port map (
      I => leds_0_OBUF_24,
      O => leds(2)
    );
  leds_1_OBUF : OBUF
    port map (
      I => leds_0_OBUF_24,
      O => leds(1)
    );
  leds_0_OBUF : OBUF
    port map (
      I => leds_0_OBUF_24,
      O => leds(0)
    );
  UART_Tx_OBUF : OBUF
    port map (
      I => InstrBufferInst_UARTHandlerInst_ut_ut_serOut_20,
      O => UART_Tx
    );
  InstrBufferInst_Mmux_dataMemReadAddr71 : LUT5
    generic map(
      INIT => X"EBEE4144"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntRead_350,
      I1 => InstrBufferInst_currentReadAddr(6),
      I2 => InstrBufferInst_N68,
      I3 => RPNC_control_state_FSM_FFd7_11,
      I4 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(7),
      O => InstrBufferInst_dataMemReadAddr(6)
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(9),
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_9_rt_721
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(6),
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_6_rt_722
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(0),
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_cy_0_rt_723
    );
  InstrBufferInst_Mcount_remainingInstructions_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_remainingInstructions(0),
      O => InstrBufferInst_Mcount_remainingInstructions_cy_0_rt_724
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_14_rt_725
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(13),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_13_rt_726
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(12),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_12_rt_727
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(11),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_11_rt_728
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(10),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_10_rt_729
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(9),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_9_rt_730
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(8),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_8_rt_731
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(7),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_7_rt_732
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(6),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_6_rt_733
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(5),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_5_rt_734
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(4),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_4_rt_735
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(3),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_3_rt_736
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(2),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_2_rt_737
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_cy_1_rt_738
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(15),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_xor_15_rt_739
    );
  InstrBufferInst_UARTHandlerInst_up_n0351_inv1_cepot : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_writeOp_549,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o111,
      O => InstrBufferInst_UARTHandlerInst_up_n0351_inv1_cepot_740
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT18 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(0),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_0_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_0_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT21 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(10),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_10_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_10_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT31 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(11),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_11_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_11_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT41 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(12),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_12_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_12_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT51 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(13),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_13_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_13_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT61 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(14),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_14_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_14_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT71 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(15),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_15_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_15_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT81 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(1),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_1_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_1_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT91 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(2),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_2_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_2_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT101 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(3),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_3_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_3_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT111 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_4_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_4_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT121 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(5),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_5_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_5_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT131 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(6),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_6_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_6_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT141 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(7),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_7_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_7_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT151 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(8),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_8_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_8_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_iIntAddress_15_addrParam_15_mux_88_OUT161 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(9),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_GND_53_o_add_85_OUT_9_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_57_o,
      I3 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntAddress_15_addrParam_15_mux_88_OUT_9_Q
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I1 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547,
      O => N59
    );
  InstrBufferInst_UARTHandlerInst_up_n0347_inv1 : LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iWriteReq_543,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I3 => N59,
      I4 => InstrBufferInst_UARTHandlerInst_up_writeOp_549,
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o111,
      O => InstrBufferInst_UARTHandlerInst_up_n0347_inv
    );
  InstrBufferInst_UARTHandlerInst_up_dataInHexRange3_SW0 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_1_843,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      O => N61
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o11 : LUT6
    generic map(
      INIT => X"00000000808080C0"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange1_702,
      I4 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange2_703,
      I5 => N61,
      O => InstrBufferInst_UARTHandlerInst_up_N59
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_7 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_intWrData_7_rstpot_744,
      Q => InstrBufferInst_UARTHandlerInst_up_intWrData(7)
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_6 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_intWrData_6_rstpot_745,
      Q => InstrBufferInst_UARTHandlerInst_up_intWrData(6)
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_5 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_intWrData_5_rstpot_746,
      Q => InstrBufferInst_UARTHandlerInst_up_intWrData(5)
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_4 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_intWrData_4_rstpot_747,
      Q => InstrBufferInst_UARTHandlerInst_up_intWrData(4)
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_3 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_intWrData_3_rstpot_748,
      Q => InstrBufferInst_UARTHandlerInst_up_intWrData(3)
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_2 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_intWrData_2_rstpot_749,
      Q => InstrBufferInst_UARTHandlerInst_up_intWrData(2)
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_1 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_intWrData_1_rstpot_750,
      Q => InstrBufferInst_UARTHandlerInst_up_intWrData(1)
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_0 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_intWrData_0_rstpot_751,
      Q => InstrBufferInst_UARTHandlerInst_up_intWrData(0)
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT14_SW1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(7),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => N63
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT14_SW3 : LUT6
    generic map(
      INIT => X"8A888E8A8A88828A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(7),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I5 => InstrBufferInst_UARTHandlerInst_up_addrParam(3),
      O => N65
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT13_SW1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(6),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => N67
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT13_SW2 : LUT5
    generic map(
      INIT => X"EEEEFFF7"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_addrParam(2),
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      O => N68
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT13_SW3 : LUT6
    generic map(
      INIT => X"8A888E8A8A88828A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(6),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I5 => InstrBufferInst_UARTHandlerInst_up_addrParam(2),
      O => N69
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT13 : LUT6
    generic map(
      INIT => X"EFE54F45CFCFCFCF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => N67,
      I2 => N45,
      I3 => N68,
      I4 => N69,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_6_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT12_SW1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(5),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => N71
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT12_SW2 : LUT5
    generic map(
      INIT => X"EEEEFFF7"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_addrParam(1),
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      O => N72
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT12_SW3 : LUT6
    generic map(
      INIT => X"8A888E8A8A88828A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(5),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I5 => InstrBufferInst_UARTHandlerInst_up_addrParam(1),
      O => N73
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT12 : LUT6
    generic map(
      INIT => X"EFE54F45CFCFCFCF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => N71,
      I2 => N47,
      I3 => N72,
      I4 => N73,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_5_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT11_SW1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => N75
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT11_SW2 : LUT5
    generic map(
      INIT => X"EEEEFFF7"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_addrParam(0),
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      O => N76
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT11_SW3 : LUT6
    generic map(
      INIT => X"8A888E8A8A88828A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I5 => InstrBufferInst_UARTHandlerInst_up_addrParam(0),
      O => N77
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT11 : LUT6
    generic map(
      INIT => X"EFE54F45CFCFCFCF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => N75,
      I2 => N49,
      I3 => N76,
      I4 => N77,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_4_Q
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In3 : LUT6
    generic map(
      INIT => X"FFFFFFECFFECFFEC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In1_700,
      I2 => N79,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In2_701,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In2_682,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_7_GND_53_o_equal_1_o_7_1_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      O => N83
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In3 : LUT6
    generic map(
      INIT => X"0E0E0E0E0E0F0F0F"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I3 => N83,
      I4 => InstrBufferInst_UARTHandlerInst_up_N63,
      I5 => InstrBufferInst_UARTHandlerInst_up_N57,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In4_706
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_19_o1_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      O => N85
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_19_o1_SW1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => N86
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_19_o1_SW2 : LUT6
    generic map(
      INIT => X"1004FFFFFFFFFFFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      O => N87
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In21 : LUT6
    generic map(
      INIT => X"00102333CCDCEFFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I2 => InstrBufferInst_UARTHandlerInst_up_N63,
      I3 => N87,
      I4 => N85,
      I5 => N86,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In2_682
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT7 : LUT5
    generic map(
      INIT => X"E2C0F3D1"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd4_118,
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_alu_result(6),
      I3 => instrDataSignal(6),
      I4 => N20,
      O => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_6_Q
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT8 : LUT5
    generic map(
      INIT => X"E2C0F3D1"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd4_118,
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_alu_result(7),
      I3 => instrDataSignal(7),
      I4 => N22,
      O => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_7_Q
    );
  InstrBufferInst_n0084_inv1 : LUT6
    generic map(
      INIT => X"FF00FF20FF00FF00"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntWrite_351,
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I3 => RPNC_control_state_FSM_FFd7_11,
      I4 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I5 => InstrBufferInst_N19,
      O => InstrBufferInst_n0084_inv
    );
  RPNC_stack_store_Msub_stack_ptr_31_GND_18_o_sub_3_OUT_7_0_xor_4_11 : LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(4),
      I1 => RPNC_stack_stack_ptr(2),
      I2 => RPNC_stack_stack_ptr(3),
      I3 => RPNC_stack_stack_ptr(0),
      I4 => RPNC_stack_stack_ptr(1),
      O => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_4_Q
    );
  RPNC_stack_store_Msub_stack_ptr_31_GND_18_o_sub_3_OUT_7_0_xor_5_11 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(5),
      I1 => RPNC_stack_stack_ptr(4),
      I2 => RPNC_stack_stack_ptr(2),
      I3 => RPNC_stack_stack_ptr(3),
      I4 => RPNC_stack_stack_ptr(0),
      I5 => RPNC_stack_stack_ptr(1),
      O => RPNC_stack_store_stack_ptr_31_GND_18_o_sub_3_OUT_5_Q
    );
  InstrBufferInst_remainingInstructions_7 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_remainingInstructions_7_rstpot_768,
      Q => InstrBufferInst_remainingInstructions(7)
    );
  InstrBufferInst_remainingInstructions_6 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_remainingInstructions_6_rstpot_769,
      Q => InstrBufferInst_remainingInstructions(6)
    );
  InstrBufferInst_remainingInstructions_5 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_remainingInstructions_5_rstpot_770,
      Q => InstrBufferInst_remainingInstructions(5)
    );
  InstrBufferInst_remainingInstructions_4 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_remainingInstructions_4_rstpot_771,
      Q => InstrBufferInst_remainingInstructions(4)
    );
  InstrBufferInst_remainingInstructions_3 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_remainingInstructions_3_rstpot_772,
      Q => InstrBufferInst_remainingInstructions(3)
    );
  InstrBufferInst_remainingInstructions_2 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_remainingInstructions_2_rstpot_773,
      Q => InstrBufferInst_remainingInstructions(2)
    );
  InstrBufferInst_remainingInstructions_1 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_remainingInstructions_1_rstpot_774,
      Q => InstrBufferInst_remainingInstructions(1)
    );
  InstrBufferInst_remainingInstructions_0 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_remainingInstructions_0_rstpot_775,
      Q => InstrBufferInst_remainingInstructions(0)
    );
  InstrBufferInst_currentReadAddr_0 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_currentReadAddr_0_rstpot_776,
      Q => InstrBufferInst_currentReadAddr(0)
    );
  InstrBufferInst_UARTHandlerInst_up_iIntRead : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_iIntRead_rstpot_777,
      Q => InstrBufferInst_UARTHandlerInst_up_iIntRead_350
    );
  InstrBufferInst_remainingInstructions_7_rstpot : LUT5
    generic map(
      INIT => X"CCF0AAAA"
    )
    port map (
      I0 => InstrBufferInst_remainingInstructions(7),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(7),
      I2 => InstrBufferInst_Result_7_1,
      I3 => InstrBufferInst_regWriteEnable_GND_19_o_AND_126_o,
      I4 => InstrBufferInst_n0087_inv,
      O => InstrBufferInst_remainingInstructions_7_rstpot_768
    );
  InstrBufferInst_remainingInstructions_6_rstpot : LUT5
    generic map(
      INIT => X"CCF0AAAA"
    )
    port map (
      I0 => InstrBufferInst_remainingInstructions(6),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(6),
      I2 => InstrBufferInst_Result_6_1,
      I3 => InstrBufferInst_regWriteEnable_GND_19_o_AND_126_o,
      I4 => InstrBufferInst_n0087_inv,
      O => InstrBufferInst_remainingInstructions_6_rstpot_769
    );
  InstrBufferInst_remainingInstructions_5_rstpot : LUT5
    generic map(
      INIT => X"CCF0AAAA"
    )
    port map (
      I0 => InstrBufferInst_remainingInstructions(5),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(5),
      I2 => InstrBufferInst_Result_5_1,
      I3 => InstrBufferInst_regWriteEnable_GND_19_o_AND_126_o,
      I4 => InstrBufferInst_n0087_inv,
      O => InstrBufferInst_remainingInstructions_5_rstpot_770
    );
  InstrBufferInst_remainingInstructions_4_rstpot : LUT5
    generic map(
      INIT => X"CCF0AAAA"
    )
    port map (
      I0 => InstrBufferInst_remainingInstructions(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(4),
      I2 => InstrBufferInst_Result_4_1,
      I3 => InstrBufferInst_regWriteEnable_GND_19_o_AND_126_o,
      I4 => InstrBufferInst_n0087_inv,
      O => InstrBufferInst_remainingInstructions_4_rstpot_771
    );
  InstrBufferInst_remainingInstructions_3_rstpot : LUT5
    generic map(
      INIT => X"CCF0AAAA"
    )
    port map (
      I0 => InstrBufferInst_remainingInstructions(3),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(3),
      I2 => InstrBufferInst_Result_3_1,
      I3 => InstrBufferInst_regWriteEnable_GND_19_o_AND_126_o,
      I4 => InstrBufferInst_n0087_inv,
      O => InstrBufferInst_remainingInstructions_3_rstpot_772
    );
  InstrBufferInst_remainingInstructions_2_rstpot : LUT5
    generic map(
      INIT => X"CCF0AAAA"
    )
    port map (
      I0 => InstrBufferInst_remainingInstructions(2),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(2),
      I2 => InstrBufferInst_Result_2_1,
      I3 => InstrBufferInst_regWriteEnable_GND_19_o_AND_126_o,
      I4 => InstrBufferInst_n0087_inv,
      O => InstrBufferInst_remainingInstructions_2_rstpot_773
    );
  InstrBufferInst_remainingInstructions_1_rstpot : LUT5
    generic map(
      INIT => X"CCF0AAAA"
    )
    port map (
      I0 => InstrBufferInst_remainingInstructions(1),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(1),
      I2 => InstrBufferInst_Result_1_1,
      I3 => InstrBufferInst_regWriteEnable_GND_19_o_AND_126_o,
      I4 => InstrBufferInst_n0087_inv,
      O => InstrBufferInst_remainingInstructions_1_rstpot_774
    );
  InstrBufferInst_remainingInstructions_0_rstpot : LUT5
    generic map(
      INIT => X"CCF0AAAA"
    )
    port map (
      I0 => InstrBufferInst_remainingInstructions(0),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(0),
      I2 => InstrBufferInst_Result_0_1,
      I3 => InstrBufferInst_regWriteEnable_GND_19_o_AND_126_o,
      I4 => InstrBufferInst_n0087_inv,
      O => InstrBufferInst_remainingInstructions_0_rstpot_775
    );
  InstrBufferInst_UARTHandlerInst_up_iIntRead_rstpot : LUT6
    generic map(
      INIT => X"F0F0F0E2F0F0F0AA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iReadReq_544,
      I1 => InstrBufferInst_UARTHandlerInst_up_readOp_550,
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntRead_350,
      I3 => InstrBufferInst_UARTHandlerInst_up_iReadReq_PWR_36_o_MUX_142_o,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_newRxData_AND_72_o,
      I5 => InstrBufferInst_UARTHandlerInst_up_N59,
      O => InstrBufferInst_UARTHandlerInst_up_iIntRead_rstpot_777
    );
  InstrBufferInst_UARTHandlerInst_up_binLastByte_7_SW1 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(1),
      I1 => InstrBufferInst_UARTHandlerInst_up_binByteCount(2),
      I2 => InstrBufferInst_UARTHandlerInst_up_binByteCount(0),
      I3 => InstrBufferInst_UARTHandlerInst_up_binByteCount(3),
      O => N89
    );
  InstrBufferInst_UARTHandlerInst_up_iReadReq_PWR_36_o_MUX_142_o1 : LUT6
    generic map(
      INIT => X"00C000C000C00080"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_sTxBusy_570,
      I2 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I4 => N51,
      I5 => N89,
      O => InstrBufferInst_UARTHandlerInst_up_iReadReq_PWR_36_o_MUX_142_o
    );
  InstrBufferInst_regReadData_0_23_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      O => N91
    );
  InstrBufferInst_regWriteEnable_GND_19_o_AND_126_o1 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntWrite_351,
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(9),
      I2 => InstrBufferInst_regReadData_0_21_677,
      I3 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I4 => N91,
      I5 => InstrBufferInst_regReadData_0_2,
      O => InstrBufferInst_regWriteEnable_GND_19_o_AND_126_o
    );
  InstrBufferInst_regReadData_0_23_SW1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      O => N93
    );
  InstrBufferInst_regWriteEnable_GND_19_o_AND_129_o1 : LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(9),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntWrite_351,
      I3 => InstrBufferInst_regReadData_0_2,
      I4 => N93,
      I5 => InstrBufferInst_regReadData_0_21_677,
      O => InstrBufferInst_regWriteEnable_GND_19_o_AND_129_o
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In7_SW0 : LUT6
    generic map(
      INIT => X"8A028F038A02FF33"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_binLastByte,
      I4 => InstrBufferInst_UARTHandlerInst_up_rxData_7_rxData_7_OR_19_o,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => N95
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In7 : LUT4
    generic map(
      INIT => X"FF4C"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => N95,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In4_699,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_7_rstpot : LUT6
    generic map(
      INIT => X"AFA0FF00CCCCCCCC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(7),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(7),
      I2 => InstrBufferInst_UARTHandlerInst_up_writeOp_549,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I4 => InstrBufferInst_UARTHandlerInst_up_N59,
      I5 => InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o,
      O => InstrBufferInst_UARTHandlerInst_up_intWrData_7_rstpot_744
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_6_rstpot : LUT6
    generic map(
      INIT => X"AFA0FF00CCCCCCCC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(6),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(6),
      I2 => InstrBufferInst_UARTHandlerInst_up_writeOp_549,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I4 => InstrBufferInst_UARTHandlerInst_up_N59,
      I5 => InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o,
      O => InstrBufferInst_UARTHandlerInst_up_intWrData_6_rstpot_745
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_5_rstpot : LUT6
    generic map(
      INIT => X"AFA0FF00CCCCCCCC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(5),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(5),
      I2 => InstrBufferInst_UARTHandlerInst_up_writeOp_549,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I4 => InstrBufferInst_UARTHandlerInst_up_N59,
      I5 => InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o,
      O => InstrBufferInst_UARTHandlerInst_up_intWrData_5_rstpot_746
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_4_rstpot : LUT6
    generic map(
      INIT => X"AFA0FF00CCCCCCCC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(4),
      I2 => InstrBufferInst_UARTHandlerInst_up_writeOp_549,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I4 => InstrBufferInst_UARTHandlerInst_up_N59,
      I5 => InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o,
      O => InstrBufferInst_UARTHandlerInst_up_intWrData_4_rstpot_747
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_3_rstpot : LUT6
    generic map(
      INIT => X"AFA0FF00CCCCCCCC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(3),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(3),
      I2 => InstrBufferInst_UARTHandlerInst_up_writeOp_549,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I4 => InstrBufferInst_UARTHandlerInst_up_N59,
      I5 => InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o,
      O => InstrBufferInst_UARTHandlerInst_up_intWrData_3_rstpot_748
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_2_rstpot : LUT6
    generic map(
      INIT => X"AFA0FF00CCCCCCCC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(2),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(2),
      I2 => InstrBufferInst_UARTHandlerInst_up_writeOp_549,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I4 => InstrBufferInst_UARTHandlerInst_up_N59,
      I5 => InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o,
      O => InstrBufferInst_UARTHandlerInst_up_intWrData_2_rstpot_749
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_1_rstpot : LUT6
    generic map(
      INIT => X"AFA0FF00CCCCCCCC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(1),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(1),
      I2 => InstrBufferInst_UARTHandlerInst_up_writeOp_549,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I4 => InstrBufferInst_UARTHandlerInst_up_N59,
      I5 => InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o,
      O => InstrBufferInst_UARTHandlerInst_up_intWrData_1_rstpot_750
    );
  InstrBufferInst_UARTHandlerInst_up_intWrData_0_rstpot : LUT6
    generic map(
      INIT => X"AFA0FF00CCCCCCCC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(0),
      I1 => InstrBufferInst_UARTHandlerInst_up_intWrData(0),
      I2 => InstrBufferInst_UARTHandlerInst_up_writeOp_549,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I4 => InstrBufferInst_UARTHandlerInst_up_N59,
      I5 => InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o,
      O => InstrBufferInst_UARTHandlerInst_up_intWrData_0_rstpot_751
    );
  InstrBufferInst_UARTHandlerInst_up_txData_0_dpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txData(0),
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_0_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_rstpot_782,
      O => InstrBufferInst_UARTHandlerInst_up_txData_0_dpot_784
    );
  InstrBufferInst_UARTHandlerInst_up_txData_1_dpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txData(1),
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_1_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_rstpot_782,
      O => InstrBufferInst_UARTHandlerInst_up_txData_1_dpot_785
    );
  InstrBufferInst_UARTHandlerInst_up_txData_2_dpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txData(2),
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_2_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_rstpot_782,
      O => InstrBufferInst_UARTHandlerInst_up_txData_2_dpot_786
    );
  InstrBufferInst_UARTHandlerInst_up_txData_3_dpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txData(3),
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_3_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_rstpot_782,
      O => InstrBufferInst_UARTHandlerInst_up_txData_3_dpot_787
    );
  InstrBufferInst_UARTHandlerInst_up_txData_4_dpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txData(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_4_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_rstpot_782,
      O => InstrBufferInst_UARTHandlerInst_up_txData_4_dpot_788
    );
  InstrBufferInst_UARTHandlerInst_up_txData_5_dpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txData(5),
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_5_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_rstpot_782,
      O => InstrBufferInst_UARTHandlerInst_up_txData_5_dpot_789
    );
  InstrBufferInst_UARTHandlerInst_up_txData_6_dpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txData(6),
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_6_Q,
      I2 => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_rstpot_782,
      O => InstrBufferInst_UARTHandlerInst_up_txData_6_dpot_790
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT2 : LUT5
    generic map(
      INIT => X"E2C0F3D1"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd4_118,
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_alu_result(1),
      I3 => instrDataSignal(1),
      I4 => N10,
      O => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_1_Q
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT3 : LUT5
    generic map(
      INIT => X"E2C0F3D1"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd4_118,
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_alu_result(2),
      I3 => instrDataSignal(2),
      I4 => N12,
      O => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_2_Q
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT4 : LUT5
    generic map(
      INIT => X"E2C0F3D1"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd4_118,
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_alu_result(3),
      I3 => instrDataSignal(3),
      I4 => N14,
      O => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_3_Q
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT5 : LUT5
    generic map(
      INIT => X"E2C0F3D1"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd4_118,
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_alu_result(4),
      I3 => instrDataSignal(4),
      I4 => N16,
      O => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_4_Q
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT6 : LUT5
    generic map(
      INIT => X"E2C0F3D1"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd4_118,
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_alu_result(5),
      I3 => instrDataSignal(5),
      I4 => N18,
      O => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_5_Q
    );
  RPNC_stack_store_Mmux_stack_top_7_stack_in_7_mux_5_OUT1 : LUT5
    generic map(
      INIT => X"E2C0F3D1"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd4_118,
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_alu_result(0),
      I3 => instrDataSignal(0),
      I4 => N24,
      O => RPNC_stack_store_stack_top_7_stack_in_7_mux_5_OUT_0_Q
    );
  InstrBufferInst_UARTHandlerInst_up_n0406_inv213_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I1 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      O => N97
    );
  InstrBufferInst_UARTHandlerInst_up_n0406_inv1_rstpot : LUT6
    generic map(
      INIT => X"2F2F2F2F2F202020"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_sTxBusy_570,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I2 => N97,
      I3 => InstrBufferInst_UARTHandlerInst_up_n0406_inv211_681,
      I4 => InstrBufferInst_UARTHandlerInst_up_binLastByte,
      I5 => InstrBufferInst_UARTHandlerInst_up_n0406_inv21,
      O => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_rstpot_782
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_7_Q : LUT6
    generic map(
      INIT => X"5555555566626262"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(7),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(9),
      I2 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(8),
      I3 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(6),
      I4 => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_673,
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_7_Q_216
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_8_Q : LUT6
    generic map(
      INIT => X"5555555566626262"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(8),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(9),
      I2 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(7),
      I3 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(6),
      I4 => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_673,
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2,
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_8_Q_214
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT14 : LUT6
    generic map(
      INIT => X"FFFFFFFF282828A0"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT11_689,
      I1 => InstrBufferInst_UARTHandlerInst_up_txNibble(3),
      I2 => InstrBufferInst_UARTHandlerInst_up_txNibble(0),
      I3 => InstrBufferInst_UARTHandlerInst_up_txNibble(2),
      I4 => InstrBufferInst_UARTHandlerInst_up_txNibble(1),
      I5 => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT1,
      O => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_0_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT33 : LUT6
    generic map(
      INIT => X"FFFFFFFF88808888"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txNibble(2),
      I1 => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT11_689,
      I2 => InstrBufferInst_UARTHandlerInst_up_txNibble(0),
      I3 => InstrBufferInst_UARTHandlerInst_up_txNibble(1),
      I4 => InstrBufferInst_UARTHandlerInst_up_txNibble(3),
      I5 => InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT3,
      O => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_2_Q
    );
  InstrBufferInst_n0084_inv1_SW0 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      I3 => InstrBufferInst_UARTHandlerInst_up_iIntWrite_351,
      O => N103
    );
  InstrBufferInst_currentReadAddr_0_rstpot : LUT6
    generic map(
      INIT => X"FF550055EA6A2A6A"
    )
    port map (
      I0 => InstrBufferInst_currentReadAddr(0),
      I1 => N103,
      I2 => InstrBufferInst_N19,
      I3 => InstrBufferInst_regWriteEnable_GND_19_o_AND_129_o,
      I4 => InstrBufferInst_UARTHandlerInst_up_intWrData(0),
      I5 => RPNC_control_state_FSM_FFd7_11,
      O => InstrBufferInst_currentReadAddr_0_rstpot_776
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o23_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(8),
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(7),
      O => N105
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_1_Q : LUT6
    generic map(
      INIT => X"3336363666666666"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2,
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(1),
      I2 => N105,
      I3 => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_673,
      I4 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(6),
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(9),
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_1_Q_228
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_7_GND_53_o_equal_1_o_7_1_SW1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => N107
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In2 : LUT6
    generic map(
      INIT => X"2222200020002000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I4 => N107,
      I5 => InstrBufferInst_UARTHandlerInst_up_N63,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In2_701
    );
  InstrBufferInst_UARTHandlerInst_up_binLastByte_7_SW2 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(2),
      I1 => InstrBufferInst_UARTHandlerInst_up_binByteCount(1),
      I2 => InstrBufferInst_UARTHandlerInst_up_binByteCount(0),
      I3 => InstrBufferInst_UARTHandlerInst_up_binByteCount(4),
      O => N109
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In23_SW0 : LUT6
    generic map(
      INIT => X"AAA8AAA8FFFFAAA8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I1 => N109,
      I2 => N51,
      I3 => InstrBufferInst_UARTHandlerInst_up_binByteCount(3),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => N79
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_2_Q : LUT6
    generic map(
      INIT => X"3336363666666666"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2,
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(2),
      I2 => N105,
      I3 => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_673,
      I4 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(6),
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(9),
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_2_Q_226
    );
  InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_3_Q : LUT6
    generic map(
      INIT => X"3336363666666666"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o2,
      I1 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(3),
      I2 => N105,
      I3 => InstrBufferInst_UARTHandlerInst_ut_bg_baudLimit_15_counter_15_LessThan_1_o21_673,
      I4 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(6),
      I5 => InstrBufferInst_UARTHandlerInst_ut_bg_counter(9),
      O => InstrBufferInst_UARTHandlerInst_ut_bg_Maccum_counter_lut_3_Q_224
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT21_SW0 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_up_addrParam(6),
      O => N115
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT21_SW1 : LUT6
    generic map(
      INIT => X"FBFBFBDBFFFFFFFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_addrParam(6),
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      O => N116
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT21 : LUT6
    generic map(
      INIT => X"F3C0F5A0CCCCAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(10),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I2 => N116,
      I3 => N115,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_PWR_36_o_equal_65_o,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_10_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT61_SW0 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_up_addrParam(10),
      O => N118
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT61_SW1 : LUT6
    generic map(
      INIT => X"FBFBFBDBFFFFFFFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_addrParam(10),
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      O => N119
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT61 : LUT6
    generic map(
      INIT => X"F3C0F5A0CCCCAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(14),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I2 => N119,
      I3 => N118,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_PWR_36_o_equal_65_o,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_14_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT41_SW0 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_up_addrParam(8),
      O => N121
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT41_SW1 : LUT6
    generic map(
      INIT => X"FBFBFBDBFFFFFFFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_addrParam(8),
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      O => N122
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT41 : LUT6
    generic map(
      INIT => X"F3C0F5A0CCCCAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(12),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I2 => N122,
      I3 => N121,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_PWR_36_o_equal_65_o,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_12_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT151_SW0 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_up_addrParam(4),
      O => N124
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT151_SW1 : LUT6
    generic map(
      INIT => X"FBFBFBDBFFFFFFFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_addrParam(4),
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      O => N125
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT151 : LUT6
    generic map(
      INIT => X"F3C0F5A0CCCCAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(8),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I2 => N125,
      I3 => N124,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_PWR_36_o_equal_65_o,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_8_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT51_SW0 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_up_addrParam(9),
      O => N127
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT51_SW1 : LUT6
    generic map(
      INIT => X"FBFBFBDBFFFFFFFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_addrParam(9),
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      O => N128
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT51 : LUT6
    generic map(
      INIT => X"F3C0F5A0CCCCAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(13),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I2 => N128,
      I3 => N127,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_PWR_36_o_equal_65_o,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_13_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT161_SW0 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_up_addrParam(5),
      O => N130
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT161_SW1 : LUT6
    generic map(
      INIT => X"FBFBFBDBFFFFFFFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_addrParam(5),
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      O => N131
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT161 : LUT6
    generic map(
      INIT => X"F3C0F5A0CCCCAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(9),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I2 => N131,
      I3 => N130,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_PWR_36_o_equal_65_o,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_9_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT71_SW0 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_up_addrParam(11),
      O => N133
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT71_SW1 : LUT6
    generic map(
      INIT => X"FBFBFBDBFFFFFFFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_addrParam(11),
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      O => N134
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT71 : LUT6
    generic map(
      INIT => X"F3C0F5A0CCCCAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(15),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I2 => N134,
      I3 => N133,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_PWR_36_o_equal_65_o,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_15_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT31_SW0 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_up_addrParam(7),
      O => N136
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT31_SW1 : LUT6
    generic map(
      INIT => X"FBFBFBDBFFFFFFFF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_addrParam(7),
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      O => N137
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT31 : LUT6
    generic map(
      INIT => X"F3C0F5A0CCCCAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(11),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I2 => N137,
      I3 => N136,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_PWR_36_o_equal_65_o,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_11_Q
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In2_SW0 : LUT5
    generic map(
      INIT => X"00400400"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      O => N145
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In2_SW1 : LUT6
    generic map(
      INIT => X"0400044204000040"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      O => N146
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In2 : LUT6
    generic map(
      INIT => X"FFFFFFFF151F353F"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_N63,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I3 => N145,
      I4 => N146,
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In1_704,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_In3_705
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o11_SW0 : LUT6
    generic map(
      INIT => X"E0A0A0A0C0000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_writeOp_549,
      I1 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => N148
    );
  InstrBufferInst_UARTHandlerInst_up_txChar_4_1_SW0 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I1 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      I2 => InstrBufferInst_UARTHandlerInst_up_readDataS(4),
      I3 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      O => N151
    );
  InstrBufferInst_UARTHandlerInst_up_txChar_4_1_SW1 : LUT4
    generic map(
      INIT => X"FF2A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      I1 => InstrBufferInst_UARTHandlerInst_up_readDataS(4),
      I2 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I3 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      O => N152
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT51 : LUT6
    generic map(
      INIT => X"0404040015151555"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I1 => InstrBufferInst_UARTHandlerInst_up_txNibble(3),
      I2 => N152,
      I3 => InstrBufferInst_UARTHandlerInst_up_txNibble(2),
      I4 => InstrBufferInst_UARTHandlerInst_up_txNibble(1),
      I5 => N151,
      O => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_4_Q
    );
  InstrBufferInst_UARTHandlerInst_up_txChar_4_1_SW2 : LUT4
    generic map(
      INIT => X"1055"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I1 => InstrBufferInst_UARTHandlerInst_up_readDataS(5),
      I2 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I3 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      O => N154
    );
  InstrBufferInst_UARTHandlerInst_up_txChar_4_1_SW3 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_readDataS(5),
      I1 => InstrBufferInst_UARTHandlerInst_up_readDoneS_568,
      I2 => InstrBufferInst_UARTHandlerInst_up_binReadOp_548,
      I3 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      O => N155
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_txData_7_wide_mux_106_OUT61 : LUT6
    generic map(
      INIT => X"0404040015151555"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      I1 => InstrBufferInst_UARTHandlerInst_up_txNibble(3),
      I2 => N155,
      I3 => InstrBufferInst_UARTHandlerInst_up_txNibble(2),
      I4 => InstrBufferInst_UARTHandlerInst_up_txNibble(1),
      I5 => N154,
      O => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_5_Q
    );
  InstrBufferInst_regReadData_0_23_SW2 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(14),
      I1 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntWrite_351,
      O => N157
    );
  InstrBufferInst_n0087_inv1 : LUT6
    generic map(
      INIT => X"DCCCCCCCCCCCCCCC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(9),
      I1 => RPNC_control_state_FSM_FFd7_11,
      I2 => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      I3 => N157,
      I4 => InstrBufferInst_regReadData_0_2,
      I5 => InstrBufferInst_regReadData_0_21_677,
      O => InstrBufferInst_n0087_inv
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT91_SW0 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(2),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      O => N159
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT91_SW1 : LUT6
    generic map(
      INIT => X"BA88B2BA8A88828A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(2),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      O => N160
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT91_SW2 : LUT6
    generic map(
      INIT => X"FFFF5524AEFF0424"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I4 => InstrBufferInst_UARTHandlerInst_up_addrParam(2),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      O => N161
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT91 : LUT6
    generic map(
      INIT => X"EE44E4E4CCCCCCCC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => N159,
      I2 => N160,
      I3 => N161,
      I4 => InstrBufferInst_UARTHandlerInst_up_dataNibble(2),
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_2_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT81_SW0 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(1),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      O => N163
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT81_SW1 : LUT6
    generic map(
      INIT => X"BA88B2BA8A88828A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(1),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      O => N164
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT81_SW2 : LUT6
    generic map(
      INIT => X"FFFF5524AEFF0424"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I4 => InstrBufferInst_UARTHandlerInst_up_addrParam(1),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      O => N165
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT81 : LUT6
    generic map(
      INIT => X"EE44E4E4CCCCCCCC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => N163,
      I2 => N164,
      I3 => N165,
      I4 => InstrBufferInst_UARTHandlerInst_up_dataNibble(1),
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_1_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT101_SW0 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(3),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      O => N167
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT101_SW1 : LUT6
    generic map(
      INIT => X"BA88B2BA8A88828A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(3),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      O => N168
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT101_SW2 : LUT6
    generic map(
      INIT => X"FFFF5524AEFF0424"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I4 => InstrBufferInst_UARTHandlerInst_up_addrParam(3),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      O => N169
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT101 : LUT6
    generic map(
      INIT => X"FAD87250F0F0F0F0"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => InstrBufferInst_UARTHandlerInst_up_dataNibble(3),
      I2 => N167,
      I3 => N168,
      I4 => N169,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_3_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT19_SW0 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(0),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      O => N171
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT19_SW1 : LUT6
    generic map(
      INIT => X"BA88B2BA8A88828A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_addrParam(0),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      O => N172
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT19_SW2 : LUT6
    generic map(
      INIT => X"FFFF5524AEFF0424"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I4 => InstrBufferInst_UARTHandlerInst_up_addrParam(0),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      O => N173
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT19 : LUT6
    generic map(
      INIT => X"EE44E4E4CCCCCCCC"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => N171,
      I2 => N172,
      I3 => N173,
      I4 => InstrBufferInst_UARTHandlerInst_up_dataNibble(0),
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange,
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_0_Q
    );
  RPNC_stack_store_write_ctrl3 : LUT6
    generic map(
      INIT => X"88A8002000000000"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(7),
      I1 => RPNC_stack_stack_ptr(6),
      I2 => RPNC_stack_stack_ptr(5),
      I3 => RPNC_stack_store_N42,
      I4 => RPNC_stack_store_N01,
      I5 => RPNC_stack_store_BUS_0010,
      O => RPNC_stack_store_write_ctrl3_171
    );
  RPNC_stack_store_write_ctrl1 : LUT6
    generic map(
      INIT => X"4454001000000000"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(7),
      I1 => RPNC_stack_stack_ptr(6),
      I2 => RPNC_stack_stack_ptr(5),
      I3 => RPNC_stack_store_N42,
      I4 => RPNC_stack_store_N01,
      I5 => RPNC_stack_store_BUS_0010,
      O => RPNC_stack_store_write_ctrl1_173
    );
  RPNC_stack_store_write_ctrl2 : LUT6
    generic map(
      INIT => X"2262004000000000"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(7),
      I1 => RPNC_stack_stack_ptr(6),
      I2 => RPNC_stack_stack_ptr(5),
      I3 => RPNC_stack_store_N42,
      I4 => RPNC_stack_store_N01,
      I5 => RPNC_stack_store_BUS_0010,
      O => RPNC_stack_store_write_ctrl2_172
    );
  RPNC_stack_store_write_ctrl : LUT6
    generic map(
      INIT => X"1191008000000000"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(7),
      I1 => RPNC_stack_stack_ptr(6),
      I2 => RPNC_stack_stack_ptr(5),
      I3 => RPNC_stack_store_N42,
      I4 => RPNC_stack_store_N01,
      I5 => RPNC_stack_store_BUS_0010,
      O => RPNC_stack_store_write_ctrl_174
    );
  RPNC_stack_store_Mmux_BUS_001011 : LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd4_118,
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => InstrBufferInst_RPNCResetSignal_21,
      O => RPNC_stack_store_BUS_0010
    );
  InstrBufferInst_UARTHandlerInst_up_binWriteOp_PWR_36_o_MUX_125_o1 : LUT6
    generic map(
      INIT => X"0000000040000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => InstrBufferInst_UARTHandlerInst_up_binWriteOp_PWR_36_o_MUX_125_o
    );
  InstrBufferInst_UARTHandlerInst_up_binReadOp_PWR_36_o_MUX_123_o1 : LUT6
    generic map(
      INIT => X"0000200000000000"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      O => InstrBufferInst_UARTHandlerInst_up_binReadOp_PWR_36_o_MUX_123_o
    );
  InstrBufferInst_Madd_currentReadAddr_7_GND_19_o_add_32_OUT_xor_7_121 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => InstrBufferInst_currentReadAddr(4),
      I1 => InstrBufferInst_currentReadAddr(5),
      I2 => InstrBufferInst_currentReadAddr(3),
      I3 => InstrBufferInst_currentReadAddr(2),
      I4 => InstrBufferInst_currentReadAddr(0),
      I5 => InstrBufferInst_currentReadAddr(1),
      O => InstrBufferInst_N57
    );
  InstrBufferInst_Mmux_currentReadAddr_7_regWriteData_7_mux_29_OUT711 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => InstrBufferInst_currentReadAddr(3),
      I1 => InstrBufferInst_currentReadAddr(4),
      I2 => InstrBufferInst_currentReadAddr(5),
      I3 => InstrBufferInst_currentReadAddr(2),
      I4 => InstrBufferInst_currentReadAddr(0),
      I5 => InstrBufferInst_currentReadAddr(1),
      O => InstrBufferInst_N68
    );
  InstrBufferInst_UARTHandlerInst_up_iIntWrite_dpot : LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_iWriteReq_543,
      I1 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I5 => InstrBufferInst_UARTHandlerInst_up_iIntWrite_351,
      O => InstrBufferInst_UARTHandlerInst_up_iIntWrite_dpot_741
    );
  RPNC_push_inv2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd1_109,
      I1 => RPNC_control_state_FSM_FFd4_118,
      O => RPNC_push_inv
    );
  RPNC_stack_store_Madd_n0011_Madd_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(1),
      I1 => RPNC_stack_stack_ptr(0),
      O => RPNC_stack_store_n0011(1)
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT13_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      O => N45
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT12_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      O => N47
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT11_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      O => N49
    );
  RPNC_stack_Mcount_stack_ptr_lut_0_Q : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(0),
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_control_state_FSM_FFd4_118,
      O => RPNC_stack_Mcount_stack_ptr_lut(0)
    );
  RPNC_stack_Mcount_stack_ptr_lut_1_Q : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(1),
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_control_state_FSM_FFd4_118,
      O => RPNC_stack_Mcount_stack_ptr_lut(1)
    );
  RPNC_stack_Mcount_stack_ptr_lut_2_Q : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(2),
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_control_state_FSM_FFd4_118,
      O => RPNC_stack_Mcount_stack_ptr_lut(2)
    );
  RPNC_stack_Mcount_stack_ptr_lut_3_Q : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(3),
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_control_state_FSM_FFd4_118,
      O => RPNC_stack_Mcount_stack_ptr_lut(3)
    );
  RPNC_stack_Mcount_stack_ptr_lut_4_Q : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(4),
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_control_state_FSM_FFd4_118,
      O => RPNC_stack_Mcount_stack_ptr_lut(4)
    );
  RPNC_stack_Mcount_stack_ptr_lut_5_Q : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(5),
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_control_state_FSM_FFd4_118,
      O => RPNC_stack_Mcount_stack_ptr_lut(5)
    );
  RPNC_stack_Mcount_stack_ptr_lut_6_Q : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(6),
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_control_state_FSM_FFd4_118,
      O => RPNC_stack_Mcount_stack_ptr_lut(6)
    );
  RPNC_stack_Mcount_stack_ptr_lut_7_Q : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => RPNC_stack_stack_ptr(7),
      I1 => RPNC_control_state_FSM_FFd1_109,
      I2 => RPNC_control_state_FSM_FFd4_118,
      O => RPNC_stack_Mcount_stack_ptr_lut(7)
    );
  RPNC_stack_n00211 : LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd1_109,
      I1 => InstrBufferInst_RPNCResetSignal_21,
      I2 => RPNC_control_state_FSM_FFd3_108,
      I3 => RPNC_control_state_FSM_FFd4_118,
      I4 => RPNC_control_state_FSM_FFd5_107,
      O => RPNC_stack_n0021
    );
  RPNC_stack_n0024_inv1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => RPNC_control_state_FSM_FFd1_109,
      I1 => RPNC_control_state_FSM_FFd3_108,
      I2 => RPNC_control_state_FSM_FFd4_118,
      I3 => RPNC_control_state_FSM_FFd5_107,
      O => RPNC_stack_n0024_inv
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut_0_Q : LUT6
    generic map(
      INIT => X"5515555555D55555"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(0),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(0)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut_1_Q : LUT6
    generic map(
      INIT => X"5515555555D55555"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(1),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(1)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut_2_Q : LUT6
    generic map(
      INIT => X"5515555555D55555"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(2),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(2)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut_3_Q : LUT6
    generic map(
      INIT => X"5515555555D55555"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(3),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(3)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut_4_Q : LUT6
    generic map(
      INIT => X"5515555555D55555"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(4)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut_5_Q : LUT6
    generic map(
      INIT => X"5515555555D55555"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(5),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(5)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut_6_Q : LUT6
    generic map(
      INIT => X"5515555555D55555"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(6),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(6)
    );
  InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut_7_Q : LUT6
    generic map(
      INIT => X"5515555555D55555"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_binByteCount(7),
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      O => InstrBufferInst_UARTHandlerInst_up_Mcount_binByteCount_lut(7)
    );
  InstrBufferInst_UARTHandlerInst_up_dataNibble_4_2 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFF5FF15"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I5 => InstrBufferInst_UARTHandlerInst_up_dataNibble(4),
      O => InstrBufferInst_UARTHandlerInst_up_dataNibble(0)
    );
  InstrBufferInst_UARTHandlerInst_up_dataNibble_2_Q : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF15"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I5 => N39,
      O => InstrBufferInst_UARTHandlerInst_up_dataNibble(2)
    );
  InstrBufferInst_Mmux_currentReadAddr_7_regWriteData_7_mux_29_OUT42 : LUT6
    generic map(
      INIT => X"BEEEEEEE14444444"
    )
    port map (
      I0 => InstrBufferInst_regWriteEnable_GND_19_o_AND_129_o,
      I1 => InstrBufferInst_currentReadAddr(3),
      I2 => InstrBufferInst_currentReadAddr(2),
      I3 => InstrBufferInst_currentReadAddr(0),
      I4 => InstrBufferInst_currentReadAddr(1),
      I5 => InstrBufferInst_UARTHandlerInst_up_intWrData(3),
      O => InstrBufferInst_currentReadAddr_7_regWriteData_7_mux_29_OUT_3_Q
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o11_1 : LUT6
    generic map(
      INIT => X"00000000808080C0"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange1_702,
      I4 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange2_703,
      I5 => N61,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o11_833
    );
  InstrBufferInst_UARTHandlerInst_up_n0369_inv1_rstpot : LUT5
    generic map(
      INIT => X"00808080"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I4 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      O => InstrBufferInst_UARTHandlerInst_up_n0369_inv1_rstpot_834
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_0_dpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_n0369_inv1_rstpot_834,
      I1 => InstrBufferInst_UARTHandlerInst_up_dataNibble(0),
      I2 => InstrBufferInst_UARTHandlerInst_up_dataParam(0),
      O => InstrBufferInst_UARTHandlerInst_up_dataParam_0_dpot_835
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_1_dpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_n0369_inv1_rstpot_834,
      I1 => InstrBufferInst_UARTHandlerInst_up_dataNibble(1),
      I2 => InstrBufferInst_UARTHandlerInst_up_dataParam(1),
      O => InstrBufferInst_UARTHandlerInst_up_dataParam_1_dpot_836
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_2_dpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_n0369_inv1_rstpot_834,
      I1 => InstrBufferInst_UARTHandlerInst_up_dataNibble(2),
      I2 => InstrBufferInst_UARTHandlerInst_up_dataParam(2),
      O => InstrBufferInst_UARTHandlerInst_up_dataParam_2_dpot_837
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_3_dpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_n0369_inv1_rstpot_834,
      I1 => InstrBufferInst_UARTHandlerInst_up_dataNibble(3),
      I2 => InstrBufferInst_UARTHandlerInst_up_dataParam(3),
      O => InstrBufferInst_UARTHandlerInst_up_dataParam_3_dpot_838
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_4_dpot : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(4),
      I1 => InstrBufferInst_UARTHandlerInst_up_n0369_inv1_rstpot_834,
      I2 => InstrBufferInst_UARTHandlerInst_up_dataParam_7_GND_53_o_mux_60_OUT_4_Q,
      O => InstrBufferInst_UARTHandlerInst_up_dataParam_4_dpot_839
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_5_dpot : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(5),
      I1 => InstrBufferInst_UARTHandlerInst_up_n0369_inv1_rstpot_834,
      I2 => InstrBufferInst_UARTHandlerInst_up_dataParam_7_GND_53_o_mux_60_OUT_5_Q,
      O => InstrBufferInst_UARTHandlerInst_up_dataParam_5_dpot_840
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_6_dpot : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(6),
      I1 => InstrBufferInst_UARTHandlerInst_up_n0369_inv1_rstpot_834,
      I2 => InstrBufferInst_UARTHandlerInst_up_dataParam_7_GND_53_o_mux_60_OUT_6_Q,
      O => InstrBufferInst_UARTHandlerInst_up_dataParam_6_dpot_841
    );
  InstrBufferInst_UARTHandlerInst_up_dataParam_7_dpot : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_dataParam(7),
      I1 => InstrBufferInst_UARTHandlerInst_up_n0369_inv1_rstpot_834,
      I2 => InstrBufferInst_UARTHandlerInst_up_dataParam_7_GND_53_o_mux_60_OUT_7_Q,
      O => InstrBufferInst_UARTHandlerInst_up_dataParam_7_dpot_842
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_1 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_In,
      Q => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_1_843
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o11_2 : LUT6
    generic map(
      INIT => X"00000000808080C0"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange1_702,
      I4 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange2_703,
      I5 => N61,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_3_dataInHexRange_AND_64_o111
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxData_3_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(3),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_rxData_3_1_845
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxData_2_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(2),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_rxData_2_1_846
    );
  InstrBufferInst_UARTHandlerInst_ut_ur_rxData_4_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => InstrBufferInst_UARTHandlerInst_ut_ur_rxBusy_ce1_AND_30_o_631,
      CLR => reset_IBUF_1,
      D => InstrBufferInst_UARTHandlerInst_ut_ur_dataBuf(4),
      Q => InstrBufferInst_UARTHandlerInst_ut_ur_rxData_4_1_847
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_0
    );
  InstrBufferInst_Mcount_remainingInstructions_lut_7_INV_0 : INV
    port map (
      I => InstrBufferInst_remainingInstructions(7),
      O => InstrBufferInst_Mcount_remainingInstructions_lut(7)
    );
  InstrBufferInst_Mcount_remainingInstructions_lut_6_INV_0 : INV
    port map (
      I => InstrBufferInst_remainingInstructions(6),
      O => InstrBufferInst_Mcount_remainingInstructions_lut(6)
    );
  InstrBufferInst_Mcount_remainingInstructions_lut_5_INV_0 : INV
    port map (
      I => InstrBufferInst_remainingInstructions(5),
      O => InstrBufferInst_Mcount_remainingInstructions_lut(5)
    );
  InstrBufferInst_Mcount_remainingInstructions_lut_4_INV_0 : INV
    port map (
      I => InstrBufferInst_remainingInstructions(4),
      O => InstrBufferInst_Mcount_remainingInstructions_lut(4)
    );
  InstrBufferInst_Mcount_remainingInstructions_lut_3_INV_0 : INV
    port map (
      I => InstrBufferInst_remainingInstructions(3),
      O => InstrBufferInst_Mcount_remainingInstructions_lut(3)
    );
  InstrBufferInst_Mcount_remainingInstructions_lut_2_INV_0 : INV
    port map (
      I => InstrBufferInst_remainingInstructions(2),
      O => InstrBufferInst_Mcount_remainingInstructions_lut(2)
    );
  InstrBufferInst_Mcount_remainingInstructions_lut_1_INV_0 : INV
    port map (
      I => InstrBufferInst_remainingInstructions(1),
      O => InstrBufferInst_Mcount_remainingInstructions_lut(1)
    );
  InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_lut_0_INV_0 : INV
    port map (
      I => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      O => InstrBufferInst_UARTHandlerInst_up_Madd_iIntAddress_15_GND_53_o_add_85_OUT_lut_0_Q
    );
  RPNC_stack_store_n0011_0_1_INV_0 : INV
    port map (
      I => RPNC_stack_stack_ptr(0),
      O => RPNC_stack_store_n0011(0)
    );
  InstrBufferInst_UARTHandlerInst_up_rxData_1_INV_112_o1_INV_0 : INV
    port map (
      I => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      O => InstrBufferInst_UARTHandlerInst_up_rxData_1_INV_112_o
    );
  InstrBufferInst_UARTHandlerInst_up_n0406_inv1_cepot_INV_0 : INV
    port map (
      I => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2_525,
      O => InstrBufferInst_UARTHandlerInst_up_n0406_inv1_cepot
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In : MUXF7
    port map (
      I0 => N175,
      I1 => N176,
      S => InstrBufferInst_UARTHandlerInst_up_binLastByte,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In_427
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In_F : LUT6
    generic map(
      INIT => X"AAB3AAAAAAA2AAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547,
      I3 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      O => N175
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_In_G : LUT6
    generic map(
      INIT => X"2B23AAAA2A22AAAA"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I3 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547,
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I5 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      O => N176
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT14 : MUXF7
    port map (
      I0 => N177,
      I1 => N178,
      S => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      O => InstrBufferInst_UARTHandlerInst_up_addrParam_15_GND_53_o_mux_68_OUT_7_Q
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT14_F : LUT5
    generic map(
      INIT => X"EEEA222A"
    )
    port map (
      I0 => N63,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I2 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange1_702,
      I3 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange2_703,
      I4 => N65,
      O => N177
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_addrParam_15_GND_53_o_mux_68_OUT14_G : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_3_PWR_36_o_equal_65_o,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      I3 => N63,
      O => N178
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_newTxData_Mux_107_o11 : MUXF7
    port map (
      I0 => N179,
      I1 => N180,
      S => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd1_526,
      O => InstrBufferInst_UARTHandlerInst_up_txSm_2_newTxData_Mux_107_o
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_newTxData_Mux_107_o11_F : LUT6
    generic map(
      INIT => X"5540FFEA55405540"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd3_524,
      I1 => InstrBufferInst_UARTHandlerInst_up_n0406_inv211_681,
      I2 => InstrBufferInst_UARTHandlerInst_up_binLastByte,
      I3 => InstrBufferInst_UARTHandlerInst_up_n0406_inv21,
      I4 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I5 => InstrBufferInst_UARTHandlerInst_up_sTxBusy_570,
      O => N179
    );
  InstrBufferInst_UARTHandlerInst_up_Mmux_txSm_2_newTxData_Mux_107_o11_G : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txSm_FSM_FFd2_525,
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I2 => InstrBufferInst_UARTHandlerInst_up_sTxBusy_570,
      O => N180
    );
  InstrBufferInst_UARTHandlerInst_up_txData_7_dpot : MUXF7
    port map (
      I0 => N181,
      I1 => N182,
      S => N97,
      O => InstrBufferInst_UARTHandlerInst_up_txData_7_dpot_791
    );
  InstrBufferInst_UARTHandlerInst_up_txData_7_dpot_F : LUT5
    generic map(
      INIT => X"FEEE0444"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_n0406_inv21,
      I1 => InstrBufferInst_UARTHandlerInst_up_txData(7),
      I2 => InstrBufferInst_UARTHandlerInst_up_n0406_inv211_681,
      I3 => InstrBufferInst_UARTHandlerInst_up_binLastByte,
      I4 => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_7_Q,
      O => N181
    );
  InstrBufferInst_UARTHandlerInst_up_txData_7_dpot_G : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_txData(7),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ut_iTxBusy_311,
      I2 => InstrBufferInst_UARTHandlerInst_up_sTxBusy_570,
      I3 => InstrBufferInst_UARTHandlerInst_up_txSm_2_txData_7_wide_mux_106_OUT_7_Q,
      O => N182
    );
  InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o1 : MUXF7
    port map (
      I0 => N183,
      I1 => N184,
      S => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      O => InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o
    );
  InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o1_F : LUT6
    generic map(
      INIT => X"0800080008000808"
    )
    port map (
      I0 => N148,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I4 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange2_703,
      I5 => InstrBufferInst_UARTHandlerInst_up_dataInHexRange1_702,
      O => N183
    );
  InstrBufferInst_UARTHandlerInst_up_iWriteReq_PWR_36_o_MUX_138_o1_G : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_newRxData_312,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_425,
      I2 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547,
      O => N184
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In4 : MUXF7
    port map (
      I0 => N185,
      I1 => N186,
      S => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd4_426,
      O => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In4_699
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In4_F : LUT6
    generic map(
      INIT => X"2222222220000020"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In1_698,
      I1 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd2_424,
      I2 => InstrBufferInst_UARTHandlerInst_up_N57,
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I5 => InstrBufferInst_UARTHandlerInst_up_rxData_7_GND_53_o_equal_1_o,
      O => N185
    );
  InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In4_G : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd3_In1_698,
      I1 => InstrBufferInst_UARTHandlerInst_up_binWriteOp_547,
      I2 => InstrBufferInst_UARTHandlerInst_up_mainSm_FSM_FFd1_423,
      O => N186
    );
  InstrBufferInst_UARTHandlerInst_up_dataInHexRange3 : MUXF7
    port map (
      I0 => N187,
      I1 => N188,
      S => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(4),
      O => InstrBufferInst_UARTHandlerInst_up_dataInHexRange
    );
  InstrBufferInst_UARTHandlerInst_up_dataInHexRange3_F : LUT6
    generic map(
      INIT => X"0002020202020200"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(0),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      O => N187
    );
  InstrBufferInst_UARTHandlerInst_up_dataInHexRange3_G : LUT6
    generic map(
      INIT => X"0000000404040404"
    )
    port map (
      I0 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(7),
      I1 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(5),
      I2 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(6),
      I3 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(2),
      I4 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(1),
      I5 => InstrBufferInst_UARTHandlerInst_ut_ur_rxData(3),
      O => N188
    );
  InstrBufferInst_RPNDataMemInst : RPNDataMem
    port map (
      clka => clk_BUFGP_0,
      clkb => clk_BUFGP_0,
      wea(0) => InstrBufferInst_dataMemWriteEn,
      addra(9) => InstrBufferInst_UARTHandlerInst_up_iIntAddress(9),
      addra(8) => InstrBufferInst_UARTHandlerInst_up_iIntAddress(8),
      addra(7) => InstrBufferInst_UARTHandlerInst_up_iIntAddress(7),
      addra(6) => InstrBufferInst_UARTHandlerInst_up_iIntAddress(6),
      addra(5) => InstrBufferInst_UARTHandlerInst_up_iIntAddress(5),
      addra(4) => InstrBufferInst_UARTHandlerInst_up_iIntAddress(4),
      addra(3) => InstrBufferInst_UARTHandlerInst_up_iIntAddress(3),
      addra(2) => InstrBufferInst_UARTHandlerInst_up_iIntAddress(2),
      addra(1) => InstrBufferInst_UARTHandlerInst_up_iIntAddress(1),
      addra(0) => InstrBufferInst_UARTHandlerInst_up_iIntAddress(0),
      addrb(8) => InstrBufferInst_dataMemReadAddr(8),
      addrb(7) => InstrBufferInst_dataMemReadAddr(7),
      addrb(6) => InstrBufferInst_dataMemReadAddr(6),
      addrb(5) => InstrBufferInst_dataMemReadAddr(5),
      addrb(4) => InstrBufferInst_dataMemReadAddr(4),
      addrb(3) => InstrBufferInst_dataMemReadAddr(3),
      addrb(2) => InstrBufferInst_dataMemReadAddr(2),
      addrb(1) => InstrBufferInst_dataMemReadAddr(1),
      addrb(0) => InstrBufferInst_dataMemReadAddr(0),
      doutb(15) => instrDataSignal(15),
      doutb(14) => instrDataSignal(14),
      doutb(13) => instrDataSignal(13),
      doutb(12) => instrDataSignal(12),
      doutb(11) => instrDataSignal(11),
      doutb(10) => instrDataSignal(10),
      doutb(9) => instrDataSignal(9),
      doutb(8) => instrDataSignal(8),
      doutb(7) => instrDataSignal(7),
      doutb(6) => instrDataSignal(6),
      doutb(5) => instrDataSignal(5),
      doutb(4) => instrDataSignal(4),
      doutb(3) => instrDataSignal(3),
      doutb(2) => instrDataSignal(2),
      doutb(1) => instrDataSignal(1),
      doutb(0) => instrDataSignal(0),
      dina(7) => InstrBufferInst_UARTHandlerInst_up_intWrData(7),
      dina(6) => InstrBufferInst_UARTHandlerInst_up_intWrData(6),
      dina(5) => InstrBufferInst_UARTHandlerInst_up_intWrData(5),
      dina(4) => InstrBufferInst_UARTHandlerInst_up_intWrData(4),
      dina(3) => InstrBufferInst_UARTHandlerInst_up_intWrData(3),
      dina(2) => InstrBufferInst_UARTHandlerInst_up_intWrData(2),
      dina(1) => InstrBufferInst_UARTHandlerInst_up_intWrData(1),
      dina(0) => InstrBufferInst_UARTHandlerInst_up_intWrData(0)
    );

end Structure;

-- synthesis translate_on
