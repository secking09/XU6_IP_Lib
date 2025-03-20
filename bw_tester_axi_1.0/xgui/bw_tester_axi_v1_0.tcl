# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_M_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_START_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXIS_TDATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_M_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_START_COUNT { PARAM_VALUE.C_M_START_COUNT } {
	# Procedure called to update C_M_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_START_COUNT { PARAM_VALUE.C_M_START_COUNT } {
	# Procedure called to validate C_M_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_mm2s_axi_ADDR_WIDTH { PARAM_VALUE.C_mm2s_axi_ADDR_WIDTH } {
	# Procedure called to update C_mm2s_axi_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_mm2s_axi_ADDR_WIDTH { PARAM_VALUE.C_mm2s_axi_ADDR_WIDTH } {
	# Procedure called to validate C_mm2s_axi_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_mm2s_axi_ARUSER_WIDTH { PARAM_VALUE.C_mm2s_axi_ARUSER_WIDTH } {
	# Procedure called to update C_mm2s_axi_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_mm2s_axi_ARUSER_WIDTH { PARAM_VALUE.C_mm2s_axi_ARUSER_WIDTH } {
	# Procedure called to validate C_mm2s_axi_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_mm2s_axi_AWUSER_WIDTH { PARAM_VALUE.C_mm2s_axi_AWUSER_WIDTH } {
	# Procedure called to update C_mm2s_axi_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_mm2s_axi_AWUSER_WIDTH { PARAM_VALUE.C_mm2s_axi_AWUSER_WIDTH } {
	# Procedure called to validate C_mm2s_axi_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_mm2s_axi_BUSER_WIDTH { PARAM_VALUE.C_mm2s_axi_BUSER_WIDTH } {
	# Procedure called to update C_mm2s_axi_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_mm2s_axi_BUSER_WIDTH { PARAM_VALUE.C_mm2s_axi_BUSER_WIDTH } {
	# Procedure called to validate C_mm2s_axi_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_mm2s_axi_DATA_WIDTH { PARAM_VALUE.C_mm2s_axi_DATA_WIDTH } {
	# Procedure called to update C_mm2s_axi_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_mm2s_axi_DATA_WIDTH { PARAM_VALUE.C_mm2s_axi_DATA_WIDTH } {
	# Procedure called to validate C_mm2s_axi_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_mm2s_axi_ID_WIDTH { PARAM_VALUE.C_mm2s_axi_ID_WIDTH } {
	# Procedure called to update C_mm2s_axi_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_mm2s_axi_ID_WIDTH { PARAM_VALUE.C_mm2s_axi_ID_WIDTH } {
	# Procedure called to validate C_mm2s_axi_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_mm2s_axi_RUSER_WIDTH { PARAM_VALUE.C_mm2s_axi_RUSER_WIDTH } {
	# Procedure called to update C_mm2s_axi_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_mm2s_axi_RUSER_WIDTH { PARAM_VALUE.C_mm2s_axi_RUSER_WIDTH } {
	# Procedure called to validate C_mm2s_axi_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_mm2s_axi_WUSER_WIDTH { PARAM_VALUE.C_mm2s_axi_WUSER_WIDTH } {
	# Procedure called to update C_mm2s_axi_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_mm2s_axi_WUSER_WIDTH { PARAM_VALUE.C_mm2s_axi_WUSER_WIDTH } {
	# Procedure called to validate C_mm2s_axi_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s2mm_axi_ADDR_WIDTH { PARAM_VALUE.C_s2mm_axi_ADDR_WIDTH } {
	# Procedure called to update C_s2mm_axi_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s2mm_axi_ADDR_WIDTH { PARAM_VALUE.C_s2mm_axi_ADDR_WIDTH } {
	# Procedure called to validate C_s2mm_axi_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s2mm_axi_ARUSER_WIDTH { PARAM_VALUE.C_s2mm_axi_ARUSER_WIDTH } {
	# Procedure called to update C_s2mm_axi_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s2mm_axi_ARUSER_WIDTH { PARAM_VALUE.C_s2mm_axi_ARUSER_WIDTH } {
	# Procedure called to validate C_s2mm_axi_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s2mm_axi_AWUSER_WIDTH { PARAM_VALUE.C_s2mm_axi_AWUSER_WIDTH } {
	# Procedure called to update C_s2mm_axi_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s2mm_axi_AWUSER_WIDTH { PARAM_VALUE.C_s2mm_axi_AWUSER_WIDTH } {
	# Procedure called to validate C_s2mm_axi_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s2mm_axi_BUSER_WIDTH { PARAM_VALUE.C_s2mm_axi_BUSER_WIDTH } {
	# Procedure called to update C_s2mm_axi_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s2mm_axi_BUSER_WIDTH { PARAM_VALUE.C_s2mm_axi_BUSER_WIDTH } {
	# Procedure called to validate C_s2mm_axi_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s2mm_axi_DATA_WIDTH { PARAM_VALUE.C_s2mm_axi_DATA_WIDTH } {
	# Procedure called to update C_s2mm_axi_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s2mm_axi_DATA_WIDTH { PARAM_VALUE.C_s2mm_axi_DATA_WIDTH } {
	# Procedure called to validate C_s2mm_axi_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s2mm_axi_ID_WIDTH { PARAM_VALUE.C_s2mm_axi_ID_WIDTH } {
	# Procedure called to update C_s2mm_axi_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s2mm_axi_ID_WIDTH { PARAM_VALUE.C_s2mm_axi_ID_WIDTH } {
	# Procedure called to validate C_s2mm_axi_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s2mm_axi_RUSER_WIDTH { PARAM_VALUE.C_s2mm_axi_RUSER_WIDTH } {
	# Procedure called to update C_s2mm_axi_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s2mm_axi_RUSER_WIDTH { PARAM_VALUE.C_s2mm_axi_RUSER_WIDTH } {
	# Procedure called to validate C_s2mm_axi_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s2mm_axi_WUSER_WIDTH { PARAM_VALUE.C_s2mm_axi_WUSER_WIDTH } {
	# Procedure called to update C_s2mm_axi_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s2mm_axi_WUSER_WIDTH { PARAM_VALUE.C_s2mm_axi_WUSER_WIDTH } {
	# Procedure called to validate C_s2mm_axi_WUSER_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_START_COUNT { MODELPARAM_VALUE.C_M_START_COUNT PARAM_VALUE.C_M_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_START_COUNT}] ${MODELPARAM_VALUE.C_M_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TDATA_WIDTH PARAM_VALUE.C_S_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s2mm_axi_ID_WIDTH { MODELPARAM_VALUE.C_s2mm_axi_ID_WIDTH PARAM_VALUE.C_s2mm_axi_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s2mm_axi_ID_WIDTH}] ${MODELPARAM_VALUE.C_s2mm_axi_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s2mm_axi_DATA_WIDTH { MODELPARAM_VALUE.C_s2mm_axi_DATA_WIDTH PARAM_VALUE.C_s2mm_axi_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s2mm_axi_DATA_WIDTH}] ${MODELPARAM_VALUE.C_s2mm_axi_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s2mm_axi_ADDR_WIDTH { MODELPARAM_VALUE.C_s2mm_axi_ADDR_WIDTH PARAM_VALUE.C_s2mm_axi_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s2mm_axi_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_s2mm_axi_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s2mm_axi_AWUSER_WIDTH { MODELPARAM_VALUE.C_s2mm_axi_AWUSER_WIDTH PARAM_VALUE.C_s2mm_axi_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s2mm_axi_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_s2mm_axi_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s2mm_axi_ARUSER_WIDTH { MODELPARAM_VALUE.C_s2mm_axi_ARUSER_WIDTH PARAM_VALUE.C_s2mm_axi_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s2mm_axi_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_s2mm_axi_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s2mm_axi_WUSER_WIDTH { MODELPARAM_VALUE.C_s2mm_axi_WUSER_WIDTH PARAM_VALUE.C_s2mm_axi_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s2mm_axi_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_s2mm_axi_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s2mm_axi_RUSER_WIDTH { MODELPARAM_VALUE.C_s2mm_axi_RUSER_WIDTH PARAM_VALUE.C_s2mm_axi_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s2mm_axi_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_s2mm_axi_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s2mm_axi_BUSER_WIDTH { MODELPARAM_VALUE.C_s2mm_axi_BUSER_WIDTH PARAM_VALUE.C_s2mm_axi_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s2mm_axi_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_s2mm_axi_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_mm2s_axi_ID_WIDTH { MODELPARAM_VALUE.C_mm2s_axi_ID_WIDTH PARAM_VALUE.C_mm2s_axi_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_mm2s_axi_ID_WIDTH}] ${MODELPARAM_VALUE.C_mm2s_axi_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_mm2s_axi_DATA_WIDTH { MODELPARAM_VALUE.C_mm2s_axi_DATA_WIDTH PARAM_VALUE.C_mm2s_axi_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_mm2s_axi_DATA_WIDTH}] ${MODELPARAM_VALUE.C_mm2s_axi_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_mm2s_axi_ADDR_WIDTH { MODELPARAM_VALUE.C_mm2s_axi_ADDR_WIDTH PARAM_VALUE.C_mm2s_axi_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_mm2s_axi_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_mm2s_axi_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_mm2s_axi_AWUSER_WIDTH { MODELPARAM_VALUE.C_mm2s_axi_AWUSER_WIDTH PARAM_VALUE.C_mm2s_axi_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_mm2s_axi_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_mm2s_axi_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_mm2s_axi_ARUSER_WIDTH { MODELPARAM_VALUE.C_mm2s_axi_ARUSER_WIDTH PARAM_VALUE.C_mm2s_axi_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_mm2s_axi_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_mm2s_axi_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_mm2s_axi_WUSER_WIDTH { MODELPARAM_VALUE.C_mm2s_axi_WUSER_WIDTH PARAM_VALUE.C_mm2s_axi_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_mm2s_axi_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_mm2s_axi_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_mm2s_axi_RUSER_WIDTH { MODELPARAM_VALUE.C_mm2s_axi_RUSER_WIDTH PARAM_VALUE.C_mm2s_axi_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_mm2s_axi_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_mm2s_axi_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_mm2s_axi_BUSER_WIDTH { MODELPARAM_VALUE.C_mm2s_axi_BUSER_WIDTH PARAM_VALUE.C_mm2s_axi_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_mm2s_axi_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_mm2s_axi_BUSER_WIDTH}
}

