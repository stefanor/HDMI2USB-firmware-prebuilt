 ## serial:0.tx
set_property LOC J18 [get_ports serial_tx]
set_property IOSTANDARD LVCMOS33 [get_ports serial_tx]
 ## serial:0.rx
set_property LOC J17 [get_ports serial_rx]
set_property IOSTANDARD LVCMOS33 [get_ports serial_rx]
 ## clk12:0
set_property LOC L17 [get_ports clk12]
set_property IOSTANDARD LVCMOS33 [get_ports clk12]
 ## user_btn:0
set_property LOC A18 [get_ports user_btn0]
set_property IOSTANDARD LVCMOS33 [get_ports user_btn0]
 ## spiflash_1x:0.cs_n
set_property LOC K19 [get_ports spiflash_1x_cs_n]
set_property IOSTANDARD LVCMOS33 [get_ports spiflash_1x_cs_n]
 ## spiflash_1x:0.mosi
set_property LOC D18 [get_ports spiflash_1x_mosi]
set_property IOSTANDARD LVCMOS33 [get_ports spiflash_1x_mosi]
 ## spiflash_1x:0.miso
set_property LOC D19 [get_ports spiflash_1x_miso]
set_property IOSTANDARD LVCMOS33 [get_ports spiflash_1x_miso]
 ## spiflash_1x:0.wp
set_property LOC G18 [get_ports spiflash_1x_wp]
set_property IOSTANDARD LVCMOS33 [get_ports spiflash_1x_wp]
 ## spiflash_1x:0.hold
set_property LOC F18 [get_ports spiflash_1x_hold]
set_property IOSTANDARD LVCMOS33 [get_ports spiflash_1x_hold]

set_property INTERNAL_VREF 0.750 [get_iobanks 34]

create_clock -name sys_clk -period 10.0 [get_nets sys_clk]

create_clock -name clk12 -period 83.333 [get_nets clk12]

set_false_path -quiet -to [get_nets -quiet -filter {mr_ff == TRUE}]

set_false_path -quiet -to [get_pins -quiet -filter {REF_PIN_NAME == PRE} -of [get_cells -quiet -filter {ars_ff1 == TRUE || ars_ff2 == TRUE}]]

set_max_delay 2 -quiet -from [get_pins -quiet -filter {REF_PIN_NAME == Q} -of [get_cells -quiet -filter {ars_ff1 == TRUE}]] -to [get_pins -quiet -filter {REF_PIN_NAME == D} -of [get_cells -quiet -filter {ars_ff2 == TRUE}]]