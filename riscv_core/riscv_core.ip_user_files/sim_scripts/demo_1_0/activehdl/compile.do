vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/noc_lib
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap noc_lib activehdl/noc_lib
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work noc_lib -93 \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_router/router_config.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/AXI_network_adapter_config.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_router/component_declarations.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/AXI_master_network_adapter.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/AXI_slave_network_adapter.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/AXI_to_noc_FIFO_buffer.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_router/FIFO_buffer_module.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/MNA_req_AXI_handshake_controller.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/MNA_req_buffer_controller.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/MNA_req_flow.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/MNA_resp_AXI_handshake_controller.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/MNA_resp_buffer_controller.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/MNA_resp_flow.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/SNA_req_AXI_handshake_controller.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/SNA_req_buffer_controller.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/SNA_req_flow.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/SNA_resp_AXI_handshake_controller.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/SNA_resp_buffer_controller.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/SNA_resp_flow.vhd" \

vcom -work noc_lib -93 \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_router/router_functions.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_router/arbiter.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_router/buffer_decoder_module.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_router/crossbar.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_router/crossbar_mux_module.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/noc_injector.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_mesh/noc_mesh_2x2.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/noc_receiver.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_router/noc_router.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/AXI_network_adapter/noc_to_AXI_FIFO_buffer.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_router/router_branch.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_router/router_interface_module.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/noc_mesh/demo_1.vhd" \
"../../../../riscv_core.gen/sources_1/ip/demo_1_0/sim/demo_1_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

