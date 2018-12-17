# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Vivado/e200/e200.cache/wt [current_project]
set_property parent.project_path D:/Vivado/e200/e200.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.4 [current_project]
set_property ip_output_repo d:/Vivado/e200/e200.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog {
  D:/Vivado/e200/rtl/core/e203_defines.v
  D:/Vivado/e200/rtl/core/config.v
  D:/Vivado/e200/rtl/perips/i2c_master_defines.v
}
set_property file_type "Verilog Header" [get_files D:/Vivado/e200/rtl/core/e203_defines.v]
set_property file_type "Verilog Header" [get_files D:/Vivado/e200/rtl/core/config.v]
set_property file_type "Verilog Header" [get_files D:/Vivado/e200/rtl/perips/i2c_master_defines.v]
read_verilog -library xil_defaultlib {
  D:/Vivado/e200/e200.srcs/sources_1/new/clkdivider.v
  D:/Vivado/e200/rtl/core/e203_biu.v
  D:/Vivado/e200/rtl/core/e203_clk_ctrl.v
  D:/Vivado/e200/rtl/core/e203_clkgate.v
  D:/Vivado/e200/rtl/core/e203_core.v
  D:/Vivado/e200/rtl/core/e203_cpu.v
  D:/Vivado/e200/rtl/core/e203_cpu_top.v
  D:/Vivado/e200/rtl/core/e203_dtcm_ctrl.v
  D:/Vivado/e200/rtl/core/e203_dtcm_ram.v
  D:/Vivado/e200/rtl/core/e203_extend_csr.v
  D:/Vivado/e200/rtl/core/e203_exu.v
  D:/Vivado/e200/rtl/core/e203_exu_alu.v
  D:/Vivado/e200/rtl/core/e203_exu_alu_bjp.v
  D:/Vivado/e200/rtl/core/e203_exu_alu_csrctrl.v
  D:/Vivado/e200/rtl/core/e203_exu_alu_dpath.v
  D:/Vivado/e200/rtl/core/e203_exu_alu_lsuagu.v
  D:/Vivado/e200/rtl/core/e203_exu_alu_muldiv.v
  D:/Vivado/e200/rtl/core/e203_exu_alu_rglr.v
  D:/Vivado/e200/rtl/core/e203_exu_branchslv.v
  D:/Vivado/e200/rtl/core/e203_exu_commit.v
  D:/Vivado/e200/rtl/core/e203_exu_csr.v
  D:/Vivado/e200/rtl/core/e203_exu_decode.v
  D:/Vivado/e200/rtl/core/e203_exu_disp.v
  D:/Vivado/e200/rtl/core/e203_exu_excp.v
  D:/Vivado/e200/rtl/core/e203_exu_longpwbck.v
  D:/Vivado/e200/rtl/core/e203_exu_oitf.v
  D:/Vivado/e200/rtl/core/e203_exu_regfile.v
  D:/Vivado/e200/rtl/core/e203_exu_wbck.v
  D:/Vivado/e200/rtl/core/e203_ifu.v
  D:/Vivado/e200/rtl/core/e203_ifu_ifetch.v
  D:/Vivado/e200/rtl/core/e203_ifu_ift2icb.v
  D:/Vivado/e200/rtl/core/e203_ifu_litebpu.v
  D:/Vivado/e200/rtl/core/e203_ifu_minidec.v
  D:/Vivado/e200/rtl/core/e203_irq_sync.v
  D:/Vivado/e200/rtl/core/e203_itcm_ctrl.v
  D:/Vivado/e200/rtl/core/e203_itcm_ram.v
  D:/Vivado/e200/rtl/core/e203_lsu.v
  D:/Vivado/e200/rtl/core/e203_lsu_ctrl.v
  D:/Vivado/e200/rtl/core/e203_reset_ctrl.v
  D:/Vivado/e200/rtl/soc/e203_soc_top.v
  D:/Vivado/e200/rtl/core/e203_srams.v
  D:/Vivado/e200/rtl/subsys/e203_subsys_clint.v
  D:/Vivado/e200/rtl/subsys/e203_subsys_gfcm.v
  D:/Vivado/e200/rtl/subsys/e203_subsys_hclkgen.v
  D:/Vivado/e200/rtl/subsys/e203_subsys_hclkgen_rstsync.v
  D:/Vivado/e200/rtl/subsys/e203_subsys_main.v
  D:/Vivado/e200/rtl/subsys/e203_subsys_mems.v
  D:/Vivado/e200/rtl/subsys/e203_subsys_perips.v
  D:/Vivado/e200/rtl/subsys/e203_subsys_plic.v
  D:/Vivado/e200/rtl/subsys/e203_subsys_pll.v
  D:/Vivado/e200/rtl/subsys/e203_subsys_pllclkdiv.v
  D:/Vivado/e200/rtl/subsys/e203_subsys_top.v
  D:/Vivado/e200/rtl/perips/i2c_master_bit_ctrl.v
  D:/Vivado/e200/rtl/perips/i2c_master_byte_ctrl.v
  D:/Vivado/e200/rtl/perips/i2c_master_top.v
  D:/Vivado/e200/rtl/general/sirv_1cyc_sram_ctrl.v
  D:/Vivado/e200/rtl/perips/sirv_AsyncResetReg.v
  D:/Vivado/e200/rtl/perips/sirv_AsyncResetRegVec.v
  D:/Vivado/e200/rtl/perips/sirv_AsyncResetRegVec_1.v
  D:/Vivado/e200/rtl/perips/sirv_AsyncResetRegVec_129.v
  D:/Vivado/e200/rtl/perips/sirv_AsyncResetRegVec_36.v
  D:/Vivado/e200/rtl/perips/sirv_AsyncResetRegVec_67.v
  D:/Vivado/e200/rtl/perips/sirv_DeglitchShiftRegister.v
  D:/Vivado/e200/rtl/perips/sirv_LevelGateway.v
  D:/Vivado/e200/rtl/perips/sirv_ResetCatchAndSync.v
  D:/Vivado/e200/rtl/perips/sirv_ResetCatchAndSync_2.v
  D:/Vivado/e200/rtl/perips/sirv_aon.v
  D:/Vivado/e200/rtl/perips/sirv_aon_lclkgen_regs.v
  D:/Vivado/e200/rtl/perips/sirv_aon_porrst.v
  D:/Vivado/e200/rtl/perips/sirv_aon_top.v
  D:/Vivado/e200/rtl/perips/sirv_aon_wrapper.v
  D:/Vivado/e200/rtl/perips/sirv_clint.v
  D:/Vivado/e200/rtl/perips/sirv_clint_top.v
  D:/Vivado/e200/rtl/debug/sirv_debug_csr.v
  D:/Vivado/e200/rtl/debug/sirv_debug_module.v
  D:/Vivado/e200/rtl/debug/sirv_debug_ram.v
  D:/Vivado/e200/rtl/debug/sirv_debug_rom.v
  D:/Vivado/e200/rtl/perips/sirv_expl_apb_slv.v
  D:/Vivado/e200/rtl/perips/sirv_expl_axi_slv.v
  D:/Vivado/e200/rtl/perips/sirv_flash_qspi.v
  D:/Vivado/e200/rtl/perips/sirv_flash_qspi_top.v
  D:/Vivado/e200/rtl/general/sirv_gnrl_bufs.v
  D:/Vivado/e200/rtl/general/sirv_gnrl_dffs.v
  D:/Vivado/e200/rtl/general/sirv_gnrl_icbs.v
  D:/Vivado/e200/rtl/general/sirv_gnrl_ram.v
  D:/Vivado/e200/rtl/perips/sirv_gpio.v
  D:/Vivado/e200/rtl/perips/sirv_gpio_top.v
  D:/Vivado/e200/rtl/perips/sirv_hclkgen_regs.v
  D:/Vivado/e200/rtl/fab/sirv_icb1to16_bus.v
  D:/Vivado/e200/rtl/fab/sirv_icb1to2_bus.v
  D:/Vivado/e200/rtl/fab/sirv_icb1to8_bus.v
  D:/Vivado/e200/rtl/debug/sirv_jtag_dtm.v
  D:/Vivado/e200/rtl/perips/sirv_jtaggpioport.v
  D:/Vivado/e200/rtl/mems/sirv_mrom.v
  D:/Vivado/e200/rtl/mems/sirv_mrom_top.v
  D:/Vivado/e200/rtl/perips/sirv_otp_top.v
  D:/Vivado/e200/rtl/perips/sirv_plic_man.v
  D:/Vivado/e200/rtl/perips/sirv_plic_top.v
  D:/Vivado/e200/rtl/perips/sirv_pmu.v
  D:/Vivado/e200/rtl/perips/sirv_pmu_core.v
  D:/Vivado/e200/rtl/perips/sirv_pwm16.v
  D:/Vivado/e200/rtl/perips/sirv_pwm16_core.v
  D:/Vivado/e200/rtl/perips/sirv_pwm16_top.v
  D:/Vivado/e200/rtl/perips/sirv_pwm8.v
  D:/Vivado/e200/rtl/perips/sirv_pwm8_core.v
  D:/Vivado/e200/rtl/perips/sirv_pwm8_top.v
  D:/Vivado/e200/rtl/perips/sirv_pwmgpioport.v
  D:/Vivado/e200/rtl/perips/sirv_qspi_1cs.v
  D:/Vivado/e200/rtl/perips/sirv_qspi_1cs_top.v
  D:/Vivado/e200/rtl/perips/sirv_qspi_4cs.v
  D:/Vivado/e200/rtl/perips/sirv_qspi_4cs_top.v
  D:/Vivado/e200/rtl/perips/sirv_qspi_arbiter.v
  D:/Vivado/e200/rtl/perips/sirv_qspi_fifo.v
  D:/Vivado/e200/rtl/perips/sirv_qspi_media.v
  D:/Vivado/e200/rtl/perips/sirv_qspi_media_1.v
  D:/Vivado/e200/rtl/perips/sirv_qspi_media_2.v
  D:/Vivado/e200/rtl/perips/sirv_qspi_physical.v
  D:/Vivado/e200/rtl/perips/sirv_qspi_physical_1.v
  D:/Vivado/e200/rtl/perips/sirv_qspi_physical_2.v
  D:/Vivado/e200/rtl/perips/sirv_queue.v
  D:/Vivado/e200/rtl/perips/sirv_queue_1.v
  D:/Vivado/e200/rtl/perips/sirv_repeater_6.v
  D:/Vivado/e200/rtl/perips/sirv_rtc.v
  D:/Vivado/e200/rtl/general/sirv_sim_ram.v
  D:/Vivado/e200/rtl/perips/sirv_spi_flashmap.v
  D:/Vivado/e200/rtl/perips/sirv_spigpioport.v
  D:/Vivado/e200/rtl/perips/sirv_spigpioport_1.v
  D:/Vivado/e200/rtl/perips/sirv_spigpioport_2.v
  D:/Vivado/e200/rtl/general/sirv_sram_icb_ctrl.v
  D:/Vivado/e200/rtl/perips/sirv_tl_repeater_5.v
  D:/Vivado/e200/rtl/perips/sirv_tlfragmenter_qspi_1.v
  D:/Vivado/e200/rtl/perips/sirv_tlwidthwidget_qspi.v
  D:/Vivado/e200/rtl/perips/sirv_uart.v
  D:/Vivado/e200/rtl/perips/sirv_uart_top.v
  D:/Vivado/e200/rtl/perips/sirv_uartgpioport.v
  D:/Vivado/e200/rtl/perips/sirv_uartrx.v
  D:/Vivado/e200/rtl/perips/sirv_uarttx.v
  D:/Vivado/e200/rtl/perips/sirv_wdog.v
  D:/Vivado/e200/rtl/system.v
}
read_ip -quiet d:/Vivado/e200/e200.srcs/sources_1/ip/mmcm/mmcm.xci
set_property used_in_implementation false [get_files -all d:/Vivado/e200/e200.srcs/sources_1/ip/mmcm/mmcm_board.xdc]
set_property used_in_implementation false [get_files -all d:/Vivado/e200/e200.srcs/sources_1/ip/mmcm/mmcm.xdc]
set_property used_in_implementation false [get_files -all d:/Vivado/e200/e200.srcs/sources_1/ip/mmcm/mmcm_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/Vivado/e200/e200.srcs/constrs_12051634/new/e200_zedboard.xdc
set_property used_in_implementation false [get_files D:/Vivado/e200/e200.srcs/constrs_12051634/new/e200_zedboard.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top system -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file system_utilization_synth.rpt -pb system_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]