set_global_assignment -entity "test_uart" -library "lib_test_uart" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "test_uart" -library "lib_test_uart" -name IP_TOOL_VERSION "17.1"
set_global_assignment -entity "test_uart" -library "lib_test_uart" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_test_uart" -name SPD_FILE [file join $::quartus(sip_path) "../test_uart.spd"]
set_global_assignment -library "lib_test_uart" -name MISC_FILE [file join $::quartus(sip_path) "../../test_uart.qsys"]

set_global_assignment -library "lib_test_uart" -name MISC_FILE [file join $::quartus(sip_path) "test_uart.vhd"]
set_global_assignment -library "lib_test_uart" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_controller.v"]
set_global_assignment -library "lib_test_uart" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_synchronizer.v"]
set_global_assignment -library "lib_test_uart" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_controller.sdc"]
