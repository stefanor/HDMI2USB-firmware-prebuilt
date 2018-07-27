/* Machine-generated using Migen */
module top(
	input serial_rx,
	output reg serial_tx,
	input clk100,
	input cpu_reset,
	output ddram_clock_p,
	output ddram_clock_n,
	output reg spiflash4x_cs_n,
	output reg spiflash4x_clk,
	inout [3:0] spiflash4x_dq,
	output reg ddram_cke,
	output reg ddram_ras_n,
	output reg ddram_cas_n,
	output reg ddram_we_n,
	output reg [2:0] ddram_ba,
	output reg [12:0] ddram_a,
	inout [15:0] ddram_dq,
	output [1:0] ddram_dqs,
	output [1:0] ddram_dqs_n,
	output [1:0] ddram_dm,
	output reg ddram_odt,
	input eth_clocks_tx,
	output eth_clocks_gtx,
	input eth_clocks_rx,
	output eth_rst_n,
	input eth_int_n,
	inout eth_mdio,
	output eth_mdc,
	input eth_dv,
	input eth_rx_er,
	input [7:0] eth_rx_data,
	output reg eth_tx_en,
	output eth_tx_er,
	output reg [7:0] eth_tx_data,
	input eth_col,
	input eth_crs
);

wire [29:0] netsoc_netsoc_ibus_adr;
wire [31:0] netsoc_netsoc_ibus_dat_w;
wire [31:0] netsoc_netsoc_ibus_dat_r;
wire [3:0] netsoc_netsoc_ibus_sel;
wire netsoc_netsoc_ibus_cyc;
wire netsoc_netsoc_ibus_stb;
wire netsoc_netsoc_ibus_ack;
wire netsoc_netsoc_ibus_we;
wire [2:0] netsoc_netsoc_ibus_cti;
wire [1:0] netsoc_netsoc_ibus_bte;
wire netsoc_netsoc_ibus_err;
wire [29:0] netsoc_netsoc_dbus_adr;
wire [31:0] netsoc_netsoc_dbus_dat_w;
wire [31:0] netsoc_netsoc_dbus_dat_r;
wire [3:0] netsoc_netsoc_dbus_sel;
wire netsoc_netsoc_dbus_cyc;
wire netsoc_netsoc_dbus_stb;
wire netsoc_netsoc_dbus_ack;
wire netsoc_netsoc_dbus_we;
wire [2:0] netsoc_netsoc_dbus_cti;
wire [1:0] netsoc_netsoc_dbus_bte;
wire netsoc_netsoc_dbus_err;
reg [31:0] netsoc_netsoc_interrupt = 32'd0;
wire [31:0] netsoc_netsoc_i_adr_o;
wire [31:0] netsoc_netsoc_d_adr_o;
wire [29:0] netsoc_netsoc_rom_bus_adr;
wire [31:0] netsoc_netsoc_rom_bus_dat_w;
wire [31:0] netsoc_netsoc_rom_bus_dat_r;
wire [3:0] netsoc_netsoc_rom_bus_sel;
wire netsoc_netsoc_rom_bus_cyc;
wire netsoc_netsoc_rom_bus_stb;
reg netsoc_netsoc_rom_bus_ack = 1'd0;
wire netsoc_netsoc_rom_bus_we;
wire [2:0] netsoc_netsoc_rom_bus_cti;
wire [1:0] netsoc_netsoc_rom_bus_bte;
reg netsoc_netsoc_rom_bus_err = 1'd0;
wire [12:0] netsoc_netsoc_rom_adr;
wire [31:0] netsoc_netsoc_rom_dat_r;
wire [29:0] netsoc_netsoc_sram_bus_adr;
wire [31:0] netsoc_netsoc_sram_bus_dat_w;
wire [31:0] netsoc_netsoc_sram_bus_dat_r;
wire [3:0] netsoc_netsoc_sram_bus_sel;
wire netsoc_netsoc_sram_bus_cyc;
wire netsoc_netsoc_sram_bus_stb;
reg netsoc_netsoc_sram_bus_ack = 1'd0;
wire netsoc_netsoc_sram_bus_we;
wire [2:0] netsoc_netsoc_sram_bus_cti;
wire [1:0] netsoc_netsoc_sram_bus_bte;
reg netsoc_netsoc_sram_bus_err = 1'd0;
wire [11:0] netsoc_netsoc_sram_adr;
wire [31:0] netsoc_netsoc_sram_dat_r;
reg [3:0] netsoc_netsoc_sram_we = 4'd0;
wire [31:0] netsoc_netsoc_sram_dat_w;
reg [13:0] netsoc_netsoc_interface_adr = 14'd0;
reg netsoc_netsoc_interface_we = 1'd0;
reg [7:0] netsoc_netsoc_interface_dat_w = 8'd0;
wire [7:0] netsoc_netsoc_interface_dat_r;
wire [29:0] netsoc_netsoc_bus_wishbone_adr;
wire [31:0] netsoc_netsoc_bus_wishbone_dat_w;
reg [31:0] netsoc_netsoc_bus_wishbone_dat_r = 32'd0;
wire [3:0] netsoc_netsoc_bus_wishbone_sel;
wire netsoc_netsoc_bus_wishbone_cyc;
wire netsoc_netsoc_bus_wishbone_stb;
reg netsoc_netsoc_bus_wishbone_ack = 1'd0;
wire netsoc_netsoc_bus_wishbone_we;
wire [2:0] netsoc_netsoc_bus_wishbone_cti;
wire [1:0] netsoc_netsoc_bus_wishbone_bte;
reg netsoc_netsoc_bus_wishbone_err = 1'd0;
reg [1:0] netsoc_netsoc_counter = 2'd0;
reg [31:0] netsoc_netsoc_uart_phy_storage_full = 32'd6597069;
wire [31:0] netsoc_netsoc_uart_phy_storage;
reg netsoc_netsoc_uart_phy_re = 1'd0;
wire netsoc_netsoc_uart_phy_sink_valid;
reg netsoc_netsoc_uart_phy_sink_ready = 1'd0;
wire netsoc_netsoc_uart_phy_sink_first;
wire netsoc_netsoc_uart_phy_sink_last;
wire [7:0] netsoc_netsoc_uart_phy_sink_payload_data;
reg netsoc_netsoc_uart_phy_uart_clk_txen = 1'd0;
reg [31:0] netsoc_netsoc_uart_phy_phase_accumulator_tx = 32'd0;
reg [7:0] netsoc_netsoc_uart_phy_tx_reg = 8'd0;
reg [3:0] netsoc_netsoc_uart_phy_tx_bitcount = 4'd0;
reg netsoc_netsoc_uart_phy_tx_busy = 1'd0;
reg netsoc_netsoc_uart_phy_source_valid = 1'd0;
wire netsoc_netsoc_uart_phy_source_ready;
reg netsoc_netsoc_uart_phy_source_first = 1'd0;
reg netsoc_netsoc_uart_phy_source_last = 1'd0;
reg [7:0] netsoc_netsoc_uart_phy_source_payload_data = 8'd0;
reg netsoc_netsoc_uart_phy_uart_clk_rxen = 1'd0;
reg [31:0] netsoc_netsoc_uart_phy_phase_accumulator_rx = 32'd0;
wire netsoc_netsoc_uart_phy_rx;
reg netsoc_netsoc_uart_phy_rx_r = 1'd0;
reg [7:0] netsoc_netsoc_uart_phy_rx_reg = 8'd0;
reg [3:0] netsoc_netsoc_uart_phy_rx_bitcount = 4'd0;
reg netsoc_netsoc_uart_phy_rx_busy = 1'd0;
wire netsoc_netsoc_uart_rxtx_re;
wire [7:0] netsoc_netsoc_uart_rxtx_r;
wire [7:0] netsoc_netsoc_uart_rxtx_w;
wire netsoc_netsoc_uart_txfull_status;
wire netsoc_netsoc_uart_rxempty_status;
wire netsoc_netsoc_uart_irq;
wire netsoc_netsoc_uart_tx_status;
reg netsoc_netsoc_uart_tx_pending = 1'd0;
wire netsoc_netsoc_uart_tx_trigger;
reg netsoc_netsoc_uart_tx_clear = 1'd0;
reg netsoc_netsoc_uart_tx_old_trigger = 1'd0;
wire netsoc_netsoc_uart_rx_status;
reg netsoc_netsoc_uart_rx_pending = 1'd0;
wire netsoc_netsoc_uart_rx_trigger;
reg netsoc_netsoc_uart_rx_clear = 1'd0;
reg netsoc_netsoc_uart_rx_old_trigger = 1'd0;
wire netsoc_netsoc_uart_status_re;
wire [1:0] netsoc_netsoc_uart_status_r;
reg [1:0] netsoc_netsoc_uart_status_w = 2'd0;
wire netsoc_netsoc_uart_pending_re;
wire [1:0] netsoc_netsoc_uart_pending_r;
reg [1:0] netsoc_netsoc_uart_pending_w = 2'd0;
reg [1:0] netsoc_netsoc_uart_storage_full = 2'd0;
wire [1:0] netsoc_netsoc_uart_storage;
reg netsoc_netsoc_uart_re = 1'd0;
wire netsoc_netsoc_uart_tx_fifo_sink_valid;
wire netsoc_netsoc_uart_tx_fifo_sink_ready;
reg netsoc_netsoc_uart_tx_fifo_sink_first = 1'd0;
reg netsoc_netsoc_uart_tx_fifo_sink_last = 1'd0;
wire [7:0] netsoc_netsoc_uart_tx_fifo_sink_payload_data;
wire netsoc_netsoc_uart_tx_fifo_source_valid;
wire netsoc_netsoc_uart_tx_fifo_source_ready;
wire netsoc_netsoc_uart_tx_fifo_source_first;
wire netsoc_netsoc_uart_tx_fifo_source_last;
wire [7:0] netsoc_netsoc_uart_tx_fifo_source_payload_data;
wire netsoc_netsoc_uart_tx_fifo_syncfifo_we;
wire netsoc_netsoc_uart_tx_fifo_syncfifo_writable;
wire netsoc_netsoc_uart_tx_fifo_syncfifo_re;
wire netsoc_netsoc_uart_tx_fifo_syncfifo_readable;
wire [9:0] netsoc_netsoc_uart_tx_fifo_syncfifo_din;
wire [9:0] netsoc_netsoc_uart_tx_fifo_syncfifo_dout;
reg [4:0] netsoc_netsoc_uart_tx_fifo_level = 5'd0;
reg netsoc_netsoc_uart_tx_fifo_replace = 1'd0;
reg [3:0] netsoc_netsoc_uart_tx_fifo_produce = 4'd0;
reg [3:0] netsoc_netsoc_uart_tx_fifo_consume = 4'd0;
reg [3:0] netsoc_netsoc_uart_tx_fifo_wrport_adr = 4'd0;
wire [9:0] netsoc_netsoc_uart_tx_fifo_wrport_dat_r;
wire netsoc_netsoc_uart_tx_fifo_wrport_we;
wire [9:0] netsoc_netsoc_uart_tx_fifo_wrport_dat_w;
wire netsoc_netsoc_uart_tx_fifo_do_read;
wire [3:0] netsoc_netsoc_uart_tx_fifo_rdport_adr;
wire [9:0] netsoc_netsoc_uart_tx_fifo_rdport_dat_r;
wire [7:0] netsoc_netsoc_uart_tx_fifo_fifo_in_payload_data;
wire netsoc_netsoc_uart_tx_fifo_fifo_in_first;
wire netsoc_netsoc_uart_tx_fifo_fifo_in_last;
wire [7:0] netsoc_netsoc_uart_tx_fifo_fifo_out_payload_data;
wire netsoc_netsoc_uart_tx_fifo_fifo_out_first;
wire netsoc_netsoc_uart_tx_fifo_fifo_out_last;
wire netsoc_netsoc_uart_rx_fifo_sink_valid;
wire netsoc_netsoc_uart_rx_fifo_sink_ready;
wire netsoc_netsoc_uart_rx_fifo_sink_first;
wire netsoc_netsoc_uart_rx_fifo_sink_last;
wire [7:0] netsoc_netsoc_uart_rx_fifo_sink_payload_data;
wire netsoc_netsoc_uart_rx_fifo_source_valid;
wire netsoc_netsoc_uart_rx_fifo_source_ready;
wire netsoc_netsoc_uart_rx_fifo_source_first;
wire netsoc_netsoc_uart_rx_fifo_source_last;
wire [7:0] netsoc_netsoc_uart_rx_fifo_source_payload_data;
wire netsoc_netsoc_uart_rx_fifo_syncfifo_we;
wire netsoc_netsoc_uart_rx_fifo_syncfifo_writable;
wire netsoc_netsoc_uart_rx_fifo_syncfifo_re;
wire netsoc_netsoc_uart_rx_fifo_syncfifo_readable;
wire [9:0] netsoc_netsoc_uart_rx_fifo_syncfifo_din;
wire [9:0] netsoc_netsoc_uart_rx_fifo_syncfifo_dout;
reg [4:0] netsoc_netsoc_uart_rx_fifo_level = 5'd0;
reg netsoc_netsoc_uart_rx_fifo_replace = 1'd0;
reg [3:0] netsoc_netsoc_uart_rx_fifo_produce = 4'd0;
reg [3:0] netsoc_netsoc_uart_rx_fifo_consume = 4'd0;
reg [3:0] netsoc_netsoc_uart_rx_fifo_wrport_adr = 4'd0;
wire [9:0] netsoc_netsoc_uart_rx_fifo_wrport_dat_r;
wire netsoc_netsoc_uart_rx_fifo_wrport_we;
wire [9:0] netsoc_netsoc_uart_rx_fifo_wrport_dat_w;
wire netsoc_netsoc_uart_rx_fifo_do_read;
wire [3:0] netsoc_netsoc_uart_rx_fifo_rdport_adr;
wire [9:0] netsoc_netsoc_uart_rx_fifo_rdport_dat_r;
wire [7:0] netsoc_netsoc_uart_rx_fifo_fifo_in_payload_data;
wire netsoc_netsoc_uart_rx_fifo_fifo_in_first;
wire netsoc_netsoc_uart_rx_fifo_fifo_in_last;
wire [7:0] netsoc_netsoc_uart_rx_fifo_fifo_out_payload_data;
wire netsoc_netsoc_uart_rx_fifo_fifo_out_first;
wire netsoc_netsoc_uart_rx_fifo_fifo_out_last;
reg [31:0] netsoc_netsoc_timer0_load_storage_full = 32'd0;
wire [31:0] netsoc_netsoc_timer0_load_storage;
reg netsoc_netsoc_timer0_load_re = 1'd0;
reg [31:0] netsoc_netsoc_timer0_reload_storage_full = 32'd0;
wire [31:0] netsoc_netsoc_timer0_reload_storage;
reg netsoc_netsoc_timer0_reload_re = 1'd0;
reg netsoc_netsoc_timer0_en_storage_full = 1'd0;
wire netsoc_netsoc_timer0_en_storage;
reg netsoc_netsoc_timer0_en_re = 1'd0;
wire netsoc_netsoc_timer0_update_value_re;
wire netsoc_netsoc_timer0_update_value_r;
reg netsoc_netsoc_timer0_update_value_w = 1'd0;
reg [31:0] netsoc_netsoc_timer0_value_status = 32'd0;
wire netsoc_netsoc_timer0_irq;
wire netsoc_netsoc_timer0_zero_status;
reg netsoc_netsoc_timer0_zero_pending = 1'd0;
wire netsoc_netsoc_timer0_zero_trigger;
reg netsoc_netsoc_timer0_zero_clear = 1'd0;
reg netsoc_netsoc_timer0_zero_old_trigger = 1'd0;
wire netsoc_netsoc_timer0_eventmanager_status_re;
wire netsoc_netsoc_timer0_eventmanager_status_r;
wire netsoc_netsoc_timer0_eventmanager_status_w;
wire netsoc_netsoc_timer0_eventmanager_pending_re;
wire netsoc_netsoc_timer0_eventmanager_pending_r;
wire netsoc_netsoc_timer0_eventmanager_pending_w;
reg netsoc_netsoc_timer0_eventmanager_storage_full = 1'd0;
wire netsoc_netsoc_timer0_eventmanager_storage;
reg netsoc_netsoc_timer0_eventmanager_re = 1'd0;
reg [31:0] netsoc_netsoc_timer0_value = 32'd0;
wire [29:0] netsoc_interface0_wb_sdram_adr;
wire [31:0] netsoc_interface0_wb_sdram_dat_w;
reg [31:0] netsoc_interface0_wb_sdram_dat_r = 32'd0;
wire [3:0] netsoc_interface0_wb_sdram_sel;
wire netsoc_interface0_wb_sdram_cyc;
wire netsoc_interface0_wb_sdram_stb;
reg netsoc_interface0_wb_sdram_ack = 1'd0;
wire netsoc_interface0_wb_sdram_we;
wire [2:0] netsoc_interface0_wb_sdram_cti;
wire [1:0] netsoc_interface0_wb_sdram_bte;
reg netsoc_interface0_wb_sdram_err = 1'd0;
wire sys_clk;
wire sys_rst;
wire sdram_half_clk;
reg sdram_half_rst = 1'd0;
wire sdram_full_wr_clk;
wire sdram_full_rd_clk;
wire base50_clk;
wire base50_rst;
wire encoder_clk;
wire encoder_rst;
reg netsoc_crg_reset = 1'd0;
wire netsoc_crg_clk100a;
wire netsoc_crg_clk100b;
wire netsoc_crg_unbuf_sdram_full;
wire netsoc_crg_unbuf_sdram_half_a;
wire netsoc_crg_unbuf_sdram_half_b;
wire netsoc_crg_unbuf_encoder;
wire netsoc_crg_unbuf_sys;
wire netsoc_crg_unbuf_unused;
wire netsoc_crg_pll_lckd;
wire netsoc_crg_pll_fb;
wire por_clk;
wire por_rst;
reg [10:0] netsoc_crg_por = 11'd2047;
wire netsoc_crg_clk4x_wr_strb;
wire netsoc_crg_clk4x_rd_strb;
wire netsoc_crg_clk_sdram_half_shifted;
wire netsoc_crg_output_clk;
wire netsoc_crg_dcm_base50_locked;
reg [56:0] netsoc_dna_status = 57'd0;
wire netsoc_dna_do;
reg [6:0] netsoc_dna_cnt = 7'd0;
wire [159:0] netsoc_git_status;
wire [63:0] netsoc_platform_status;
wire [63:0] netsoc_target_status;
wire [29:0] netsoc_bus_adr;
wire [31:0] netsoc_bus_dat_w;
wire [31:0] netsoc_bus_dat_r;
wire [3:0] netsoc_bus_sel;
wire netsoc_bus_cyc;
wire netsoc_bus_stb;
reg netsoc_bus_ack = 1'd0;
wire netsoc_bus_we;
wire [2:0] netsoc_bus_cti;
wire [1:0] netsoc_bus_bte;
reg netsoc_bus_err = 1'd0;
reg [3:0] netsoc_bitbang_storage_full = 4'd0;
wire [3:0] netsoc_bitbang_storage;
reg netsoc_bitbang_re = 1'd0;
reg netsoc_status = 1'd0;
reg netsoc_bitbang_en_storage_full = 1'd0;
wire netsoc_bitbang_en_storage;
reg netsoc_bitbang_en_re = 1'd0;
reg netsoc_cs_n = 1'd1;
reg netsoc_clk = 1'd0;
reg netsoc_dq_oe = 1'd0;
reg [3:0] netsoc_o = 4'd0;
reg netsoc_oe = 1'd0;
wire [3:0] netsoc_i0;
reg [31:0] netsoc_sr = 32'd0;
reg [1:0] netsoc_i1 = 2'd0;
reg [3:0] netsoc_dqi = 4'd0;
reg [7:0] netsoc_counter = 8'd0;
wire [12:0] netsoc_ddrphy_dfi_p0_address;
wire [2:0] netsoc_ddrphy_dfi_p0_bank;
wire netsoc_ddrphy_dfi_p0_cas_n;
wire netsoc_ddrphy_dfi_p0_cs_n;
wire netsoc_ddrphy_dfi_p0_ras_n;
wire netsoc_ddrphy_dfi_p0_we_n;
wire netsoc_ddrphy_dfi_p0_cke;
wire netsoc_ddrphy_dfi_p0_odt;
wire netsoc_ddrphy_dfi_p0_reset_n;
wire [31:0] netsoc_ddrphy_dfi_p0_wrdata;
wire netsoc_ddrphy_dfi_p0_wrdata_en;
wire [3:0] netsoc_ddrphy_dfi_p0_wrdata_mask;
wire netsoc_ddrphy_dfi_p0_rddata_en;
wire [31:0] netsoc_ddrphy_dfi_p0_rddata;
wire netsoc_ddrphy_dfi_p0_rddata_valid;
wire [12:0] netsoc_ddrphy_dfi_p1_address;
wire [2:0] netsoc_ddrphy_dfi_p1_bank;
wire netsoc_ddrphy_dfi_p1_cas_n;
wire netsoc_ddrphy_dfi_p1_cs_n;
wire netsoc_ddrphy_dfi_p1_ras_n;
wire netsoc_ddrphy_dfi_p1_we_n;
wire netsoc_ddrphy_dfi_p1_cke;
wire netsoc_ddrphy_dfi_p1_odt;
wire netsoc_ddrphy_dfi_p1_reset_n;
wire [31:0] netsoc_ddrphy_dfi_p1_wrdata;
wire netsoc_ddrphy_dfi_p1_wrdata_en;
wire [3:0] netsoc_ddrphy_dfi_p1_wrdata_mask;
wire netsoc_ddrphy_dfi_p1_rddata_en;
wire [31:0] netsoc_ddrphy_dfi_p1_rddata;
wire netsoc_ddrphy_dfi_p1_rddata_valid;
wire netsoc_ddrphy_clk4x_wr_strb;
wire netsoc_ddrphy_clk4x_rd_strb;
reg netsoc_ddrphy_phase_sel = 1'd0;
reg netsoc_ddrphy_phase_half = 1'd0;
reg netsoc_ddrphy_phase_sys = 1'd0;
reg [12:0] netsoc_ddrphy_record0_address = 13'd0;
reg [2:0] netsoc_ddrphy_record0_bank = 3'd0;
reg netsoc_ddrphy_record0_cas_n = 1'd0;
reg netsoc_ddrphy_record0_cs_n = 1'd0;
reg netsoc_ddrphy_record0_ras_n = 1'd0;
reg netsoc_ddrphy_record0_we_n = 1'd0;
reg netsoc_ddrphy_record0_cke = 1'd0;
reg netsoc_ddrphy_record0_odt = 1'd0;
reg netsoc_ddrphy_record0_reset_n = 1'd0;
reg [12:0] netsoc_ddrphy_record1_address = 13'd0;
reg [2:0] netsoc_ddrphy_record1_bank = 3'd0;
reg netsoc_ddrphy_record1_cas_n = 1'd0;
reg netsoc_ddrphy_record1_cs_n = 1'd0;
reg netsoc_ddrphy_record1_ras_n = 1'd0;
reg netsoc_ddrphy_record1_we_n = 1'd0;
reg netsoc_ddrphy_record1_cke = 1'd0;
reg netsoc_ddrphy_record1_odt = 1'd0;
reg netsoc_ddrphy_record1_reset_n = 1'd0;
reg [3:0] netsoc_ddrphy_bitslip_cnt = 4'd0;
reg netsoc_ddrphy_bitslip_inc = 1'd0;
wire netsoc_ddrphy_sdram_half_clk_n;
reg netsoc_ddrphy_postamble = 1'd0;
wire netsoc_ddrphy_drive_dqs;
wire netsoc_ddrphy_dqs_t_d0;
wire netsoc_ddrphy_dqs_t_d1;
wire [1:0] netsoc_ddrphy_dqs_o;
wire [1:0] netsoc_ddrphy_dqs_t;
wire [31:0] netsoc_ddrphy_record0_wrdata;
wire netsoc_ddrphy_record0_wrdata_en;
wire [3:0] netsoc_ddrphy_record0_wrdata_mask;
wire netsoc_ddrphy_record0_rddata_en;
wire [31:0] netsoc_ddrphy_record0_rddata;
wire [31:0] netsoc_ddrphy_record1_wrdata;
wire netsoc_ddrphy_record1_wrdata_en;
wire [3:0] netsoc_ddrphy_record1_wrdata_mask;
wire netsoc_ddrphy_record1_rddata_en;
wire [31:0] netsoc_ddrphy_record1_rddata;
reg [31:0] netsoc_ddrphy_record2_wrdata = 32'd0;
reg [3:0] netsoc_ddrphy_record2_wrdata_mask = 4'd0;
reg [31:0] netsoc_ddrphy_record3_wrdata = 32'd0;
reg [3:0] netsoc_ddrphy_record3_wrdata_mask = 4'd0;
wire netsoc_ddrphy_drive_dq;
wire netsoc_ddrphy_drive_dq_n0;
reg netsoc_ddrphy_drive_dq_n1 = 1'd0;
wire [15:0] netsoc_ddrphy_dq_t;
wire [15:0] netsoc_ddrphy_dq_o;
wire [15:0] netsoc_ddrphy_dq_i;
wire netsoc_ddrphy_wrdata_en;
reg netsoc_ddrphy_wrdata_en_d = 1'd0;
reg [2:0] netsoc_ddrphy_r_dfi_wrdata_en = 3'd0;
wire netsoc_ddrphy_rddata_en;
reg [4:0] netsoc_ddrphy_rddata_sr = 5'd0;
wire [12:0] netsoc_sdram_inti_p0_address;
wire [2:0] netsoc_sdram_inti_p0_bank;
reg netsoc_sdram_inti_p0_cas_n = 1'd1;
reg netsoc_sdram_inti_p0_cs_n = 1'd1;
reg netsoc_sdram_inti_p0_ras_n = 1'd1;
reg netsoc_sdram_inti_p0_we_n = 1'd1;
wire netsoc_sdram_inti_p0_cke;
wire netsoc_sdram_inti_p0_odt;
wire netsoc_sdram_inti_p0_reset_n;
wire [31:0] netsoc_sdram_inti_p0_wrdata;
wire netsoc_sdram_inti_p0_wrdata_en;
wire [3:0] netsoc_sdram_inti_p0_wrdata_mask;
wire netsoc_sdram_inti_p0_rddata_en;
reg [31:0] netsoc_sdram_inti_p0_rddata = 32'd0;
reg netsoc_sdram_inti_p0_rddata_valid = 1'd0;
wire [12:0] netsoc_sdram_inti_p1_address;
wire [2:0] netsoc_sdram_inti_p1_bank;
reg netsoc_sdram_inti_p1_cas_n = 1'd1;
reg netsoc_sdram_inti_p1_cs_n = 1'd1;
reg netsoc_sdram_inti_p1_ras_n = 1'd1;
reg netsoc_sdram_inti_p1_we_n = 1'd1;
wire netsoc_sdram_inti_p1_cke;
wire netsoc_sdram_inti_p1_odt;
wire netsoc_sdram_inti_p1_reset_n;
wire [31:0] netsoc_sdram_inti_p1_wrdata;
wire netsoc_sdram_inti_p1_wrdata_en;
wire [3:0] netsoc_sdram_inti_p1_wrdata_mask;
wire netsoc_sdram_inti_p1_rddata_en;
reg [31:0] netsoc_sdram_inti_p1_rddata = 32'd0;
reg netsoc_sdram_inti_p1_rddata_valid = 1'd0;
wire [12:0] netsoc_sdram_slave_p0_address;
wire [2:0] netsoc_sdram_slave_p0_bank;
wire netsoc_sdram_slave_p0_cas_n;
wire netsoc_sdram_slave_p0_cs_n;
wire netsoc_sdram_slave_p0_ras_n;
wire netsoc_sdram_slave_p0_we_n;
wire netsoc_sdram_slave_p0_cke;
wire netsoc_sdram_slave_p0_odt;
wire netsoc_sdram_slave_p0_reset_n;
wire [31:0] netsoc_sdram_slave_p0_wrdata;
wire netsoc_sdram_slave_p0_wrdata_en;
wire [3:0] netsoc_sdram_slave_p0_wrdata_mask;
wire netsoc_sdram_slave_p0_rddata_en;
reg [31:0] netsoc_sdram_slave_p0_rddata = 32'd0;
reg netsoc_sdram_slave_p0_rddata_valid = 1'd0;
wire [12:0] netsoc_sdram_slave_p1_address;
wire [2:0] netsoc_sdram_slave_p1_bank;
wire netsoc_sdram_slave_p1_cas_n;
wire netsoc_sdram_slave_p1_cs_n;
wire netsoc_sdram_slave_p1_ras_n;
wire netsoc_sdram_slave_p1_we_n;
wire netsoc_sdram_slave_p1_cke;
wire netsoc_sdram_slave_p1_odt;
wire netsoc_sdram_slave_p1_reset_n;
wire [31:0] netsoc_sdram_slave_p1_wrdata;
wire netsoc_sdram_slave_p1_wrdata_en;
wire [3:0] netsoc_sdram_slave_p1_wrdata_mask;
wire netsoc_sdram_slave_p1_rddata_en;
reg [31:0] netsoc_sdram_slave_p1_rddata = 32'd0;
reg netsoc_sdram_slave_p1_rddata_valid = 1'd0;
reg [12:0] netsoc_sdram_master_p0_address = 13'd0;
reg [2:0] netsoc_sdram_master_p0_bank = 3'd0;
reg netsoc_sdram_master_p0_cas_n = 1'd1;
reg netsoc_sdram_master_p0_cs_n = 1'd1;
reg netsoc_sdram_master_p0_ras_n = 1'd1;
reg netsoc_sdram_master_p0_we_n = 1'd1;
reg netsoc_sdram_master_p0_cke = 1'd0;
reg netsoc_sdram_master_p0_odt = 1'd0;
reg netsoc_sdram_master_p0_reset_n = 1'd0;
reg [31:0] netsoc_sdram_master_p0_wrdata = 32'd0;
reg netsoc_sdram_master_p0_wrdata_en = 1'd0;
reg [3:0] netsoc_sdram_master_p0_wrdata_mask = 4'd0;
reg netsoc_sdram_master_p0_rddata_en = 1'd0;
wire [31:0] netsoc_sdram_master_p0_rddata;
wire netsoc_sdram_master_p0_rddata_valid;
reg [12:0] netsoc_sdram_master_p1_address = 13'd0;
reg [2:0] netsoc_sdram_master_p1_bank = 3'd0;
reg netsoc_sdram_master_p1_cas_n = 1'd1;
reg netsoc_sdram_master_p1_cs_n = 1'd1;
reg netsoc_sdram_master_p1_ras_n = 1'd1;
reg netsoc_sdram_master_p1_we_n = 1'd1;
reg netsoc_sdram_master_p1_cke = 1'd0;
reg netsoc_sdram_master_p1_odt = 1'd0;
reg netsoc_sdram_master_p1_reset_n = 1'd0;
reg [31:0] netsoc_sdram_master_p1_wrdata = 32'd0;
reg netsoc_sdram_master_p1_wrdata_en = 1'd0;
reg [3:0] netsoc_sdram_master_p1_wrdata_mask = 4'd0;
reg netsoc_sdram_master_p1_rddata_en = 1'd0;
wire [31:0] netsoc_sdram_master_p1_rddata;
wire netsoc_sdram_master_p1_rddata_valid;
reg [3:0] netsoc_sdram_storage_full = 4'd0;
wire [3:0] netsoc_sdram_storage;
reg netsoc_sdram_re = 1'd0;
reg [5:0] netsoc_sdram_phaseinjector0_command_storage_full = 6'd0;
wire [5:0] netsoc_sdram_phaseinjector0_command_storage;
reg netsoc_sdram_phaseinjector0_command_re = 1'd0;
wire netsoc_sdram_phaseinjector0_command_issue_re;
wire netsoc_sdram_phaseinjector0_command_issue_r;
reg netsoc_sdram_phaseinjector0_command_issue_w = 1'd0;
reg [12:0] netsoc_sdram_phaseinjector0_address_storage_full = 13'd0;
wire [12:0] netsoc_sdram_phaseinjector0_address_storage;
reg netsoc_sdram_phaseinjector0_address_re = 1'd0;
reg [2:0] netsoc_sdram_phaseinjector0_baddress_storage_full = 3'd0;
wire [2:0] netsoc_sdram_phaseinjector0_baddress_storage;
reg netsoc_sdram_phaseinjector0_baddress_re = 1'd0;
reg [31:0] netsoc_sdram_phaseinjector0_wrdata_storage_full = 32'd0;
wire [31:0] netsoc_sdram_phaseinjector0_wrdata_storage;
reg netsoc_sdram_phaseinjector0_wrdata_re = 1'd0;
reg [31:0] netsoc_sdram_phaseinjector0_status = 32'd0;
reg [5:0] netsoc_sdram_phaseinjector1_command_storage_full = 6'd0;
wire [5:0] netsoc_sdram_phaseinjector1_command_storage;
reg netsoc_sdram_phaseinjector1_command_re = 1'd0;
wire netsoc_sdram_phaseinjector1_command_issue_re;
wire netsoc_sdram_phaseinjector1_command_issue_r;
reg netsoc_sdram_phaseinjector1_command_issue_w = 1'd0;
reg [12:0] netsoc_sdram_phaseinjector1_address_storage_full = 13'd0;
wire [12:0] netsoc_sdram_phaseinjector1_address_storage;
reg netsoc_sdram_phaseinjector1_address_re = 1'd0;
reg [2:0] netsoc_sdram_phaseinjector1_baddress_storage_full = 3'd0;
wire [2:0] netsoc_sdram_phaseinjector1_baddress_storage;
reg netsoc_sdram_phaseinjector1_baddress_re = 1'd0;
reg [31:0] netsoc_sdram_phaseinjector1_wrdata_storage_full = 32'd0;
wire [31:0] netsoc_sdram_phaseinjector1_wrdata_storage;
reg netsoc_sdram_phaseinjector1_wrdata_re = 1'd0;
reg [31:0] netsoc_sdram_phaseinjector1_status = 32'd0;
reg [12:0] netsoc_sdram_dfi_p0_address = 13'd0;
reg [2:0] netsoc_sdram_dfi_p0_bank = 3'd0;
reg netsoc_sdram_dfi_p0_cas_n = 1'd1;
wire netsoc_sdram_dfi_p0_cs_n;
reg netsoc_sdram_dfi_p0_ras_n = 1'd1;
reg netsoc_sdram_dfi_p0_we_n = 1'd1;
wire netsoc_sdram_dfi_p0_cke;
wire netsoc_sdram_dfi_p0_odt;
wire netsoc_sdram_dfi_p0_reset_n;
wire [31:0] netsoc_sdram_dfi_p0_wrdata;
reg netsoc_sdram_dfi_p0_wrdata_en = 1'd0;
wire [3:0] netsoc_sdram_dfi_p0_wrdata_mask;
reg netsoc_sdram_dfi_p0_rddata_en = 1'd0;
wire [31:0] netsoc_sdram_dfi_p0_rddata;
wire netsoc_sdram_dfi_p0_rddata_valid;
reg [12:0] netsoc_sdram_dfi_p1_address = 13'd0;
reg [2:0] netsoc_sdram_dfi_p1_bank = 3'd0;
reg netsoc_sdram_dfi_p1_cas_n = 1'd1;
wire netsoc_sdram_dfi_p1_cs_n;
reg netsoc_sdram_dfi_p1_ras_n = 1'd1;
reg netsoc_sdram_dfi_p1_we_n = 1'd1;
wire netsoc_sdram_dfi_p1_cke;
wire netsoc_sdram_dfi_p1_odt;
wire netsoc_sdram_dfi_p1_reset_n;
wire [31:0] netsoc_sdram_dfi_p1_wrdata;
reg netsoc_sdram_dfi_p1_wrdata_en = 1'd0;
wire [3:0] netsoc_sdram_dfi_p1_wrdata_mask;
reg netsoc_sdram_dfi_p1_rddata_en = 1'd0;
wire [31:0] netsoc_sdram_dfi_p1_rddata;
wire netsoc_sdram_dfi_p1_rddata_valid;
wire netsoc_sdram_interface_bank0_valid;
wire netsoc_sdram_interface_bank0_ready;
wire netsoc_sdram_interface_bank0_we;
wire [20:0] netsoc_sdram_interface_bank0_adr;
wire netsoc_sdram_interface_bank0_lock;
wire netsoc_sdram_interface_bank0_wdata_ready;
wire netsoc_sdram_interface_bank0_rdata_valid;
wire netsoc_sdram_interface_bank1_valid;
wire netsoc_sdram_interface_bank1_ready;
wire netsoc_sdram_interface_bank1_we;
wire [20:0] netsoc_sdram_interface_bank1_adr;
wire netsoc_sdram_interface_bank1_lock;
wire netsoc_sdram_interface_bank1_wdata_ready;
wire netsoc_sdram_interface_bank1_rdata_valid;
wire netsoc_sdram_interface_bank2_valid;
wire netsoc_sdram_interface_bank2_ready;
wire netsoc_sdram_interface_bank2_we;
wire [20:0] netsoc_sdram_interface_bank2_adr;
wire netsoc_sdram_interface_bank2_lock;
wire netsoc_sdram_interface_bank2_wdata_ready;
wire netsoc_sdram_interface_bank2_rdata_valid;
wire netsoc_sdram_interface_bank3_valid;
wire netsoc_sdram_interface_bank3_ready;
wire netsoc_sdram_interface_bank3_we;
wire [20:0] netsoc_sdram_interface_bank3_adr;
wire netsoc_sdram_interface_bank3_lock;
wire netsoc_sdram_interface_bank3_wdata_ready;
wire netsoc_sdram_interface_bank3_rdata_valid;
wire netsoc_sdram_interface_bank4_valid;
wire netsoc_sdram_interface_bank4_ready;
wire netsoc_sdram_interface_bank4_we;
wire [20:0] netsoc_sdram_interface_bank4_adr;
wire netsoc_sdram_interface_bank4_lock;
wire netsoc_sdram_interface_bank4_wdata_ready;
wire netsoc_sdram_interface_bank4_rdata_valid;
wire netsoc_sdram_interface_bank5_valid;
wire netsoc_sdram_interface_bank5_ready;
wire netsoc_sdram_interface_bank5_we;
wire [20:0] netsoc_sdram_interface_bank5_adr;
wire netsoc_sdram_interface_bank5_lock;
wire netsoc_sdram_interface_bank5_wdata_ready;
wire netsoc_sdram_interface_bank5_rdata_valid;
wire netsoc_sdram_interface_bank6_valid;
wire netsoc_sdram_interface_bank6_ready;
wire netsoc_sdram_interface_bank6_we;
wire [20:0] netsoc_sdram_interface_bank6_adr;
wire netsoc_sdram_interface_bank6_lock;
wire netsoc_sdram_interface_bank6_wdata_ready;
wire netsoc_sdram_interface_bank6_rdata_valid;
wire netsoc_sdram_interface_bank7_valid;
wire netsoc_sdram_interface_bank7_ready;
wire netsoc_sdram_interface_bank7_we;
wire [20:0] netsoc_sdram_interface_bank7_adr;
wire netsoc_sdram_interface_bank7_lock;
wire netsoc_sdram_interface_bank7_wdata_ready;
wire netsoc_sdram_interface_bank7_rdata_valid;
reg [63:0] netsoc_sdram_interface_wdata = 64'd0;
reg [7:0] netsoc_sdram_interface_wdata_we = 8'd0;
wire [63:0] netsoc_sdram_interface_rdata;
reg netsoc_sdram_cmd_valid = 1'd0;
reg netsoc_sdram_cmd_ready = 1'd0;
reg netsoc_sdram_cmd_last = 1'd0;
reg [12:0] netsoc_sdram_cmd_payload_a = 13'd0;
reg [2:0] netsoc_sdram_cmd_payload_ba = 3'd0;
reg netsoc_sdram_cmd_payload_cas = 1'd0;
reg netsoc_sdram_cmd_payload_ras = 1'd0;
reg netsoc_sdram_cmd_payload_we = 1'd0;
reg netsoc_sdram_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_cmd_payload_is_write = 1'd0;
reg netsoc_sdram_seq_start = 1'd0;
reg netsoc_sdram_seq_done = 1'd0;
reg [3:0] netsoc_sdram_counter = 4'd0;
wire netsoc_sdram_wait;
wire netsoc_sdram_done;
reg [9:0] netsoc_sdram_count = 10'd585;
wire netsoc_sdram_bankmachine0_req_valid;
wire netsoc_sdram_bankmachine0_req_ready;
wire netsoc_sdram_bankmachine0_req_we;
wire [20:0] netsoc_sdram_bankmachine0_req_adr;
wire netsoc_sdram_bankmachine0_req_lock;
reg netsoc_sdram_bankmachine0_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine0_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine0_refresh_req;
reg netsoc_sdram_bankmachine0_refresh_gnt = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_ready = 1'd0;
reg [12:0] netsoc_sdram_bankmachine0_cmd_payload_a = 13'd0;
wire [2:0] netsoc_sdram_bankmachine0_cmd_payload_ba;
reg netsoc_sdram_bankmachine0_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_payload_is_write = 1'd0;
wire netsoc_sdram_bankmachine0_sink_valid;
wire netsoc_sdram_bankmachine0_sink_ready;
reg netsoc_sdram_bankmachine0_sink_first = 1'd0;
reg netsoc_sdram_bankmachine0_sink_last = 1'd0;
wire netsoc_sdram_bankmachine0_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine0_sink_payload_adr;
wire netsoc_sdram_bankmachine0_source_valid;
wire netsoc_sdram_bankmachine0_source_ready;
wire netsoc_sdram_bankmachine0_source_first;
wire netsoc_sdram_bankmachine0_source_last;
wire netsoc_sdram_bankmachine0_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine0_source_payload_adr;
wire netsoc_sdram_bankmachine0_syncfifo0_we;
wire netsoc_sdram_bankmachine0_syncfifo0_writable;
wire netsoc_sdram_bankmachine0_syncfifo0_re;
wire netsoc_sdram_bankmachine0_syncfifo0_readable;
wire [23:0] netsoc_sdram_bankmachine0_syncfifo0_din;
wire [23:0] netsoc_sdram_bankmachine0_syncfifo0_dout;
reg [3:0] netsoc_sdram_bankmachine0_level = 4'd0;
reg netsoc_sdram_bankmachine0_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine0_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine0_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine0_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine0_wrport_dat_r;
wire netsoc_sdram_bankmachine0_wrport_we;
wire [23:0] netsoc_sdram_bankmachine0_wrport_dat_w;
wire netsoc_sdram_bankmachine0_do_read;
wire [2:0] netsoc_sdram_bankmachine0_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine0_rdport_dat_r;
wire netsoc_sdram_bankmachine0_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine0_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine0_fifo_in_first;
wire netsoc_sdram_bankmachine0_fifo_in_last;
wire netsoc_sdram_bankmachine0_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine0_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine0_fifo_out_first;
wire netsoc_sdram_bankmachine0_fifo_out_last;
reg netsoc_sdram_bankmachine0_has_openrow = 1'd0;
reg [12:0] netsoc_sdram_bankmachine0_openrow = 13'd0;
wire netsoc_sdram_bankmachine0_hit;
reg netsoc_sdram_bankmachine0_track_open = 1'd0;
reg netsoc_sdram_bankmachine0_track_close = 1'd0;
reg netsoc_sdram_bankmachine0_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine0_wait;
wire netsoc_sdram_bankmachine0_done;
reg [2:0] netsoc_sdram_bankmachine0_count = 3'd4;
wire netsoc_sdram_bankmachine1_req_valid;
wire netsoc_sdram_bankmachine1_req_ready;
wire netsoc_sdram_bankmachine1_req_we;
wire [20:0] netsoc_sdram_bankmachine1_req_adr;
wire netsoc_sdram_bankmachine1_req_lock;
reg netsoc_sdram_bankmachine1_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine1_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine1_refresh_req;
reg netsoc_sdram_bankmachine1_refresh_gnt = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_ready = 1'd0;
reg [12:0] netsoc_sdram_bankmachine1_cmd_payload_a = 13'd0;
wire [2:0] netsoc_sdram_bankmachine1_cmd_payload_ba;
reg netsoc_sdram_bankmachine1_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_payload_is_write = 1'd0;
wire netsoc_sdram_bankmachine1_sink_valid;
wire netsoc_sdram_bankmachine1_sink_ready;
reg netsoc_sdram_bankmachine1_sink_first = 1'd0;
reg netsoc_sdram_bankmachine1_sink_last = 1'd0;
wire netsoc_sdram_bankmachine1_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine1_sink_payload_adr;
wire netsoc_sdram_bankmachine1_source_valid;
wire netsoc_sdram_bankmachine1_source_ready;
wire netsoc_sdram_bankmachine1_source_first;
wire netsoc_sdram_bankmachine1_source_last;
wire netsoc_sdram_bankmachine1_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine1_source_payload_adr;
wire netsoc_sdram_bankmachine1_syncfifo1_we;
wire netsoc_sdram_bankmachine1_syncfifo1_writable;
wire netsoc_sdram_bankmachine1_syncfifo1_re;
wire netsoc_sdram_bankmachine1_syncfifo1_readable;
wire [23:0] netsoc_sdram_bankmachine1_syncfifo1_din;
wire [23:0] netsoc_sdram_bankmachine1_syncfifo1_dout;
reg [3:0] netsoc_sdram_bankmachine1_level = 4'd0;
reg netsoc_sdram_bankmachine1_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine1_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine1_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine1_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine1_wrport_dat_r;
wire netsoc_sdram_bankmachine1_wrport_we;
wire [23:0] netsoc_sdram_bankmachine1_wrport_dat_w;
wire netsoc_sdram_bankmachine1_do_read;
wire [2:0] netsoc_sdram_bankmachine1_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine1_rdport_dat_r;
wire netsoc_sdram_bankmachine1_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine1_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine1_fifo_in_first;
wire netsoc_sdram_bankmachine1_fifo_in_last;
wire netsoc_sdram_bankmachine1_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine1_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine1_fifo_out_first;
wire netsoc_sdram_bankmachine1_fifo_out_last;
reg netsoc_sdram_bankmachine1_has_openrow = 1'd0;
reg [12:0] netsoc_sdram_bankmachine1_openrow = 13'd0;
wire netsoc_sdram_bankmachine1_hit;
reg netsoc_sdram_bankmachine1_track_open = 1'd0;
reg netsoc_sdram_bankmachine1_track_close = 1'd0;
reg netsoc_sdram_bankmachine1_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine1_wait;
wire netsoc_sdram_bankmachine1_done;
reg [2:0] netsoc_sdram_bankmachine1_count = 3'd4;
wire netsoc_sdram_bankmachine2_req_valid;
wire netsoc_sdram_bankmachine2_req_ready;
wire netsoc_sdram_bankmachine2_req_we;
wire [20:0] netsoc_sdram_bankmachine2_req_adr;
wire netsoc_sdram_bankmachine2_req_lock;
reg netsoc_sdram_bankmachine2_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine2_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine2_refresh_req;
reg netsoc_sdram_bankmachine2_refresh_gnt = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_ready = 1'd0;
reg [12:0] netsoc_sdram_bankmachine2_cmd_payload_a = 13'd0;
wire [2:0] netsoc_sdram_bankmachine2_cmd_payload_ba;
reg netsoc_sdram_bankmachine2_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_payload_is_write = 1'd0;
wire netsoc_sdram_bankmachine2_sink_valid;
wire netsoc_sdram_bankmachine2_sink_ready;
reg netsoc_sdram_bankmachine2_sink_first = 1'd0;
reg netsoc_sdram_bankmachine2_sink_last = 1'd0;
wire netsoc_sdram_bankmachine2_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine2_sink_payload_adr;
wire netsoc_sdram_bankmachine2_source_valid;
wire netsoc_sdram_bankmachine2_source_ready;
wire netsoc_sdram_bankmachine2_source_first;
wire netsoc_sdram_bankmachine2_source_last;
wire netsoc_sdram_bankmachine2_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine2_source_payload_adr;
wire netsoc_sdram_bankmachine2_syncfifo2_we;
wire netsoc_sdram_bankmachine2_syncfifo2_writable;
wire netsoc_sdram_bankmachine2_syncfifo2_re;
wire netsoc_sdram_bankmachine2_syncfifo2_readable;
wire [23:0] netsoc_sdram_bankmachine2_syncfifo2_din;
wire [23:0] netsoc_sdram_bankmachine2_syncfifo2_dout;
reg [3:0] netsoc_sdram_bankmachine2_level = 4'd0;
reg netsoc_sdram_bankmachine2_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine2_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine2_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine2_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine2_wrport_dat_r;
wire netsoc_sdram_bankmachine2_wrport_we;
wire [23:0] netsoc_sdram_bankmachine2_wrport_dat_w;
wire netsoc_sdram_bankmachine2_do_read;
wire [2:0] netsoc_sdram_bankmachine2_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine2_rdport_dat_r;
wire netsoc_sdram_bankmachine2_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine2_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine2_fifo_in_first;
wire netsoc_sdram_bankmachine2_fifo_in_last;
wire netsoc_sdram_bankmachine2_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine2_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine2_fifo_out_first;
wire netsoc_sdram_bankmachine2_fifo_out_last;
reg netsoc_sdram_bankmachine2_has_openrow = 1'd0;
reg [12:0] netsoc_sdram_bankmachine2_openrow = 13'd0;
wire netsoc_sdram_bankmachine2_hit;
reg netsoc_sdram_bankmachine2_track_open = 1'd0;
reg netsoc_sdram_bankmachine2_track_close = 1'd0;
reg netsoc_sdram_bankmachine2_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine2_wait;
wire netsoc_sdram_bankmachine2_done;
reg [2:0] netsoc_sdram_bankmachine2_count = 3'd4;
wire netsoc_sdram_bankmachine3_req_valid;
wire netsoc_sdram_bankmachine3_req_ready;
wire netsoc_sdram_bankmachine3_req_we;
wire [20:0] netsoc_sdram_bankmachine3_req_adr;
wire netsoc_sdram_bankmachine3_req_lock;
reg netsoc_sdram_bankmachine3_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine3_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine3_refresh_req;
reg netsoc_sdram_bankmachine3_refresh_gnt = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_ready = 1'd0;
reg [12:0] netsoc_sdram_bankmachine3_cmd_payload_a = 13'd0;
wire [2:0] netsoc_sdram_bankmachine3_cmd_payload_ba;
reg netsoc_sdram_bankmachine3_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_payload_is_write = 1'd0;
wire netsoc_sdram_bankmachine3_sink_valid;
wire netsoc_sdram_bankmachine3_sink_ready;
reg netsoc_sdram_bankmachine3_sink_first = 1'd0;
reg netsoc_sdram_bankmachine3_sink_last = 1'd0;
wire netsoc_sdram_bankmachine3_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine3_sink_payload_adr;
wire netsoc_sdram_bankmachine3_source_valid;
wire netsoc_sdram_bankmachine3_source_ready;
wire netsoc_sdram_bankmachine3_source_first;
wire netsoc_sdram_bankmachine3_source_last;
wire netsoc_sdram_bankmachine3_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine3_source_payload_adr;
wire netsoc_sdram_bankmachine3_syncfifo3_we;
wire netsoc_sdram_bankmachine3_syncfifo3_writable;
wire netsoc_sdram_bankmachine3_syncfifo3_re;
wire netsoc_sdram_bankmachine3_syncfifo3_readable;
wire [23:0] netsoc_sdram_bankmachine3_syncfifo3_din;
wire [23:0] netsoc_sdram_bankmachine3_syncfifo3_dout;
reg [3:0] netsoc_sdram_bankmachine3_level = 4'd0;
reg netsoc_sdram_bankmachine3_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine3_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine3_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine3_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine3_wrport_dat_r;
wire netsoc_sdram_bankmachine3_wrport_we;
wire [23:0] netsoc_sdram_bankmachine3_wrport_dat_w;
wire netsoc_sdram_bankmachine3_do_read;
wire [2:0] netsoc_sdram_bankmachine3_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine3_rdport_dat_r;
wire netsoc_sdram_bankmachine3_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine3_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine3_fifo_in_first;
wire netsoc_sdram_bankmachine3_fifo_in_last;
wire netsoc_sdram_bankmachine3_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine3_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine3_fifo_out_first;
wire netsoc_sdram_bankmachine3_fifo_out_last;
reg netsoc_sdram_bankmachine3_has_openrow = 1'd0;
reg [12:0] netsoc_sdram_bankmachine3_openrow = 13'd0;
wire netsoc_sdram_bankmachine3_hit;
reg netsoc_sdram_bankmachine3_track_open = 1'd0;
reg netsoc_sdram_bankmachine3_track_close = 1'd0;
reg netsoc_sdram_bankmachine3_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine3_wait;
wire netsoc_sdram_bankmachine3_done;
reg [2:0] netsoc_sdram_bankmachine3_count = 3'd4;
wire netsoc_sdram_bankmachine4_req_valid;
wire netsoc_sdram_bankmachine4_req_ready;
wire netsoc_sdram_bankmachine4_req_we;
wire [20:0] netsoc_sdram_bankmachine4_req_adr;
wire netsoc_sdram_bankmachine4_req_lock;
reg netsoc_sdram_bankmachine4_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine4_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine4_refresh_req;
reg netsoc_sdram_bankmachine4_refresh_gnt = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_ready = 1'd0;
reg [12:0] netsoc_sdram_bankmachine4_cmd_payload_a = 13'd0;
wire [2:0] netsoc_sdram_bankmachine4_cmd_payload_ba;
reg netsoc_sdram_bankmachine4_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_payload_is_write = 1'd0;
wire netsoc_sdram_bankmachine4_sink_valid;
wire netsoc_sdram_bankmachine4_sink_ready;
reg netsoc_sdram_bankmachine4_sink_first = 1'd0;
reg netsoc_sdram_bankmachine4_sink_last = 1'd0;
wire netsoc_sdram_bankmachine4_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine4_sink_payload_adr;
wire netsoc_sdram_bankmachine4_source_valid;
wire netsoc_sdram_bankmachine4_source_ready;
wire netsoc_sdram_bankmachine4_source_first;
wire netsoc_sdram_bankmachine4_source_last;
wire netsoc_sdram_bankmachine4_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine4_source_payload_adr;
wire netsoc_sdram_bankmachine4_syncfifo4_we;
wire netsoc_sdram_bankmachine4_syncfifo4_writable;
wire netsoc_sdram_bankmachine4_syncfifo4_re;
wire netsoc_sdram_bankmachine4_syncfifo4_readable;
wire [23:0] netsoc_sdram_bankmachine4_syncfifo4_din;
wire [23:0] netsoc_sdram_bankmachine4_syncfifo4_dout;
reg [3:0] netsoc_sdram_bankmachine4_level = 4'd0;
reg netsoc_sdram_bankmachine4_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine4_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine4_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine4_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine4_wrport_dat_r;
wire netsoc_sdram_bankmachine4_wrport_we;
wire [23:0] netsoc_sdram_bankmachine4_wrport_dat_w;
wire netsoc_sdram_bankmachine4_do_read;
wire [2:0] netsoc_sdram_bankmachine4_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine4_rdport_dat_r;
wire netsoc_sdram_bankmachine4_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine4_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine4_fifo_in_first;
wire netsoc_sdram_bankmachine4_fifo_in_last;
wire netsoc_sdram_bankmachine4_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine4_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine4_fifo_out_first;
wire netsoc_sdram_bankmachine4_fifo_out_last;
reg netsoc_sdram_bankmachine4_has_openrow = 1'd0;
reg [12:0] netsoc_sdram_bankmachine4_openrow = 13'd0;
wire netsoc_sdram_bankmachine4_hit;
reg netsoc_sdram_bankmachine4_track_open = 1'd0;
reg netsoc_sdram_bankmachine4_track_close = 1'd0;
reg netsoc_sdram_bankmachine4_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine4_wait;
wire netsoc_sdram_bankmachine4_done;
reg [2:0] netsoc_sdram_bankmachine4_count = 3'd4;
wire netsoc_sdram_bankmachine5_req_valid;
wire netsoc_sdram_bankmachine5_req_ready;
wire netsoc_sdram_bankmachine5_req_we;
wire [20:0] netsoc_sdram_bankmachine5_req_adr;
wire netsoc_sdram_bankmachine5_req_lock;
reg netsoc_sdram_bankmachine5_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine5_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine5_refresh_req;
reg netsoc_sdram_bankmachine5_refresh_gnt = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_ready = 1'd0;
reg [12:0] netsoc_sdram_bankmachine5_cmd_payload_a = 13'd0;
wire [2:0] netsoc_sdram_bankmachine5_cmd_payload_ba;
reg netsoc_sdram_bankmachine5_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_payload_is_write = 1'd0;
wire netsoc_sdram_bankmachine5_sink_valid;
wire netsoc_sdram_bankmachine5_sink_ready;
reg netsoc_sdram_bankmachine5_sink_first = 1'd0;
reg netsoc_sdram_bankmachine5_sink_last = 1'd0;
wire netsoc_sdram_bankmachine5_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine5_sink_payload_adr;
wire netsoc_sdram_bankmachine5_source_valid;
wire netsoc_sdram_bankmachine5_source_ready;
wire netsoc_sdram_bankmachine5_source_first;
wire netsoc_sdram_bankmachine5_source_last;
wire netsoc_sdram_bankmachine5_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine5_source_payload_adr;
wire netsoc_sdram_bankmachine5_syncfifo5_we;
wire netsoc_sdram_bankmachine5_syncfifo5_writable;
wire netsoc_sdram_bankmachine5_syncfifo5_re;
wire netsoc_sdram_bankmachine5_syncfifo5_readable;
wire [23:0] netsoc_sdram_bankmachine5_syncfifo5_din;
wire [23:0] netsoc_sdram_bankmachine5_syncfifo5_dout;
reg [3:0] netsoc_sdram_bankmachine5_level = 4'd0;
reg netsoc_sdram_bankmachine5_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine5_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine5_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine5_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine5_wrport_dat_r;
wire netsoc_sdram_bankmachine5_wrport_we;
wire [23:0] netsoc_sdram_bankmachine5_wrport_dat_w;
wire netsoc_sdram_bankmachine5_do_read;
wire [2:0] netsoc_sdram_bankmachine5_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine5_rdport_dat_r;
wire netsoc_sdram_bankmachine5_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine5_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine5_fifo_in_first;
wire netsoc_sdram_bankmachine5_fifo_in_last;
wire netsoc_sdram_bankmachine5_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine5_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine5_fifo_out_first;
wire netsoc_sdram_bankmachine5_fifo_out_last;
reg netsoc_sdram_bankmachine5_has_openrow = 1'd0;
reg [12:0] netsoc_sdram_bankmachine5_openrow = 13'd0;
wire netsoc_sdram_bankmachine5_hit;
reg netsoc_sdram_bankmachine5_track_open = 1'd0;
reg netsoc_sdram_bankmachine5_track_close = 1'd0;
reg netsoc_sdram_bankmachine5_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine5_wait;
wire netsoc_sdram_bankmachine5_done;
reg [2:0] netsoc_sdram_bankmachine5_count = 3'd4;
wire netsoc_sdram_bankmachine6_req_valid;
wire netsoc_sdram_bankmachine6_req_ready;
wire netsoc_sdram_bankmachine6_req_we;
wire [20:0] netsoc_sdram_bankmachine6_req_adr;
wire netsoc_sdram_bankmachine6_req_lock;
reg netsoc_sdram_bankmachine6_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine6_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine6_refresh_req;
reg netsoc_sdram_bankmachine6_refresh_gnt = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_ready = 1'd0;
reg [12:0] netsoc_sdram_bankmachine6_cmd_payload_a = 13'd0;
wire [2:0] netsoc_sdram_bankmachine6_cmd_payload_ba;
reg netsoc_sdram_bankmachine6_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_payload_is_write = 1'd0;
wire netsoc_sdram_bankmachine6_sink_valid;
wire netsoc_sdram_bankmachine6_sink_ready;
reg netsoc_sdram_bankmachine6_sink_first = 1'd0;
reg netsoc_sdram_bankmachine6_sink_last = 1'd0;
wire netsoc_sdram_bankmachine6_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine6_sink_payload_adr;
wire netsoc_sdram_bankmachine6_source_valid;
wire netsoc_sdram_bankmachine6_source_ready;
wire netsoc_sdram_bankmachine6_source_first;
wire netsoc_sdram_bankmachine6_source_last;
wire netsoc_sdram_bankmachine6_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine6_source_payload_adr;
wire netsoc_sdram_bankmachine6_syncfifo6_we;
wire netsoc_sdram_bankmachine6_syncfifo6_writable;
wire netsoc_sdram_bankmachine6_syncfifo6_re;
wire netsoc_sdram_bankmachine6_syncfifo6_readable;
wire [23:0] netsoc_sdram_bankmachine6_syncfifo6_din;
wire [23:0] netsoc_sdram_bankmachine6_syncfifo6_dout;
reg [3:0] netsoc_sdram_bankmachine6_level = 4'd0;
reg netsoc_sdram_bankmachine6_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine6_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine6_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine6_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine6_wrport_dat_r;
wire netsoc_sdram_bankmachine6_wrport_we;
wire [23:0] netsoc_sdram_bankmachine6_wrport_dat_w;
wire netsoc_sdram_bankmachine6_do_read;
wire [2:0] netsoc_sdram_bankmachine6_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine6_rdport_dat_r;
wire netsoc_sdram_bankmachine6_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine6_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine6_fifo_in_first;
wire netsoc_sdram_bankmachine6_fifo_in_last;
wire netsoc_sdram_bankmachine6_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine6_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine6_fifo_out_first;
wire netsoc_sdram_bankmachine6_fifo_out_last;
reg netsoc_sdram_bankmachine6_has_openrow = 1'd0;
reg [12:0] netsoc_sdram_bankmachine6_openrow = 13'd0;
wire netsoc_sdram_bankmachine6_hit;
reg netsoc_sdram_bankmachine6_track_open = 1'd0;
reg netsoc_sdram_bankmachine6_track_close = 1'd0;
reg netsoc_sdram_bankmachine6_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine6_wait;
wire netsoc_sdram_bankmachine6_done;
reg [2:0] netsoc_sdram_bankmachine6_count = 3'd4;
wire netsoc_sdram_bankmachine7_req_valid;
wire netsoc_sdram_bankmachine7_req_ready;
wire netsoc_sdram_bankmachine7_req_we;
wire [20:0] netsoc_sdram_bankmachine7_req_adr;
wire netsoc_sdram_bankmachine7_req_lock;
reg netsoc_sdram_bankmachine7_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine7_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine7_refresh_req;
reg netsoc_sdram_bankmachine7_refresh_gnt = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_ready = 1'd0;
reg [12:0] netsoc_sdram_bankmachine7_cmd_payload_a = 13'd0;
wire [2:0] netsoc_sdram_bankmachine7_cmd_payload_ba;
reg netsoc_sdram_bankmachine7_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_payload_is_write = 1'd0;
wire netsoc_sdram_bankmachine7_sink_valid;
wire netsoc_sdram_bankmachine7_sink_ready;
reg netsoc_sdram_bankmachine7_sink_first = 1'd0;
reg netsoc_sdram_bankmachine7_sink_last = 1'd0;
wire netsoc_sdram_bankmachine7_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine7_sink_payload_adr;
wire netsoc_sdram_bankmachine7_source_valid;
wire netsoc_sdram_bankmachine7_source_ready;
wire netsoc_sdram_bankmachine7_source_first;
wire netsoc_sdram_bankmachine7_source_last;
wire netsoc_sdram_bankmachine7_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine7_source_payload_adr;
wire netsoc_sdram_bankmachine7_syncfifo7_we;
wire netsoc_sdram_bankmachine7_syncfifo7_writable;
wire netsoc_sdram_bankmachine7_syncfifo7_re;
wire netsoc_sdram_bankmachine7_syncfifo7_readable;
wire [23:0] netsoc_sdram_bankmachine7_syncfifo7_din;
wire [23:0] netsoc_sdram_bankmachine7_syncfifo7_dout;
reg [3:0] netsoc_sdram_bankmachine7_level = 4'd0;
reg netsoc_sdram_bankmachine7_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine7_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine7_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine7_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine7_wrport_dat_r;
wire netsoc_sdram_bankmachine7_wrport_we;
wire [23:0] netsoc_sdram_bankmachine7_wrport_dat_w;
wire netsoc_sdram_bankmachine7_do_read;
wire [2:0] netsoc_sdram_bankmachine7_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine7_rdport_dat_r;
wire netsoc_sdram_bankmachine7_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine7_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine7_fifo_in_first;
wire netsoc_sdram_bankmachine7_fifo_in_last;
wire netsoc_sdram_bankmachine7_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine7_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine7_fifo_out_first;
wire netsoc_sdram_bankmachine7_fifo_out_last;
reg netsoc_sdram_bankmachine7_has_openrow = 1'd0;
reg [12:0] netsoc_sdram_bankmachine7_openrow = 13'd0;
wire netsoc_sdram_bankmachine7_hit;
reg netsoc_sdram_bankmachine7_track_open = 1'd0;
reg netsoc_sdram_bankmachine7_track_close = 1'd0;
reg netsoc_sdram_bankmachine7_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine7_wait;
wire netsoc_sdram_bankmachine7_done;
reg [2:0] netsoc_sdram_bankmachine7_count = 3'd4;
reg netsoc_sdram_choose_cmd_want_reads = 1'd0;
reg netsoc_sdram_choose_cmd_want_writes = 1'd0;
reg netsoc_sdram_choose_cmd_want_cmds = 1'd0;
wire netsoc_sdram_choose_cmd_cmd_valid;
reg netsoc_sdram_choose_cmd_cmd_ready = 1'd0;
wire [12:0] netsoc_sdram_choose_cmd_cmd_payload_a;
wire [2:0] netsoc_sdram_choose_cmd_cmd_payload_ba;
reg netsoc_sdram_choose_cmd_cmd_payload_cas = 1'd0;
reg netsoc_sdram_choose_cmd_cmd_payload_ras = 1'd0;
reg netsoc_sdram_choose_cmd_cmd_payload_we = 1'd0;
wire netsoc_sdram_choose_cmd_cmd_payload_is_cmd;
wire netsoc_sdram_choose_cmd_cmd_payload_is_read;
wire netsoc_sdram_choose_cmd_cmd_payload_is_write;
reg [7:0] netsoc_sdram_choose_cmd_valids = 8'd0;
wire [7:0] netsoc_sdram_choose_cmd_request;
reg [2:0] netsoc_sdram_choose_cmd_grant = 3'd0;
wire netsoc_sdram_choose_cmd_ce;
reg netsoc_sdram_choose_req_want_reads = 1'd0;
reg netsoc_sdram_choose_req_want_writes = 1'd0;
reg netsoc_sdram_choose_req_want_cmds = 1'd0;
wire netsoc_sdram_choose_req_cmd_valid;
reg netsoc_sdram_choose_req_cmd_ready = 1'd0;
wire [12:0] netsoc_sdram_choose_req_cmd_payload_a;
wire [2:0] netsoc_sdram_choose_req_cmd_payload_ba;
reg netsoc_sdram_choose_req_cmd_payload_cas = 1'd0;
reg netsoc_sdram_choose_req_cmd_payload_ras = 1'd0;
reg netsoc_sdram_choose_req_cmd_payload_we = 1'd0;
wire netsoc_sdram_choose_req_cmd_payload_is_cmd;
wire netsoc_sdram_choose_req_cmd_payload_is_read;
wire netsoc_sdram_choose_req_cmd_payload_is_write;
reg [7:0] netsoc_sdram_choose_req_valids = 8'd0;
wire [7:0] netsoc_sdram_choose_req_request;
reg [2:0] netsoc_sdram_choose_req_grant = 3'd0;
wire netsoc_sdram_choose_req_ce;
reg [12:0] netsoc_sdram_nop_a = 13'd0;
reg [2:0] netsoc_sdram_nop_ba = 3'd0;
reg netsoc_sdram_nop_cas = 1'd0;
reg netsoc_sdram_nop_ras = 1'd0;
reg netsoc_sdram_nop_we = 1'd0;
reg [1:0] netsoc_sdram_sel0 = 2'd0;
reg [1:0] netsoc_sdram_sel1 = 2'd0;
wire netsoc_sdram_read_available;
wire netsoc_sdram_write_available;
reg netsoc_sdram_en0 = 1'd0;
wire netsoc_sdram_max_time0;
reg [4:0] netsoc_sdram_time0 = 5'd0;
reg netsoc_sdram_en1 = 1'd0;
wire netsoc_sdram_max_time1;
reg [3:0] netsoc_sdram_time1 = 4'd0;
wire netsoc_sdram_go_to_refresh;
wire netsoc_sdram_bandwidth_update_re;
wire netsoc_sdram_bandwidth_update_r;
reg netsoc_sdram_bandwidth_update_w = 1'd0;
reg [23:0] netsoc_sdram_bandwidth_nreads_status = 24'd0;
reg [23:0] netsoc_sdram_bandwidth_nwrites_status = 24'd0;
reg [6:0] netsoc_sdram_bandwidth_data_width_status = 7'd64;
reg netsoc_sdram_bandwidth_cmd_valid = 1'd0;
reg netsoc_sdram_bandwidth_cmd_ready = 1'd0;
reg netsoc_sdram_bandwidth_cmd_is_read = 1'd0;
reg netsoc_sdram_bandwidth_cmd_is_write = 1'd0;
reg [23:0] netsoc_sdram_bandwidth_counter = 24'd0;
reg netsoc_sdram_bandwidth_period = 1'd0;
reg [23:0] netsoc_sdram_bandwidth_nreads = 24'd0;
reg [23:0] netsoc_sdram_bandwidth_nwrites = 24'd0;
reg [23:0] netsoc_sdram_bandwidth_nreads_r = 24'd0;
reg [23:0] netsoc_sdram_bandwidth_nwrites_r = 24'd0;
wire [29:0] netsoc_interface1_wb_sdram_adr;
wire [31:0] netsoc_interface1_wb_sdram_dat_w;
wire [31:0] netsoc_interface1_wb_sdram_dat_r;
wire [3:0] netsoc_interface1_wb_sdram_sel;
wire netsoc_interface1_wb_sdram_cyc;
wire netsoc_interface1_wb_sdram_stb;
wire netsoc_interface1_wb_sdram_ack;
wire netsoc_interface1_wb_sdram_we;
wire [2:0] netsoc_interface1_wb_sdram_cti;
wire [1:0] netsoc_interface1_wb_sdram_bte;
wire netsoc_interface1_wb_sdram_err;
reg netsoc_port_cmd_valid = 1'd0;
wire netsoc_port_cmd_ready;
reg netsoc_port_cmd_payload_we = 1'd0;
wire [23:0] netsoc_port_cmd_payload_adr;
reg netsoc_port_wdata_valid = 1'd0;
wire netsoc_port_wdata_ready;
wire [63:0] netsoc_port_wdata_payload_data;
wire [7:0] netsoc_port_wdata_payload_we;
wire netsoc_port_rdata_valid;
reg netsoc_port_rdata_ready = 1'd0;
wire [63:0] netsoc_port_rdata_payload_data;
wire [29:0] netsoc_interface_adr;
wire [63:0] netsoc_interface_dat_w;
wire [63:0] netsoc_interface_dat_r;
wire [7:0] netsoc_interface_sel;
reg netsoc_interface_cyc = 1'd0;
reg netsoc_interface_stb = 1'd0;
reg netsoc_interface_ack = 1'd0;
reg netsoc_interface_we = 1'd0;
wire [9:0] netsoc_data_port_adr;
wire [63:0] netsoc_data_port_dat_r;
reg [7:0] netsoc_data_port_we = 8'd0;
reg [63:0] netsoc_data_port_dat_w = 64'd0;
reg netsoc_write_from_slave = 1'd0;
reg netsoc_adr_offset_r = 1'd0;
wire [9:0] netsoc_tag_port_adr;
wire [21:0] netsoc_tag_port_dat_r;
reg netsoc_tag_port_we = 1'd0;
wire [21:0] netsoc_tag_port_dat_w;
wire [20:0] netsoc_tag_do_tag;
wire netsoc_tag_do_dirty;
wire [20:0] netsoc_tag_di_tag;
reg netsoc_tag_di_dirty = 1'd0;
reg netsoc_word_clr = 1'd0;
reg netsoc_word_inc = 1'd0;
reg ethphy_mode0 = 1'd0;
wire ethphy_mode_status;
reg ethphy_mode1 = 1'd0;
reg ethphy_update_mode = 1'd0;
wire ethphy_eth_tick;
reg [9:0] ethphy_eth_counter = 10'd0;
wire ethphy_sys_tick;
wire ethphy_i;
wire ethphy_o;
reg ethphy_toggle_i = 1'd0;
wire ethphy_toggle_o;
reg ethphy_toggle_o_r = 1'd0;
reg [23:0] ethphy_sys_counter = 24'd0;
reg ethphy_sys_counter_reset = 1'd0;
reg ethphy_sys_counter_ce = 1'd0;
reg ethphy_reset_storage_full = 1'd0;
wire ethphy_reset_storage;
reg ethphy_reset_re = 1'd0;
(* keep = "true" *) wire eth_rx_clk;
wire eth_rx_rst;
(* keep = "true" *) wire eth_tx_clk;
wire eth_tx_rst;
wire ethphy_reset0;
wire ethphy_reset1;
reg [8:0] ethphy_counter = 9'd0;
wire ethphy_counter_done;
wire ethphy_counter_ce;
wire ethphy_liteethphygmiimiitx_sink_sink_valid0;
wire ethphy_liteethphygmiimiitx_sink_sink_ready0;
wire ethphy_liteethphygmiimiitx_sink_sink_first0;
wire ethphy_liteethphygmiimiitx_sink_sink_last0;
wire [7:0] ethphy_liteethphygmiimiitx_sink_sink_payload_data0;
wire ethphy_liteethphygmiimiitx_sink_sink_payload_last_be0;
wire ethphy_liteethphygmiimiitx_sink_sink_payload_error0;
reg ethphy_liteethphygmiimiitx_gmii_tx_pads_tx_er = 1'd0;
reg ethphy_liteethphygmiimiitx_gmii_tx_pads_tx_en = 1'd0;
reg [7:0] ethphy_liteethphygmiimiitx_gmii_tx_pads_tx_data = 8'd0;
wire ethphy_liteethphygmiimiitx_gmii_tx_sink_valid;
reg ethphy_liteethphygmiimiitx_gmii_tx_sink_ready = 1'd0;
wire ethphy_liteethphygmiimiitx_gmii_tx_sink_first;
wire ethphy_liteethphygmiimiitx_gmii_tx_sink_last;
wire [7:0] ethphy_liteethphygmiimiitx_gmii_tx_sink_payload_data;
wire ethphy_liteethphygmiimiitx_gmii_tx_sink_payload_last_be;
wire ethphy_liteethphygmiimiitx_gmii_tx_sink_payload_error;
reg ethphy_liteethphygmiimiitx_mii_tx_pads_tx_er = 1'd0;
reg ethphy_liteethphygmiimiitx_mii_tx_pads_tx_en = 1'd0;
reg [7:0] ethphy_liteethphygmiimiitx_mii_tx_pads_tx_data = 8'd0;
wire ethphy_liteethphygmiimiitx_sink_sink_valid1;
wire ethphy_liteethphygmiimiitx_sink_sink_ready1;
wire ethphy_liteethphygmiimiitx_sink_sink_first1;
wire ethphy_liteethphygmiimiitx_sink_sink_last1;
wire [7:0] ethphy_liteethphygmiimiitx_sink_sink_payload_data1;
wire ethphy_liteethphygmiimiitx_sink_sink_payload_last_be1;
wire ethphy_liteethphygmiimiitx_sink_sink_payload_error1;
wire ethphy_liteethphygmiimiitx_converter_sink_valid;
wire ethphy_liteethphygmiimiitx_converter_sink_ready;
reg ethphy_liteethphygmiimiitx_converter_sink_first = 1'd0;
reg ethphy_liteethphygmiimiitx_converter_sink_last = 1'd0;
wire [7:0] ethphy_liteethphygmiimiitx_converter_sink_payload_data;
wire ethphy_liteethphygmiimiitx_converter_source_valid;
wire ethphy_liteethphygmiimiitx_converter_source_ready;
wire ethphy_liteethphygmiimiitx_converter_source_first;
wire ethphy_liteethphygmiimiitx_converter_source_last;
wire [3:0] ethphy_liteethphygmiimiitx_converter_source_payload_data;
wire ethphy_liteethphygmiimiitx_converter_converter_sink_valid;
wire ethphy_liteethphygmiimiitx_converter_converter_sink_ready;
wire ethphy_liteethphygmiimiitx_converter_converter_sink_first;
wire ethphy_liteethphygmiimiitx_converter_converter_sink_last;
reg [7:0] ethphy_liteethphygmiimiitx_converter_converter_sink_payload_data = 8'd0;
wire ethphy_liteethphygmiimiitx_converter_converter_source_valid;
wire ethphy_liteethphygmiimiitx_converter_converter_source_ready;
wire ethphy_liteethphygmiimiitx_converter_converter_source_first;
wire ethphy_liteethphygmiimiitx_converter_converter_source_last;
reg [3:0] ethphy_liteethphygmiimiitx_converter_converter_source_payload_data = 4'd0;
wire ethphy_liteethphygmiimiitx_converter_converter_source_payload_valid_token_count;
reg ethphy_liteethphygmiimiitx_converter_converter_mux = 1'd0;
wire ethphy_liteethphygmiimiitx_converter_converter_first;
wire ethphy_liteethphygmiimiitx_converter_converter_last;
wire ethphy_liteethphygmiimiitx_converter_source_source_valid;
wire ethphy_liteethphygmiimiitx_converter_source_source_ready;
wire ethphy_liteethphygmiimiitx_converter_source_source_first;
wire ethphy_liteethphygmiimiitx_converter_source_source_last;
wire [3:0] ethphy_liteethphygmiimiitx_converter_source_source_payload_data;
wire ethphy_liteethphygmiimiitx_demux_sink_valid;
reg ethphy_liteethphygmiimiitx_demux_sink_ready = 1'd0;
wire ethphy_liteethphygmiimiitx_demux_sink_first;
wire ethphy_liteethphygmiimiitx_demux_sink_last;
wire [7:0] ethphy_liteethphygmiimiitx_demux_sink_payload_data;
wire ethphy_liteethphygmiimiitx_demux_sink_payload_last_be;
wire ethphy_liteethphygmiimiitx_demux_sink_payload_error;
reg ethphy_liteethphygmiimiitx_demux_endpoint0_source_valid = 1'd0;
wire ethphy_liteethphygmiimiitx_demux_endpoint0_source_ready;
reg ethphy_liteethphygmiimiitx_demux_endpoint0_source_first = 1'd0;
reg ethphy_liteethphygmiimiitx_demux_endpoint0_source_last = 1'd0;
reg [7:0] ethphy_liteethphygmiimiitx_demux_endpoint0_source_payload_data = 8'd0;
reg ethphy_liteethphygmiimiitx_demux_endpoint0_source_payload_last_be = 1'd0;
reg ethphy_liteethphygmiimiitx_demux_endpoint0_source_payload_error = 1'd0;
reg ethphy_liteethphygmiimiitx_demux_endpoint1_source_valid = 1'd0;
wire ethphy_liteethphygmiimiitx_demux_endpoint1_source_ready;
reg ethphy_liteethphygmiimiitx_demux_endpoint1_source_first = 1'd0;
reg ethphy_liteethphygmiimiitx_demux_endpoint1_source_last = 1'd0;
reg [7:0] ethphy_liteethphygmiimiitx_demux_endpoint1_source_payload_data = 8'd0;
reg ethphy_liteethphygmiimiitx_demux_endpoint1_source_payload_last_be = 1'd0;
reg ethphy_liteethphygmiimiitx_demux_endpoint1_source_payload_error = 1'd0;
wire ethphy_liteethphygmiimiitx_demux_sel;
wire ethphy_liteethphygmiimiirx_source_source_valid0;
wire ethphy_liteethphygmiimiirx_source_source_ready0;
wire ethphy_liteethphygmiimiirx_source_source_first0;
wire ethphy_liteethphygmiimiirx_source_source_last0;
wire [7:0] ethphy_liteethphygmiimiirx_source_source_payload_data0;
wire ethphy_liteethphygmiimiirx_source_source_payload_last_be0;
wire ethphy_liteethphygmiimiirx_source_source_payload_error0;
reg ethphy_liteethphygmiimiirx_pads_d_dv = 1'd0;
reg [7:0] ethphy_liteethphygmiimiirx_pads_d_rx_data = 8'd0;
reg ethphy_liteethphygmiimiirx_gmii_rx_source_valid = 1'd0;
wire ethphy_liteethphygmiimiirx_gmii_rx_source_ready;
reg ethphy_liteethphygmiimiirx_gmii_rx_source_first = 1'd0;
wire ethphy_liteethphygmiimiirx_gmii_rx_source_last;
reg [7:0] ethphy_liteethphygmiimiirx_gmii_rx_source_payload_data = 8'd0;
reg ethphy_liteethphygmiimiirx_gmii_rx_source_payload_last_be = 1'd0;
reg ethphy_liteethphygmiimiirx_gmii_rx_source_payload_error = 1'd0;
reg ethphy_liteethphygmiimiirx_gmii_rx_dv_d = 1'd0;
wire ethphy_liteethphygmiimiirx_source_source_valid1;
wire ethphy_liteethphygmiimiirx_source_source_ready1;
wire ethphy_liteethphygmiimiirx_source_source_first1;
wire ethphy_liteethphygmiimiirx_source_source_last1;
wire [7:0] ethphy_liteethphygmiimiirx_source_source_payload_data1;
reg ethphy_liteethphygmiimiirx_source_source_payload_last_be1 = 1'd0;
reg ethphy_liteethphygmiimiirx_source_source_payload_error1 = 1'd0;
reg ethphy_liteethphygmiimiirx_converter_sink_valid = 1'd0;
wire ethphy_liteethphygmiimiirx_converter_sink_ready;
reg ethphy_liteethphygmiimiirx_converter_sink_first = 1'd0;
wire ethphy_liteethphygmiimiirx_converter_sink_last;
reg [3:0] ethphy_liteethphygmiimiirx_converter_sink_payload_data = 4'd0;
wire ethphy_liteethphygmiimiirx_converter_source_valid;
wire ethphy_liteethphygmiimiirx_converter_source_ready;
wire ethphy_liteethphygmiimiirx_converter_source_first;
wire ethphy_liteethphygmiimiirx_converter_source_last;
reg [7:0] ethphy_liteethphygmiimiirx_converter_source_payload_data = 8'd0;
wire ethphy_liteethphygmiimiirx_converter_converter_sink_valid;
wire ethphy_liteethphygmiimiirx_converter_converter_sink_ready;
wire ethphy_liteethphygmiimiirx_converter_converter_sink_first;
wire ethphy_liteethphygmiimiirx_converter_converter_sink_last;
wire [3:0] ethphy_liteethphygmiimiirx_converter_converter_sink_payload_data;
wire ethphy_liteethphygmiimiirx_converter_converter_source_valid;
wire ethphy_liteethphygmiimiirx_converter_converter_source_ready;
reg ethphy_liteethphygmiimiirx_converter_converter_source_first = 1'd0;
reg ethphy_liteethphygmiimiirx_converter_converter_source_last = 1'd0;
reg [7:0] ethphy_liteethphygmiimiirx_converter_converter_source_payload_data = 8'd0;
reg [1:0] ethphy_liteethphygmiimiirx_converter_converter_source_payload_valid_token_count = 2'd0;
reg ethphy_liteethphygmiimiirx_converter_converter_demux = 1'd0;
wire ethphy_liteethphygmiimiirx_converter_converter_load_part;
reg ethphy_liteethphygmiimiirx_converter_converter_strobe_all = 1'd0;
wire ethphy_liteethphygmiimiirx_converter_source_source_valid;
wire ethphy_liteethphygmiimiirx_converter_source_source_ready;
wire ethphy_liteethphygmiimiirx_converter_source_source_first;
wire ethphy_liteethphygmiimiirx_converter_source_source_last;
wire [7:0] ethphy_liteethphygmiimiirx_converter_source_source_payload_data;
reg ethphy_liteethphygmiimiirx_converter_reset = 1'd0;
reg ethphy_liteethphygmiimiirx_mux_source_valid = 1'd0;
wire ethphy_liteethphygmiimiirx_mux_source_ready;
reg ethphy_liteethphygmiimiirx_mux_source_first = 1'd0;
reg ethphy_liteethphygmiimiirx_mux_source_last = 1'd0;
reg [7:0] ethphy_liteethphygmiimiirx_mux_source_payload_data = 8'd0;
reg ethphy_liteethphygmiimiirx_mux_source_payload_last_be = 1'd0;
reg ethphy_liteethphygmiimiirx_mux_source_payload_error = 1'd0;
wire ethphy_liteethphygmiimiirx_mux_endpoint0_sink_valid;
reg ethphy_liteethphygmiimiirx_mux_endpoint0_sink_ready = 1'd0;
wire ethphy_liteethphygmiimiirx_mux_endpoint0_sink_first;
wire ethphy_liteethphygmiimiirx_mux_endpoint0_sink_last;
wire [7:0] ethphy_liteethphygmiimiirx_mux_endpoint0_sink_payload_data;
wire ethphy_liteethphygmiimiirx_mux_endpoint0_sink_payload_last_be;
wire ethphy_liteethphygmiimiirx_mux_endpoint0_sink_payload_error;
wire ethphy_liteethphygmiimiirx_mux_endpoint1_sink_valid;
reg ethphy_liteethphygmiimiirx_mux_endpoint1_sink_ready = 1'd0;
wire ethphy_liteethphygmiimiirx_mux_endpoint1_sink_first;
wire ethphy_liteethphygmiimiirx_mux_endpoint1_sink_last;
wire [7:0] ethphy_liteethphygmiimiirx_mux_endpoint1_sink_payload_data;
wire ethphy_liteethphygmiimiirx_mux_endpoint1_sink_payload_last_be;
wire ethphy_liteethphygmiimiirx_mux_endpoint1_sink_payload_error;
wire ethphy_liteethphygmiimiirx_mux_sel;
reg [2:0] ethphy_storage_full = 3'd0;
wire [2:0] ethphy_storage;
reg ethphy_re = 1'd0;
wire ethphy_status;
wire ethphy_data_w;
wire ethphy_data_oe;
wire ethphy_data_r;
wire ethmac_tx_gap_inserter_sink_valid;
reg ethmac_tx_gap_inserter_sink_ready = 1'd0;
wire ethmac_tx_gap_inserter_sink_first;
wire ethmac_tx_gap_inserter_sink_last;
wire [7:0] ethmac_tx_gap_inserter_sink_payload_data;
wire ethmac_tx_gap_inserter_sink_payload_last_be;
wire ethmac_tx_gap_inserter_sink_payload_error;
reg ethmac_tx_gap_inserter_source_valid = 1'd0;
wire ethmac_tx_gap_inserter_source_ready;
reg ethmac_tx_gap_inserter_source_first = 1'd0;
reg ethmac_tx_gap_inserter_source_last = 1'd0;
reg [7:0] ethmac_tx_gap_inserter_source_payload_data = 8'd0;
reg ethmac_tx_gap_inserter_source_payload_last_be = 1'd0;
reg ethmac_tx_gap_inserter_source_payload_error = 1'd0;
reg [3:0] ethmac_tx_gap_inserter_counter = 4'd0;
reg ethmac_tx_gap_inserter_counter_reset = 1'd0;
reg ethmac_tx_gap_inserter_counter_ce = 1'd0;
reg ethmac_preamble_crc_status = 1'd1;
reg [31:0] ethmac_preamble_errors_status = 32'd0;
reg [31:0] ethmac_crc_errors_status = 32'd0;
wire ethmac_preamble_inserter_sink_valid;
reg ethmac_preamble_inserter_sink_ready = 1'd0;
wire ethmac_preamble_inserter_sink_first;
wire ethmac_preamble_inserter_sink_last;
wire [7:0] ethmac_preamble_inserter_sink_payload_data;
wire ethmac_preamble_inserter_sink_payload_last_be;
wire ethmac_preamble_inserter_sink_payload_error;
reg ethmac_preamble_inserter_source_valid = 1'd0;
wire ethmac_preamble_inserter_source_ready;
reg ethmac_preamble_inserter_source_first = 1'd0;
reg ethmac_preamble_inserter_source_last = 1'd0;
reg [7:0] ethmac_preamble_inserter_source_payload_data = 8'd0;
wire ethmac_preamble_inserter_source_payload_last_be;
reg ethmac_preamble_inserter_source_payload_error = 1'd0;
reg [63:0] ethmac_preamble_inserter_preamble = 64'd15372286728091293013;
reg [2:0] ethmac_preamble_inserter_cnt = 3'd0;
reg ethmac_preamble_inserter_clr_cnt = 1'd0;
reg ethmac_preamble_inserter_inc_cnt = 1'd0;
wire ethmac_preamble_checker_sink_valid;
reg ethmac_preamble_checker_sink_ready = 1'd0;
wire ethmac_preamble_checker_sink_first;
wire ethmac_preamble_checker_sink_last;
wire [7:0] ethmac_preamble_checker_sink_payload_data;
wire ethmac_preamble_checker_sink_payload_last_be;
wire ethmac_preamble_checker_sink_payload_error;
reg ethmac_preamble_checker_source_valid = 1'd0;
wire ethmac_preamble_checker_source_ready;
reg ethmac_preamble_checker_source_first = 1'd0;
reg ethmac_preamble_checker_source_last = 1'd0;
wire [7:0] ethmac_preamble_checker_source_payload_data;
wire ethmac_preamble_checker_source_payload_last_be;
reg ethmac_preamble_checker_source_payload_error = 1'd0;
reg ethmac_preamble_checker_error = 1'd0;
wire ethmac_crc32_inserter_sink_valid;
reg ethmac_crc32_inserter_sink_ready = 1'd0;
wire ethmac_crc32_inserter_sink_first;
wire ethmac_crc32_inserter_sink_last;
wire [7:0] ethmac_crc32_inserter_sink_payload_data;
wire ethmac_crc32_inserter_sink_payload_last_be;
wire ethmac_crc32_inserter_sink_payload_error;
reg ethmac_crc32_inserter_source_valid = 1'd0;
wire ethmac_crc32_inserter_source_ready;
reg ethmac_crc32_inserter_source_first = 1'd0;
reg ethmac_crc32_inserter_source_last = 1'd0;
reg [7:0] ethmac_crc32_inserter_source_payload_data = 8'd0;
reg ethmac_crc32_inserter_source_payload_last_be = 1'd0;
reg ethmac_crc32_inserter_source_payload_error = 1'd0;
reg [7:0] ethmac_crc32_inserter_data0 = 8'd0;
wire [31:0] ethmac_crc32_inserter_value;
wire ethmac_crc32_inserter_error;
wire [7:0] ethmac_crc32_inserter_data1;
wire [31:0] ethmac_crc32_inserter_last;
reg [31:0] ethmac_crc32_inserter_next = 32'd0;
reg [31:0] ethmac_crc32_inserter_reg = 32'd4294967295;
reg ethmac_crc32_inserter_ce = 1'd0;
reg ethmac_crc32_inserter_reset = 1'd0;
reg [1:0] ethmac_crc32_inserter_cnt = 2'd3;
wire ethmac_crc32_inserter_cnt_done;
reg ethmac_crc32_inserter_is_ongoing0 = 1'd0;
reg ethmac_crc32_inserter_is_ongoing1 = 1'd0;
wire ethmac_crc32_checker_sink_sink_valid;
reg ethmac_crc32_checker_sink_sink_ready = 1'd0;
wire ethmac_crc32_checker_sink_sink_first;
wire ethmac_crc32_checker_sink_sink_last;
wire [7:0] ethmac_crc32_checker_sink_sink_payload_data;
wire ethmac_crc32_checker_sink_sink_payload_last_be;
wire ethmac_crc32_checker_sink_sink_payload_error;
wire ethmac_crc32_checker_source_source_valid;
wire ethmac_crc32_checker_source_source_ready;
reg ethmac_crc32_checker_source_source_first = 1'd0;
wire ethmac_crc32_checker_source_source_last;
wire [7:0] ethmac_crc32_checker_source_source_payload_data;
wire ethmac_crc32_checker_source_source_payload_last_be;
reg ethmac_crc32_checker_source_source_payload_error = 1'd0;
wire ethmac_crc32_checker_error;
wire [7:0] ethmac_crc32_checker_crc_data0;
wire [31:0] ethmac_crc32_checker_crc_value;
wire ethmac_crc32_checker_crc_error;
wire [7:0] ethmac_crc32_checker_crc_data1;
wire [31:0] ethmac_crc32_checker_crc_last;
reg [31:0] ethmac_crc32_checker_crc_next = 32'd0;
reg [31:0] ethmac_crc32_checker_crc_reg = 32'd4294967295;
reg ethmac_crc32_checker_crc_ce = 1'd0;
reg ethmac_crc32_checker_crc_reset = 1'd0;
reg ethmac_crc32_checker_syncfifo_sink_valid = 1'd0;
wire ethmac_crc32_checker_syncfifo_sink_ready;
wire ethmac_crc32_checker_syncfifo_sink_first;
wire ethmac_crc32_checker_syncfifo_sink_last;
wire [7:0] ethmac_crc32_checker_syncfifo_sink_payload_data;
wire ethmac_crc32_checker_syncfifo_sink_payload_last_be;
wire ethmac_crc32_checker_syncfifo_sink_payload_error;
wire ethmac_crc32_checker_syncfifo_source_valid;
wire ethmac_crc32_checker_syncfifo_source_ready;
wire ethmac_crc32_checker_syncfifo_source_first;
wire ethmac_crc32_checker_syncfifo_source_last;
wire [7:0] ethmac_crc32_checker_syncfifo_source_payload_data;
wire ethmac_crc32_checker_syncfifo_source_payload_last_be;
wire ethmac_crc32_checker_syncfifo_source_payload_error;
wire ethmac_crc32_checker_syncfifo_syncfifo_we;
wire ethmac_crc32_checker_syncfifo_syncfifo_writable;
wire ethmac_crc32_checker_syncfifo_syncfifo_re;
wire ethmac_crc32_checker_syncfifo_syncfifo_readable;
wire [11:0] ethmac_crc32_checker_syncfifo_syncfifo_din;
wire [11:0] ethmac_crc32_checker_syncfifo_syncfifo_dout;
reg [2:0] ethmac_crc32_checker_syncfifo_level = 3'd0;
reg ethmac_crc32_checker_syncfifo_replace = 1'd0;
reg [2:0] ethmac_crc32_checker_syncfifo_produce = 3'd0;
reg [2:0] ethmac_crc32_checker_syncfifo_consume = 3'd0;
reg [2:0] ethmac_crc32_checker_syncfifo_wrport_adr = 3'd0;
wire [11:0] ethmac_crc32_checker_syncfifo_wrport_dat_r;
wire ethmac_crc32_checker_syncfifo_wrport_we;
wire [11:0] ethmac_crc32_checker_syncfifo_wrport_dat_w;
wire ethmac_crc32_checker_syncfifo_do_read;
wire [2:0] ethmac_crc32_checker_syncfifo_rdport_adr;
wire [11:0] ethmac_crc32_checker_syncfifo_rdport_dat_r;
wire [7:0] ethmac_crc32_checker_syncfifo_fifo_in_payload_data;
wire ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be;
wire ethmac_crc32_checker_syncfifo_fifo_in_payload_error;
wire ethmac_crc32_checker_syncfifo_fifo_in_first;
wire ethmac_crc32_checker_syncfifo_fifo_in_last;
wire [7:0] ethmac_crc32_checker_syncfifo_fifo_out_payload_data;
wire ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be;
wire ethmac_crc32_checker_syncfifo_fifo_out_payload_error;
wire ethmac_crc32_checker_syncfifo_fifo_out_first;
wire ethmac_crc32_checker_syncfifo_fifo_out_last;
reg ethmac_crc32_checker_fifo_reset = 1'd0;
wire ethmac_crc32_checker_fifo_in;
wire ethmac_crc32_checker_fifo_out;
wire ethmac_crc32_checker_fifo_full;
wire ethmac_ps_preamble_error_i;
wire ethmac_ps_preamble_error_o;
reg ethmac_ps_preamble_error_toggle_i = 1'd0;
wire ethmac_ps_preamble_error_toggle_o;
reg ethmac_ps_preamble_error_toggle_o_r = 1'd0;
wire ethmac_ps_crc_error_i;
wire ethmac_ps_crc_error_o;
reg ethmac_ps_crc_error_toggle_i = 1'd0;
wire ethmac_ps_crc_error_toggle_o;
reg ethmac_ps_crc_error_toggle_o_r = 1'd0;
wire ethmac_padding_inserter_sink_valid;
reg ethmac_padding_inserter_sink_ready = 1'd0;
wire ethmac_padding_inserter_sink_first;
wire ethmac_padding_inserter_sink_last;
wire [7:0] ethmac_padding_inserter_sink_payload_data;
wire ethmac_padding_inserter_sink_payload_last_be;
wire ethmac_padding_inserter_sink_payload_error;
reg ethmac_padding_inserter_source_valid = 1'd0;
wire ethmac_padding_inserter_source_ready;
reg ethmac_padding_inserter_source_first = 1'd0;
reg ethmac_padding_inserter_source_last = 1'd0;
reg [7:0] ethmac_padding_inserter_source_payload_data = 8'd0;
reg ethmac_padding_inserter_source_payload_last_be = 1'd0;
reg ethmac_padding_inserter_source_payload_error = 1'd0;
reg [15:0] ethmac_padding_inserter_counter = 16'd1;
wire ethmac_padding_inserter_counter_done;
reg ethmac_padding_inserter_counter_reset = 1'd0;
reg ethmac_padding_inserter_counter_ce = 1'd0;
wire ethmac_padding_checker_sink_valid;
wire ethmac_padding_checker_sink_ready;
wire ethmac_padding_checker_sink_first;
wire ethmac_padding_checker_sink_last;
wire [7:0] ethmac_padding_checker_sink_payload_data;
wire ethmac_padding_checker_sink_payload_last_be;
wire ethmac_padding_checker_sink_payload_error;
wire ethmac_padding_checker_source_valid;
wire ethmac_padding_checker_source_ready;
wire ethmac_padding_checker_source_first;
wire ethmac_padding_checker_source_last;
wire [7:0] ethmac_padding_checker_source_payload_data;
wire ethmac_padding_checker_source_payload_last_be;
wire ethmac_padding_checker_source_payload_error;
wire ethmac_tx_last_be_sink_valid;
wire ethmac_tx_last_be_sink_ready;
wire ethmac_tx_last_be_sink_first;
wire ethmac_tx_last_be_sink_last;
wire [7:0] ethmac_tx_last_be_sink_payload_data;
wire ethmac_tx_last_be_sink_payload_last_be;
wire ethmac_tx_last_be_sink_payload_error;
wire ethmac_tx_last_be_source_valid;
wire ethmac_tx_last_be_source_ready;
reg ethmac_tx_last_be_source_first = 1'd0;
wire ethmac_tx_last_be_source_last;
wire [7:0] ethmac_tx_last_be_source_payload_data;
reg ethmac_tx_last_be_source_payload_last_be = 1'd0;
reg ethmac_tx_last_be_source_payload_error = 1'd0;
reg ethmac_tx_last_be_ongoing = 1'd1;
wire ethmac_rx_last_be_sink_valid;
wire ethmac_rx_last_be_sink_ready;
wire ethmac_rx_last_be_sink_first;
wire ethmac_rx_last_be_sink_last;
wire [7:0] ethmac_rx_last_be_sink_payload_data;
wire ethmac_rx_last_be_sink_payload_last_be;
wire ethmac_rx_last_be_sink_payload_error;
wire ethmac_rx_last_be_source_valid;
wire ethmac_rx_last_be_source_ready;
wire ethmac_rx_last_be_source_first;
wire ethmac_rx_last_be_source_last;
wire [7:0] ethmac_rx_last_be_source_payload_data;
reg ethmac_rx_last_be_source_payload_last_be = 1'd0;
wire ethmac_rx_last_be_source_payload_error;
wire ethmac_tx_converter_sink_valid;
wire ethmac_tx_converter_sink_ready;
wire ethmac_tx_converter_sink_first;
wire ethmac_tx_converter_sink_last;
wire [31:0] ethmac_tx_converter_sink_payload_data;
wire [3:0] ethmac_tx_converter_sink_payload_last_be;
wire [3:0] ethmac_tx_converter_sink_payload_error;
wire ethmac_tx_converter_source_valid;
wire ethmac_tx_converter_source_ready;
wire ethmac_tx_converter_source_first;
wire ethmac_tx_converter_source_last;
wire [7:0] ethmac_tx_converter_source_payload_data;
wire ethmac_tx_converter_source_payload_last_be;
wire ethmac_tx_converter_source_payload_error;
wire ethmac_tx_converter_converter_sink_valid;
wire ethmac_tx_converter_converter_sink_ready;
wire ethmac_tx_converter_converter_sink_first;
wire ethmac_tx_converter_converter_sink_last;
reg [39:0] ethmac_tx_converter_converter_sink_payload_data = 40'd0;
wire ethmac_tx_converter_converter_source_valid;
wire ethmac_tx_converter_converter_source_ready;
wire ethmac_tx_converter_converter_source_first;
wire ethmac_tx_converter_converter_source_last;
reg [9:0] ethmac_tx_converter_converter_source_payload_data = 10'd0;
wire ethmac_tx_converter_converter_source_payload_valid_token_count;
reg [1:0] ethmac_tx_converter_converter_mux = 2'd0;
wire ethmac_tx_converter_converter_first;
wire ethmac_tx_converter_converter_last;
wire ethmac_tx_converter_source_source_valid;
wire ethmac_tx_converter_source_source_ready;
wire ethmac_tx_converter_source_source_first;
wire ethmac_tx_converter_source_source_last;
wire [9:0] ethmac_tx_converter_source_source_payload_data;
wire ethmac_rx_converter_sink_valid;
wire ethmac_rx_converter_sink_ready;
wire ethmac_rx_converter_sink_first;
wire ethmac_rx_converter_sink_last;
wire [7:0] ethmac_rx_converter_sink_payload_data;
wire ethmac_rx_converter_sink_payload_last_be;
wire ethmac_rx_converter_sink_payload_error;
wire ethmac_rx_converter_source_valid;
wire ethmac_rx_converter_source_ready;
wire ethmac_rx_converter_source_first;
wire ethmac_rx_converter_source_last;
reg [31:0] ethmac_rx_converter_source_payload_data = 32'd0;
reg [3:0] ethmac_rx_converter_source_payload_last_be = 4'd0;
reg [3:0] ethmac_rx_converter_source_payload_error = 4'd0;
wire ethmac_rx_converter_converter_sink_valid;
wire ethmac_rx_converter_converter_sink_ready;
wire ethmac_rx_converter_converter_sink_first;
wire ethmac_rx_converter_converter_sink_last;
wire [9:0] ethmac_rx_converter_converter_sink_payload_data;
wire ethmac_rx_converter_converter_source_valid;
wire ethmac_rx_converter_converter_source_ready;
reg ethmac_rx_converter_converter_source_first = 1'd0;
reg ethmac_rx_converter_converter_source_last = 1'd0;
reg [39:0] ethmac_rx_converter_converter_source_payload_data = 40'd0;
reg [2:0] ethmac_rx_converter_converter_source_payload_valid_token_count = 3'd0;
reg [1:0] ethmac_rx_converter_converter_demux = 2'd0;
wire ethmac_rx_converter_converter_load_part;
reg ethmac_rx_converter_converter_strobe_all = 1'd0;
wire ethmac_rx_converter_source_source_valid;
wire ethmac_rx_converter_source_source_ready;
wire ethmac_rx_converter_source_source_first;
wire ethmac_rx_converter_source_source_last;
wire [39:0] ethmac_rx_converter_source_source_payload_data;
wire ethmac_tx_cdc_sink_valid;
wire ethmac_tx_cdc_sink_ready;
wire ethmac_tx_cdc_sink_first;
wire ethmac_tx_cdc_sink_last;
wire [31:0] ethmac_tx_cdc_sink_payload_data;
wire [3:0] ethmac_tx_cdc_sink_payload_last_be;
wire [3:0] ethmac_tx_cdc_sink_payload_error;
wire ethmac_tx_cdc_source_valid;
wire ethmac_tx_cdc_source_ready;
wire ethmac_tx_cdc_source_first;
wire ethmac_tx_cdc_source_last;
wire [31:0] ethmac_tx_cdc_source_payload_data;
wire [3:0] ethmac_tx_cdc_source_payload_last_be;
wire [3:0] ethmac_tx_cdc_source_payload_error;
wire ethmac_tx_cdc_asyncfifo_we;
wire ethmac_tx_cdc_asyncfifo_writable;
wire ethmac_tx_cdc_asyncfifo_re;
wire ethmac_tx_cdc_asyncfifo_readable;
wire [41:0] ethmac_tx_cdc_asyncfifo_din;
wire [41:0] ethmac_tx_cdc_asyncfifo_dout;
wire ethmac_tx_cdc_graycounter0_ce;
(* register_balancing = "no" *) reg [6:0] ethmac_tx_cdc_graycounter0_q = 7'd0;
wire [6:0] ethmac_tx_cdc_graycounter0_q_next;
reg [6:0] ethmac_tx_cdc_graycounter0_q_binary = 7'd0;
reg [6:0] ethmac_tx_cdc_graycounter0_q_next_binary = 7'd0;
wire ethmac_tx_cdc_graycounter1_ce;
(* register_balancing = "no" *) reg [6:0] ethmac_tx_cdc_graycounter1_q = 7'd0;
wire [6:0] ethmac_tx_cdc_graycounter1_q_next;
reg [6:0] ethmac_tx_cdc_graycounter1_q_binary = 7'd0;
reg [6:0] ethmac_tx_cdc_graycounter1_q_next_binary = 7'd0;
wire [6:0] ethmac_tx_cdc_produce_rdomain;
wire [6:0] ethmac_tx_cdc_consume_wdomain;
wire [5:0] ethmac_tx_cdc_wrport_adr;
wire [41:0] ethmac_tx_cdc_wrport_dat_r;
wire ethmac_tx_cdc_wrport_we;
wire [41:0] ethmac_tx_cdc_wrport_dat_w;
wire [5:0] ethmac_tx_cdc_rdport_adr;
wire [41:0] ethmac_tx_cdc_rdport_dat_r;
wire [31:0] ethmac_tx_cdc_fifo_in_payload_data;
wire [3:0] ethmac_tx_cdc_fifo_in_payload_last_be;
wire [3:0] ethmac_tx_cdc_fifo_in_payload_error;
wire ethmac_tx_cdc_fifo_in_first;
wire ethmac_tx_cdc_fifo_in_last;
wire [31:0] ethmac_tx_cdc_fifo_out_payload_data;
wire [3:0] ethmac_tx_cdc_fifo_out_payload_last_be;
wire [3:0] ethmac_tx_cdc_fifo_out_payload_error;
wire ethmac_tx_cdc_fifo_out_first;
wire ethmac_tx_cdc_fifo_out_last;
wire ethmac_rx_cdc_sink_valid;
wire ethmac_rx_cdc_sink_ready;
wire ethmac_rx_cdc_sink_first;
wire ethmac_rx_cdc_sink_last;
wire [31:0] ethmac_rx_cdc_sink_payload_data;
wire [3:0] ethmac_rx_cdc_sink_payload_last_be;
wire [3:0] ethmac_rx_cdc_sink_payload_error;
wire ethmac_rx_cdc_source_valid;
wire ethmac_rx_cdc_source_ready;
wire ethmac_rx_cdc_source_first;
wire ethmac_rx_cdc_source_last;
wire [31:0] ethmac_rx_cdc_source_payload_data;
wire [3:0] ethmac_rx_cdc_source_payload_last_be;
wire [3:0] ethmac_rx_cdc_source_payload_error;
wire ethmac_rx_cdc_asyncfifo_we;
wire ethmac_rx_cdc_asyncfifo_writable;
wire ethmac_rx_cdc_asyncfifo_re;
wire ethmac_rx_cdc_asyncfifo_readable;
wire [41:0] ethmac_rx_cdc_asyncfifo_din;
wire [41:0] ethmac_rx_cdc_asyncfifo_dout;
wire ethmac_rx_cdc_graycounter0_ce;
(* register_balancing = "no" *) reg [6:0] ethmac_rx_cdc_graycounter0_q = 7'd0;
wire [6:0] ethmac_rx_cdc_graycounter0_q_next;
reg [6:0] ethmac_rx_cdc_graycounter0_q_binary = 7'd0;
reg [6:0] ethmac_rx_cdc_graycounter0_q_next_binary = 7'd0;
wire ethmac_rx_cdc_graycounter1_ce;
(* register_balancing = "no" *) reg [6:0] ethmac_rx_cdc_graycounter1_q = 7'd0;
wire [6:0] ethmac_rx_cdc_graycounter1_q_next;
reg [6:0] ethmac_rx_cdc_graycounter1_q_binary = 7'd0;
reg [6:0] ethmac_rx_cdc_graycounter1_q_next_binary = 7'd0;
wire [6:0] ethmac_rx_cdc_produce_rdomain;
wire [6:0] ethmac_rx_cdc_consume_wdomain;
wire [5:0] ethmac_rx_cdc_wrport_adr;
wire [41:0] ethmac_rx_cdc_wrport_dat_r;
wire ethmac_rx_cdc_wrport_we;
wire [41:0] ethmac_rx_cdc_wrport_dat_w;
wire [5:0] ethmac_rx_cdc_rdport_adr;
wire [41:0] ethmac_rx_cdc_rdport_dat_r;
wire [31:0] ethmac_rx_cdc_fifo_in_payload_data;
wire [3:0] ethmac_rx_cdc_fifo_in_payload_last_be;
wire [3:0] ethmac_rx_cdc_fifo_in_payload_error;
wire ethmac_rx_cdc_fifo_in_first;
wire ethmac_rx_cdc_fifo_in_last;
wire [31:0] ethmac_rx_cdc_fifo_out_payload_data;
wire [3:0] ethmac_rx_cdc_fifo_out_payload_last_be;
wire [3:0] ethmac_rx_cdc_fifo_out_payload_error;
wire ethmac_rx_cdc_fifo_out_first;
wire ethmac_rx_cdc_fifo_out_last;
wire ethmac_sink_valid;
wire ethmac_sink_ready;
wire ethmac_sink_first;
wire ethmac_sink_last;
wire [31:0] ethmac_sink_payload_data;
wire [3:0] ethmac_sink_payload_last_be;
wire [3:0] ethmac_sink_payload_error;
wire ethmac_source_valid;
wire ethmac_source_ready;
wire ethmac_source_first;
wire ethmac_source_last;
wire [31:0] ethmac_source_payload_data;
wire [3:0] ethmac_source_payload_last_be;
wire [3:0] ethmac_source_payload_error;
wire [29:0] ethmac_bus_adr;
wire [31:0] ethmac_bus_dat_w;
wire [31:0] ethmac_bus_dat_r;
wire [3:0] ethmac_bus_sel;
wire ethmac_bus_cyc;
wire ethmac_bus_stb;
wire ethmac_bus_ack;
wire ethmac_bus_we;
wire [2:0] ethmac_bus_cti;
wire [1:0] ethmac_bus_bte;
wire ethmac_bus_err;
wire ethmac_writer_sink_sink_valid;
reg ethmac_writer_sink_sink_ready = 1'd1;
wire ethmac_writer_sink_sink_first;
wire ethmac_writer_sink_sink_last;
wire [31:0] ethmac_writer_sink_sink_payload_data;
wire [3:0] ethmac_writer_sink_sink_payload_last_be;
wire [3:0] ethmac_writer_sink_sink_payload_error;
wire ethmac_writer_slot_status;
wire [31:0] ethmac_writer_length_status;
reg [31:0] ethmac_writer_errors_status = 32'd0;
wire ethmac_writer_irq;
wire ethmac_writer_available_status;
wire ethmac_writer_available_pending;
wire ethmac_writer_available_trigger;
reg ethmac_writer_available_clear = 1'd0;
wire ethmac_writer_status_re;
wire ethmac_writer_status_r;
wire ethmac_writer_status_w;
wire ethmac_writer_pending_re;
wire ethmac_writer_pending_r;
wire ethmac_writer_pending_w;
reg ethmac_writer_storage_full = 1'd0;
wire ethmac_writer_storage;
reg ethmac_writer_re = 1'd0;
reg [2:0] ethmac_writer_increment = 3'd0;
reg [31:0] ethmac_writer_counter = 32'd0;
reg ethmac_writer_counter_reset = 1'd0;
reg ethmac_writer_counter_ce = 1'd0;
reg ethmac_writer_slot = 1'd0;
reg ethmac_writer_slot_ce = 1'd0;
reg ethmac_writer_ongoing = 1'd0;
reg ethmac_writer_fifo_sink_valid = 1'd0;
wire ethmac_writer_fifo_sink_ready;
reg ethmac_writer_fifo_sink_first = 1'd0;
reg ethmac_writer_fifo_sink_last = 1'd0;
wire ethmac_writer_fifo_sink_payload_slot;
wire [31:0] ethmac_writer_fifo_sink_payload_length;
wire ethmac_writer_fifo_source_valid;
wire ethmac_writer_fifo_source_ready;
wire ethmac_writer_fifo_source_first;
wire ethmac_writer_fifo_source_last;
wire ethmac_writer_fifo_source_payload_slot;
wire [31:0] ethmac_writer_fifo_source_payload_length;
wire ethmac_writer_fifo_syncfifo_we;
wire ethmac_writer_fifo_syncfifo_writable;
wire ethmac_writer_fifo_syncfifo_re;
wire ethmac_writer_fifo_syncfifo_readable;
wire [34:0] ethmac_writer_fifo_syncfifo_din;
wire [34:0] ethmac_writer_fifo_syncfifo_dout;
reg [1:0] ethmac_writer_fifo_level = 2'd0;
reg ethmac_writer_fifo_replace = 1'd0;
reg ethmac_writer_fifo_produce = 1'd0;
reg ethmac_writer_fifo_consume = 1'd0;
reg ethmac_writer_fifo_wrport_adr = 1'd0;
wire [34:0] ethmac_writer_fifo_wrport_dat_r;
wire ethmac_writer_fifo_wrport_we;
wire [34:0] ethmac_writer_fifo_wrport_dat_w;
wire ethmac_writer_fifo_do_read;
wire ethmac_writer_fifo_rdport_adr;
wire [34:0] ethmac_writer_fifo_rdport_dat_r;
wire ethmac_writer_fifo_fifo_in_payload_slot;
wire [31:0] ethmac_writer_fifo_fifo_in_payload_length;
wire ethmac_writer_fifo_fifo_in_first;
wire ethmac_writer_fifo_fifo_in_last;
wire ethmac_writer_fifo_fifo_out_payload_slot;
wire [31:0] ethmac_writer_fifo_fifo_out_payload_length;
wire ethmac_writer_fifo_fifo_out_first;
wire ethmac_writer_fifo_fifo_out_last;
reg [8:0] ethmac_writer_memory0_adr = 9'd0;
wire [31:0] ethmac_writer_memory0_dat_r;
reg ethmac_writer_memory0_we = 1'd0;
reg [31:0] ethmac_writer_memory0_dat_w = 32'd0;
reg [8:0] ethmac_writer_memory1_adr = 9'd0;
wire [31:0] ethmac_writer_memory1_dat_r;
reg ethmac_writer_memory1_we = 1'd0;
reg [31:0] ethmac_writer_memory1_dat_w = 32'd0;
reg ethmac_reader_source_source_valid = 1'd0;
wire ethmac_reader_source_source_ready;
reg ethmac_reader_source_source_first = 1'd0;
reg ethmac_reader_source_source_last = 1'd0;
reg [31:0] ethmac_reader_source_source_payload_data = 32'd0;
reg [3:0] ethmac_reader_source_source_payload_last_be = 4'd0;
reg [3:0] ethmac_reader_source_source_payload_error = 4'd0;
wire ethmac_reader_start_re;
wire ethmac_reader_start_r;
reg ethmac_reader_start_w = 1'd0;
wire ethmac_reader_ready_status;
wire [1:0] ethmac_reader_level_status;
reg ethmac_reader_slot_storage_full = 1'd0;
wire ethmac_reader_slot_storage;
reg ethmac_reader_slot_re = 1'd0;
reg [10:0] ethmac_reader_length_storage_full = 11'd0;
wire [10:0] ethmac_reader_length_storage;
reg ethmac_reader_length_re = 1'd0;
wire ethmac_reader_irq;
wire ethmac_reader_done_status;
reg ethmac_reader_done_pending = 1'd0;
reg ethmac_reader_done_trigger = 1'd0;
reg ethmac_reader_done_clear = 1'd0;
wire ethmac_reader_eventmanager_status_re;
wire ethmac_reader_eventmanager_status_r;
wire ethmac_reader_eventmanager_status_w;
wire ethmac_reader_eventmanager_pending_re;
wire ethmac_reader_eventmanager_pending_r;
wire ethmac_reader_eventmanager_pending_w;
reg ethmac_reader_eventmanager_storage_full = 1'd0;
wire ethmac_reader_eventmanager_storage;
reg ethmac_reader_eventmanager_re = 1'd0;
wire ethmac_reader_fifo_sink_valid;
wire ethmac_reader_fifo_sink_ready;
reg ethmac_reader_fifo_sink_first = 1'd0;
reg ethmac_reader_fifo_sink_last = 1'd0;
wire ethmac_reader_fifo_sink_payload_slot;
wire [10:0] ethmac_reader_fifo_sink_payload_length;
wire ethmac_reader_fifo_source_valid;
reg ethmac_reader_fifo_source_ready = 1'd0;
wire ethmac_reader_fifo_source_first;
wire ethmac_reader_fifo_source_last;
wire ethmac_reader_fifo_source_payload_slot;
wire [10:0] ethmac_reader_fifo_source_payload_length;
wire ethmac_reader_fifo_syncfifo_we;
wire ethmac_reader_fifo_syncfifo_writable;
wire ethmac_reader_fifo_syncfifo_re;
wire ethmac_reader_fifo_syncfifo_readable;
wire [13:0] ethmac_reader_fifo_syncfifo_din;
wire [13:0] ethmac_reader_fifo_syncfifo_dout;
reg [1:0] ethmac_reader_fifo_level = 2'd0;
reg ethmac_reader_fifo_replace = 1'd0;
reg ethmac_reader_fifo_produce = 1'd0;
reg ethmac_reader_fifo_consume = 1'd0;
reg ethmac_reader_fifo_wrport_adr = 1'd0;
wire [13:0] ethmac_reader_fifo_wrport_dat_r;
wire ethmac_reader_fifo_wrport_we;
wire [13:0] ethmac_reader_fifo_wrport_dat_w;
wire ethmac_reader_fifo_do_read;
wire ethmac_reader_fifo_rdport_adr;
wire [13:0] ethmac_reader_fifo_rdport_dat_r;
wire ethmac_reader_fifo_fifo_in_payload_slot;
wire [10:0] ethmac_reader_fifo_fifo_in_payload_length;
wire ethmac_reader_fifo_fifo_in_first;
wire ethmac_reader_fifo_fifo_in_last;
wire ethmac_reader_fifo_fifo_out_payload_slot;
wire [10:0] ethmac_reader_fifo_fifo_out_payload_length;
wire ethmac_reader_fifo_fifo_out_first;
wire ethmac_reader_fifo_fifo_out_last;
reg [10:0] ethmac_reader_counter = 11'd0;
reg ethmac_reader_counter_reset = 1'd0;
reg ethmac_reader_counter_ce = 1'd0;
wire ethmac_reader_last;
reg ethmac_reader_last_d = 1'd0;
wire [8:0] ethmac_reader_memory0_adr;
wire [31:0] ethmac_reader_memory0_dat_r;
wire [8:0] ethmac_reader_memory1_adr;
wire [31:0] ethmac_reader_memory1_dat_r;
wire ethmac_ev_irq;
wire [29:0] ethmac_sram0_bus_adr0;
wire [31:0] ethmac_sram0_bus_dat_w0;
wire [31:0] ethmac_sram0_bus_dat_r0;
wire [3:0] ethmac_sram0_bus_sel0;
wire ethmac_sram0_bus_cyc0;
wire ethmac_sram0_bus_stb0;
reg ethmac_sram0_bus_ack0 = 1'd0;
wire ethmac_sram0_bus_we0;
wire [2:0] ethmac_sram0_bus_cti0;
wire [1:0] ethmac_sram0_bus_bte0;
reg ethmac_sram0_bus_err0 = 1'd0;
wire [8:0] ethmac_sram0_adr0;
wire [31:0] ethmac_sram0_dat_r0;
wire [29:0] ethmac_sram1_bus_adr0;
wire [31:0] ethmac_sram1_bus_dat_w0;
wire [31:0] ethmac_sram1_bus_dat_r0;
wire [3:0] ethmac_sram1_bus_sel0;
wire ethmac_sram1_bus_cyc0;
wire ethmac_sram1_bus_stb0;
reg ethmac_sram1_bus_ack0 = 1'd0;
wire ethmac_sram1_bus_we0;
wire [2:0] ethmac_sram1_bus_cti0;
wire [1:0] ethmac_sram1_bus_bte0;
reg ethmac_sram1_bus_err0 = 1'd0;
wire [8:0] ethmac_sram1_adr0;
wire [31:0] ethmac_sram1_dat_r0;
wire [29:0] ethmac_sram0_bus_adr1;
wire [31:0] ethmac_sram0_bus_dat_w1;
wire [31:0] ethmac_sram0_bus_dat_r1;
wire [3:0] ethmac_sram0_bus_sel1;
wire ethmac_sram0_bus_cyc1;
wire ethmac_sram0_bus_stb1;
reg ethmac_sram0_bus_ack1 = 1'd0;
wire ethmac_sram0_bus_we1;
wire [2:0] ethmac_sram0_bus_cti1;
wire [1:0] ethmac_sram0_bus_bte1;
reg ethmac_sram0_bus_err1 = 1'd0;
wire [8:0] ethmac_sram0_adr1;
wire [31:0] ethmac_sram0_dat_r1;
reg [3:0] ethmac_sram0_we = 4'd0;
wire [31:0] ethmac_sram0_dat_w;
wire [29:0] ethmac_sram1_bus_adr1;
wire [31:0] ethmac_sram1_bus_dat_w1;
wire [31:0] ethmac_sram1_bus_dat_r1;
wire [3:0] ethmac_sram1_bus_sel1;
wire ethmac_sram1_bus_cyc1;
wire ethmac_sram1_bus_stb1;
reg ethmac_sram1_bus_ack1 = 1'd0;
wire ethmac_sram1_bus_we1;
wire [2:0] ethmac_sram1_bus_cti1;
wire [1:0] ethmac_sram1_bus_bte1;
reg ethmac_sram1_bus_err1 = 1'd0;
wire [8:0] ethmac_sram1_adr1;
wire [31:0] ethmac_sram1_dat_r1;
reg [3:0] ethmac_sram1_we = 4'd0;
wire [31:0] ethmac_sram1_dat_w;
reg [3:0] ethmac_slave_sel = 4'd0;
reg [3:0] ethmac_slave_sel_r = 4'd0;
reg [1:0] refresher_state = 2'd0;
reg [1:0] refresher_next_state = 2'd0;
reg [2:0] bankmachine0_state = 3'd0;
reg [2:0] bankmachine0_next_state = 3'd0;
reg [2:0] bankmachine1_state = 3'd0;
reg [2:0] bankmachine1_next_state = 3'd0;
reg [2:0] bankmachine2_state = 3'd0;
reg [2:0] bankmachine2_next_state = 3'd0;
reg [2:0] bankmachine3_state = 3'd0;
reg [2:0] bankmachine3_next_state = 3'd0;
reg [2:0] bankmachine4_state = 3'd0;
reg [2:0] bankmachine4_next_state = 3'd0;
reg [2:0] bankmachine5_state = 3'd0;
reg [2:0] bankmachine5_next_state = 3'd0;
reg [2:0] bankmachine6_state = 3'd0;
reg [2:0] bankmachine6_next_state = 3'd0;
reg [2:0] bankmachine7_state = 3'd0;
reg [2:0] bankmachine7_next_state = 3'd0;
reg [3:0] multiplexer_state = 4'd0;
reg [3:0] multiplexer_next_state = 4'd0;
wire [2:0] cba;
wire [20:0] rca;
wire roundrobin0_request;
wire roundrobin0_grant;
wire roundrobin0_ce;
wire roundrobin1_request;
wire roundrobin1_grant;
wire roundrobin1_ce;
wire roundrobin2_request;
wire roundrobin2_grant;
wire roundrobin2_ce;
wire roundrobin3_request;
wire roundrobin3_grant;
wire roundrobin3_ce;
wire roundrobin4_request;
wire roundrobin4_grant;
wire roundrobin4_ce;
wire roundrobin5_request;
wire roundrobin5_grant;
wire roundrobin5_ce;
wire roundrobin6_request;
wire roundrobin6_grant;
wire roundrobin6_ce;
wire roundrobin7_request;
wire roundrobin7_grant;
wire roundrobin7_ce;
reg new_master_wdata_ready = 1'd0;
reg new_master_rdata_valid0 = 1'd0;
reg new_master_rdata_valid1 = 1'd0;
reg new_master_rdata_valid2 = 1'd0;
reg new_master_rdata_valid3 = 1'd0;
reg new_master_rdata_valid4 = 1'd0;
reg new_master_rdata_valid5 = 1'd0;
reg [2:0] cache_state = 3'd0;
reg [2:0] cache_next_state = 3'd0;
reg [1:0] litedramwishbonebridge_state = 2'd0;
reg [1:0] litedramwishbonebridge_next_state = 2'd0;
reg [1:0] liteethphygmiimii_state = 2'd0;
reg [1:0] liteethphygmiimii_next_state = 2'd0;
reg liteethmacgap_state = 1'd0;
reg liteethmacgap_next_state = 1'd0;
reg [1:0] liteethmacpreambleinserter_state = 2'd0;
reg [1:0] liteethmacpreambleinserter_next_state = 2'd0;
reg liteethmacpreamblechecker_state = 1'd0;
reg liteethmacpreamblechecker_next_state = 1'd0;
reg [1:0] liteethmaccrc32inserter_state = 2'd0;
reg [1:0] liteethmaccrc32inserter_next_state = 2'd0;
reg [1:0] liteethmaccrc32checker_state = 2'd0;
reg [1:0] liteethmaccrc32checker_next_state = 2'd0;
reg liteethmacpaddinginserter_state = 1'd0;
reg liteethmacpaddinginserter_next_state = 1'd0;
reg [2:0] liteethmacsramwriter_state = 3'd0;
reg [2:0] liteethmacsramwriter_next_state = 3'd0;
reg [31:0] ethmac_writer_errors_status_next_value = 32'd0;
reg ethmac_writer_errors_status_next_value_ce = 1'd0;
reg [1:0] liteethmacsramreader_state = 2'd0;
reg [1:0] liteethmacsramreader_next_state = 2'd0;
wire wb_sdram_con_request;
wire wb_sdram_con_grant;
wire [29:0] netsoc_shared_adr;
wire [31:0] netsoc_shared_dat_w;
wire [31:0] netsoc_shared_dat_r;
wire [3:0] netsoc_shared_sel;
wire netsoc_shared_cyc;
wire netsoc_shared_stb;
wire netsoc_shared_ack;
wire netsoc_shared_we;
wire [2:0] netsoc_shared_cti;
wire [1:0] netsoc_shared_bte;
wire netsoc_shared_err;
wire [1:0] netsoc_request;
reg netsoc_grant = 1'd0;
reg [5:0] netsoc_slave_sel = 6'd0;
reg [5:0] netsoc_slave_sel_r = 6'd0;
wire [13:0] netsoc_interface0_bank_bus_adr;
wire netsoc_interface0_bank_bus_we;
wire [7:0] netsoc_interface0_bank_bus_dat_w;
reg [7:0] netsoc_interface0_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank0_sram_writer_slot_re;
wire netsoc_csrbank0_sram_writer_slot_r;
wire netsoc_csrbank0_sram_writer_slot_w;
wire netsoc_csrbank0_sram_writer_length3_re;
wire [7:0] netsoc_csrbank0_sram_writer_length3_r;
wire [7:0] netsoc_csrbank0_sram_writer_length3_w;
wire netsoc_csrbank0_sram_writer_length2_re;
wire [7:0] netsoc_csrbank0_sram_writer_length2_r;
wire [7:0] netsoc_csrbank0_sram_writer_length2_w;
wire netsoc_csrbank0_sram_writer_length1_re;
wire [7:0] netsoc_csrbank0_sram_writer_length1_r;
wire [7:0] netsoc_csrbank0_sram_writer_length1_w;
wire netsoc_csrbank0_sram_writer_length0_re;
wire [7:0] netsoc_csrbank0_sram_writer_length0_r;
wire [7:0] netsoc_csrbank0_sram_writer_length0_w;
wire netsoc_csrbank0_sram_writer_errors3_re;
wire [7:0] netsoc_csrbank0_sram_writer_errors3_r;
wire [7:0] netsoc_csrbank0_sram_writer_errors3_w;
wire netsoc_csrbank0_sram_writer_errors2_re;
wire [7:0] netsoc_csrbank0_sram_writer_errors2_r;
wire [7:0] netsoc_csrbank0_sram_writer_errors2_w;
wire netsoc_csrbank0_sram_writer_errors1_re;
wire [7:0] netsoc_csrbank0_sram_writer_errors1_r;
wire [7:0] netsoc_csrbank0_sram_writer_errors1_w;
wire netsoc_csrbank0_sram_writer_errors0_re;
wire [7:0] netsoc_csrbank0_sram_writer_errors0_r;
wire [7:0] netsoc_csrbank0_sram_writer_errors0_w;
wire netsoc_csrbank0_sram_writer_ev_enable0_re;
wire netsoc_csrbank0_sram_writer_ev_enable0_r;
wire netsoc_csrbank0_sram_writer_ev_enable0_w;
wire netsoc_csrbank0_sram_reader_ready_re;
wire netsoc_csrbank0_sram_reader_ready_r;
wire netsoc_csrbank0_sram_reader_ready_w;
wire netsoc_csrbank0_sram_reader_level_re;
wire [1:0] netsoc_csrbank0_sram_reader_level_r;
wire [1:0] netsoc_csrbank0_sram_reader_level_w;
wire netsoc_csrbank0_sram_reader_slot0_re;
wire netsoc_csrbank0_sram_reader_slot0_r;
wire netsoc_csrbank0_sram_reader_slot0_w;
wire netsoc_csrbank0_sram_reader_length1_re;
wire [2:0] netsoc_csrbank0_sram_reader_length1_r;
wire [2:0] netsoc_csrbank0_sram_reader_length1_w;
wire netsoc_csrbank0_sram_reader_length0_re;
wire [7:0] netsoc_csrbank0_sram_reader_length0_r;
wire [7:0] netsoc_csrbank0_sram_reader_length0_w;
wire netsoc_csrbank0_sram_reader_ev_enable0_re;
wire netsoc_csrbank0_sram_reader_ev_enable0_r;
wire netsoc_csrbank0_sram_reader_ev_enable0_w;
wire netsoc_csrbank0_preamble_crc_re;
wire netsoc_csrbank0_preamble_crc_r;
wire netsoc_csrbank0_preamble_crc_w;
wire netsoc_csrbank0_preamble_errors3_re;
wire [7:0] netsoc_csrbank0_preamble_errors3_r;
wire [7:0] netsoc_csrbank0_preamble_errors3_w;
wire netsoc_csrbank0_preamble_errors2_re;
wire [7:0] netsoc_csrbank0_preamble_errors2_r;
wire [7:0] netsoc_csrbank0_preamble_errors2_w;
wire netsoc_csrbank0_preamble_errors1_re;
wire [7:0] netsoc_csrbank0_preamble_errors1_r;
wire [7:0] netsoc_csrbank0_preamble_errors1_w;
wire netsoc_csrbank0_preamble_errors0_re;
wire [7:0] netsoc_csrbank0_preamble_errors0_r;
wire [7:0] netsoc_csrbank0_preamble_errors0_w;
wire netsoc_csrbank0_crc_errors3_re;
wire [7:0] netsoc_csrbank0_crc_errors3_r;
wire [7:0] netsoc_csrbank0_crc_errors3_w;
wire netsoc_csrbank0_crc_errors2_re;
wire [7:0] netsoc_csrbank0_crc_errors2_r;
wire [7:0] netsoc_csrbank0_crc_errors2_w;
wire netsoc_csrbank0_crc_errors1_re;
wire [7:0] netsoc_csrbank0_crc_errors1_r;
wire [7:0] netsoc_csrbank0_crc_errors1_w;
wire netsoc_csrbank0_crc_errors0_re;
wire [7:0] netsoc_csrbank0_crc_errors0_r;
wire [7:0] netsoc_csrbank0_crc_errors0_w;
wire netsoc_csrbank0_sel;
wire [13:0] netsoc_interface1_bank_bus_adr;
wire netsoc_interface1_bank_bus_we;
wire [7:0] netsoc_interface1_bank_bus_dat_w;
reg [7:0] netsoc_interface1_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank1_mode_detection_mode_re;
wire netsoc_csrbank1_mode_detection_mode_r;
wire netsoc_csrbank1_mode_detection_mode_w;
wire netsoc_csrbank1_crg_reset0_re;
wire netsoc_csrbank1_crg_reset0_r;
wire netsoc_csrbank1_crg_reset0_w;
wire netsoc_csrbank1_mdio_w0_re;
wire [2:0] netsoc_csrbank1_mdio_w0_r;
wire [2:0] netsoc_csrbank1_mdio_w0_w;
wire netsoc_csrbank1_mdio_r_re;
wire netsoc_csrbank1_mdio_r_r;
wire netsoc_csrbank1_mdio_r_w;
wire netsoc_csrbank1_sel;
wire [13:0] netsoc_sram_bus_adr;
wire netsoc_sram_bus_we;
wire [7:0] netsoc_sram_bus_dat_w;
reg [7:0] netsoc_sram_bus_dat_r = 8'd0;
wire [2:0] netsoc_adr;
wire [7:0] netsoc_dat_r;
wire netsoc_sel;
reg netsoc_sel_r = 1'd0;
wire [13:0] netsoc_interface2_bank_bus_adr;
wire netsoc_interface2_bank_bus_we;
wire [7:0] netsoc_interface2_bank_bus_dat_w;
reg [7:0] netsoc_interface2_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank2_dna_id7_re;
wire netsoc_csrbank2_dna_id7_r;
wire netsoc_csrbank2_dna_id7_w;
wire netsoc_csrbank2_dna_id6_re;
wire [7:0] netsoc_csrbank2_dna_id6_r;
wire [7:0] netsoc_csrbank2_dna_id6_w;
wire netsoc_csrbank2_dna_id5_re;
wire [7:0] netsoc_csrbank2_dna_id5_r;
wire [7:0] netsoc_csrbank2_dna_id5_w;
wire netsoc_csrbank2_dna_id4_re;
wire [7:0] netsoc_csrbank2_dna_id4_r;
wire [7:0] netsoc_csrbank2_dna_id4_w;
wire netsoc_csrbank2_dna_id3_re;
wire [7:0] netsoc_csrbank2_dna_id3_r;
wire [7:0] netsoc_csrbank2_dna_id3_w;
wire netsoc_csrbank2_dna_id2_re;
wire [7:0] netsoc_csrbank2_dna_id2_r;
wire [7:0] netsoc_csrbank2_dna_id2_w;
wire netsoc_csrbank2_dna_id1_re;
wire [7:0] netsoc_csrbank2_dna_id1_r;
wire [7:0] netsoc_csrbank2_dna_id1_w;
wire netsoc_csrbank2_dna_id0_re;
wire [7:0] netsoc_csrbank2_dna_id0_r;
wire [7:0] netsoc_csrbank2_dna_id0_w;
wire netsoc_csrbank2_git_commit19_re;
wire [7:0] netsoc_csrbank2_git_commit19_r;
wire [7:0] netsoc_csrbank2_git_commit19_w;
wire netsoc_csrbank2_git_commit18_re;
wire [7:0] netsoc_csrbank2_git_commit18_r;
wire [7:0] netsoc_csrbank2_git_commit18_w;
wire netsoc_csrbank2_git_commit17_re;
wire [7:0] netsoc_csrbank2_git_commit17_r;
wire [7:0] netsoc_csrbank2_git_commit17_w;
wire netsoc_csrbank2_git_commit16_re;
wire [7:0] netsoc_csrbank2_git_commit16_r;
wire [7:0] netsoc_csrbank2_git_commit16_w;
wire netsoc_csrbank2_git_commit15_re;
wire [7:0] netsoc_csrbank2_git_commit15_r;
wire [7:0] netsoc_csrbank2_git_commit15_w;
wire netsoc_csrbank2_git_commit14_re;
wire [7:0] netsoc_csrbank2_git_commit14_r;
wire [7:0] netsoc_csrbank2_git_commit14_w;
wire netsoc_csrbank2_git_commit13_re;
wire [7:0] netsoc_csrbank2_git_commit13_r;
wire [7:0] netsoc_csrbank2_git_commit13_w;
wire netsoc_csrbank2_git_commit12_re;
wire [7:0] netsoc_csrbank2_git_commit12_r;
wire [7:0] netsoc_csrbank2_git_commit12_w;
wire netsoc_csrbank2_git_commit11_re;
wire [7:0] netsoc_csrbank2_git_commit11_r;
wire [7:0] netsoc_csrbank2_git_commit11_w;
wire netsoc_csrbank2_git_commit10_re;
wire [7:0] netsoc_csrbank2_git_commit10_r;
wire [7:0] netsoc_csrbank2_git_commit10_w;
wire netsoc_csrbank2_git_commit9_re;
wire [7:0] netsoc_csrbank2_git_commit9_r;
wire [7:0] netsoc_csrbank2_git_commit9_w;
wire netsoc_csrbank2_git_commit8_re;
wire [7:0] netsoc_csrbank2_git_commit8_r;
wire [7:0] netsoc_csrbank2_git_commit8_w;
wire netsoc_csrbank2_git_commit7_re;
wire [7:0] netsoc_csrbank2_git_commit7_r;
wire [7:0] netsoc_csrbank2_git_commit7_w;
wire netsoc_csrbank2_git_commit6_re;
wire [7:0] netsoc_csrbank2_git_commit6_r;
wire [7:0] netsoc_csrbank2_git_commit6_w;
wire netsoc_csrbank2_git_commit5_re;
wire [7:0] netsoc_csrbank2_git_commit5_r;
wire [7:0] netsoc_csrbank2_git_commit5_w;
wire netsoc_csrbank2_git_commit4_re;
wire [7:0] netsoc_csrbank2_git_commit4_r;
wire [7:0] netsoc_csrbank2_git_commit4_w;
wire netsoc_csrbank2_git_commit3_re;
wire [7:0] netsoc_csrbank2_git_commit3_r;
wire [7:0] netsoc_csrbank2_git_commit3_w;
wire netsoc_csrbank2_git_commit2_re;
wire [7:0] netsoc_csrbank2_git_commit2_r;
wire [7:0] netsoc_csrbank2_git_commit2_w;
wire netsoc_csrbank2_git_commit1_re;
wire [7:0] netsoc_csrbank2_git_commit1_r;
wire [7:0] netsoc_csrbank2_git_commit1_w;
wire netsoc_csrbank2_git_commit0_re;
wire [7:0] netsoc_csrbank2_git_commit0_r;
wire [7:0] netsoc_csrbank2_git_commit0_w;
wire netsoc_csrbank2_platform_platform7_re;
wire [7:0] netsoc_csrbank2_platform_platform7_r;
wire [7:0] netsoc_csrbank2_platform_platform7_w;
wire netsoc_csrbank2_platform_platform6_re;
wire [7:0] netsoc_csrbank2_platform_platform6_r;
wire [7:0] netsoc_csrbank2_platform_platform6_w;
wire netsoc_csrbank2_platform_platform5_re;
wire [7:0] netsoc_csrbank2_platform_platform5_r;
wire [7:0] netsoc_csrbank2_platform_platform5_w;
wire netsoc_csrbank2_platform_platform4_re;
wire [7:0] netsoc_csrbank2_platform_platform4_r;
wire [7:0] netsoc_csrbank2_platform_platform4_w;
wire netsoc_csrbank2_platform_platform3_re;
wire [7:0] netsoc_csrbank2_platform_platform3_r;
wire [7:0] netsoc_csrbank2_platform_platform3_w;
wire netsoc_csrbank2_platform_platform2_re;
wire [7:0] netsoc_csrbank2_platform_platform2_r;
wire [7:0] netsoc_csrbank2_platform_platform2_w;
wire netsoc_csrbank2_platform_platform1_re;
wire [7:0] netsoc_csrbank2_platform_platform1_r;
wire [7:0] netsoc_csrbank2_platform_platform1_w;
wire netsoc_csrbank2_platform_platform0_re;
wire [7:0] netsoc_csrbank2_platform_platform0_r;
wire [7:0] netsoc_csrbank2_platform_platform0_w;
wire netsoc_csrbank2_platform_target7_re;
wire [7:0] netsoc_csrbank2_platform_target7_r;
wire [7:0] netsoc_csrbank2_platform_target7_w;
wire netsoc_csrbank2_platform_target6_re;
wire [7:0] netsoc_csrbank2_platform_target6_r;
wire [7:0] netsoc_csrbank2_platform_target6_w;
wire netsoc_csrbank2_platform_target5_re;
wire [7:0] netsoc_csrbank2_platform_target5_r;
wire [7:0] netsoc_csrbank2_platform_target5_w;
wire netsoc_csrbank2_platform_target4_re;
wire [7:0] netsoc_csrbank2_platform_target4_r;
wire [7:0] netsoc_csrbank2_platform_target4_w;
wire netsoc_csrbank2_platform_target3_re;
wire [7:0] netsoc_csrbank2_platform_target3_r;
wire [7:0] netsoc_csrbank2_platform_target3_w;
wire netsoc_csrbank2_platform_target2_re;
wire [7:0] netsoc_csrbank2_platform_target2_r;
wire [7:0] netsoc_csrbank2_platform_target2_w;
wire netsoc_csrbank2_platform_target1_re;
wire [7:0] netsoc_csrbank2_platform_target1_r;
wire [7:0] netsoc_csrbank2_platform_target1_w;
wire netsoc_csrbank2_platform_target0_re;
wire [7:0] netsoc_csrbank2_platform_target0_r;
wire [7:0] netsoc_csrbank2_platform_target0_w;
wire netsoc_csrbank2_sel;
wire [13:0] netsoc_interface3_bank_bus_adr;
wire netsoc_interface3_bank_bus_we;
wire [7:0] netsoc_interface3_bank_bus_dat_w;
reg [7:0] netsoc_interface3_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank3_dfii_control0_re;
wire [3:0] netsoc_csrbank3_dfii_control0_r;
wire [3:0] netsoc_csrbank3_dfii_control0_w;
wire netsoc_csrbank3_dfii_pi0_command0_re;
wire [5:0] netsoc_csrbank3_dfii_pi0_command0_r;
wire [5:0] netsoc_csrbank3_dfii_pi0_command0_w;
wire netsoc_csrbank3_dfii_pi0_address1_re;
wire [4:0] netsoc_csrbank3_dfii_pi0_address1_r;
wire [4:0] netsoc_csrbank3_dfii_pi0_address1_w;
wire netsoc_csrbank3_dfii_pi0_address0_re;
wire [7:0] netsoc_csrbank3_dfii_pi0_address0_r;
wire [7:0] netsoc_csrbank3_dfii_pi0_address0_w;
wire netsoc_csrbank3_dfii_pi0_baddress0_re;
wire [2:0] netsoc_csrbank3_dfii_pi0_baddress0_r;
wire [2:0] netsoc_csrbank3_dfii_pi0_baddress0_w;
wire netsoc_csrbank3_dfii_pi0_wrdata3_re;
wire [7:0] netsoc_csrbank3_dfii_pi0_wrdata3_r;
wire [7:0] netsoc_csrbank3_dfii_pi0_wrdata3_w;
wire netsoc_csrbank3_dfii_pi0_wrdata2_re;
wire [7:0] netsoc_csrbank3_dfii_pi0_wrdata2_r;
wire [7:0] netsoc_csrbank3_dfii_pi0_wrdata2_w;
wire netsoc_csrbank3_dfii_pi0_wrdata1_re;
wire [7:0] netsoc_csrbank3_dfii_pi0_wrdata1_r;
wire [7:0] netsoc_csrbank3_dfii_pi0_wrdata1_w;
wire netsoc_csrbank3_dfii_pi0_wrdata0_re;
wire [7:0] netsoc_csrbank3_dfii_pi0_wrdata0_r;
wire [7:0] netsoc_csrbank3_dfii_pi0_wrdata0_w;
wire netsoc_csrbank3_dfii_pi0_rddata3_re;
wire [7:0] netsoc_csrbank3_dfii_pi0_rddata3_r;
wire [7:0] netsoc_csrbank3_dfii_pi0_rddata3_w;
wire netsoc_csrbank3_dfii_pi0_rddata2_re;
wire [7:0] netsoc_csrbank3_dfii_pi0_rddata2_r;
wire [7:0] netsoc_csrbank3_dfii_pi0_rddata2_w;
wire netsoc_csrbank3_dfii_pi0_rddata1_re;
wire [7:0] netsoc_csrbank3_dfii_pi0_rddata1_r;
wire [7:0] netsoc_csrbank3_dfii_pi0_rddata1_w;
wire netsoc_csrbank3_dfii_pi0_rddata0_re;
wire [7:0] netsoc_csrbank3_dfii_pi0_rddata0_r;
wire [7:0] netsoc_csrbank3_dfii_pi0_rddata0_w;
wire netsoc_csrbank3_dfii_pi1_command0_re;
wire [5:0] netsoc_csrbank3_dfii_pi1_command0_r;
wire [5:0] netsoc_csrbank3_dfii_pi1_command0_w;
wire netsoc_csrbank3_dfii_pi1_address1_re;
wire [4:0] netsoc_csrbank3_dfii_pi1_address1_r;
wire [4:0] netsoc_csrbank3_dfii_pi1_address1_w;
wire netsoc_csrbank3_dfii_pi1_address0_re;
wire [7:0] netsoc_csrbank3_dfii_pi1_address0_r;
wire [7:0] netsoc_csrbank3_dfii_pi1_address0_w;
wire netsoc_csrbank3_dfii_pi1_baddress0_re;
wire [2:0] netsoc_csrbank3_dfii_pi1_baddress0_r;
wire [2:0] netsoc_csrbank3_dfii_pi1_baddress0_w;
wire netsoc_csrbank3_dfii_pi1_wrdata3_re;
wire [7:0] netsoc_csrbank3_dfii_pi1_wrdata3_r;
wire [7:0] netsoc_csrbank3_dfii_pi1_wrdata3_w;
wire netsoc_csrbank3_dfii_pi1_wrdata2_re;
wire [7:0] netsoc_csrbank3_dfii_pi1_wrdata2_r;
wire [7:0] netsoc_csrbank3_dfii_pi1_wrdata2_w;
wire netsoc_csrbank3_dfii_pi1_wrdata1_re;
wire [7:0] netsoc_csrbank3_dfii_pi1_wrdata1_r;
wire [7:0] netsoc_csrbank3_dfii_pi1_wrdata1_w;
wire netsoc_csrbank3_dfii_pi1_wrdata0_re;
wire [7:0] netsoc_csrbank3_dfii_pi1_wrdata0_r;
wire [7:0] netsoc_csrbank3_dfii_pi1_wrdata0_w;
wire netsoc_csrbank3_dfii_pi1_rddata3_re;
wire [7:0] netsoc_csrbank3_dfii_pi1_rddata3_r;
wire [7:0] netsoc_csrbank3_dfii_pi1_rddata3_w;
wire netsoc_csrbank3_dfii_pi1_rddata2_re;
wire [7:0] netsoc_csrbank3_dfii_pi1_rddata2_r;
wire [7:0] netsoc_csrbank3_dfii_pi1_rddata2_w;
wire netsoc_csrbank3_dfii_pi1_rddata1_re;
wire [7:0] netsoc_csrbank3_dfii_pi1_rddata1_r;
wire [7:0] netsoc_csrbank3_dfii_pi1_rddata1_w;
wire netsoc_csrbank3_dfii_pi1_rddata0_re;
wire [7:0] netsoc_csrbank3_dfii_pi1_rddata0_r;
wire [7:0] netsoc_csrbank3_dfii_pi1_rddata0_w;
wire netsoc_csrbank3_controller_bandwidth_nreads2_re;
wire [7:0] netsoc_csrbank3_controller_bandwidth_nreads2_r;
wire [7:0] netsoc_csrbank3_controller_bandwidth_nreads2_w;
wire netsoc_csrbank3_controller_bandwidth_nreads1_re;
wire [7:0] netsoc_csrbank3_controller_bandwidth_nreads1_r;
wire [7:0] netsoc_csrbank3_controller_bandwidth_nreads1_w;
wire netsoc_csrbank3_controller_bandwidth_nreads0_re;
wire [7:0] netsoc_csrbank3_controller_bandwidth_nreads0_r;
wire [7:0] netsoc_csrbank3_controller_bandwidth_nreads0_w;
wire netsoc_csrbank3_controller_bandwidth_nwrites2_re;
wire [7:0] netsoc_csrbank3_controller_bandwidth_nwrites2_r;
wire [7:0] netsoc_csrbank3_controller_bandwidth_nwrites2_w;
wire netsoc_csrbank3_controller_bandwidth_nwrites1_re;
wire [7:0] netsoc_csrbank3_controller_bandwidth_nwrites1_r;
wire [7:0] netsoc_csrbank3_controller_bandwidth_nwrites1_w;
wire netsoc_csrbank3_controller_bandwidth_nwrites0_re;
wire [7:0] netsoc_csrbank3_controller_bandwidth_nwrites0_r;
wire [7:0] netsoc_csrbank3_controller_bandwidth_nwrites0_w;
wire netsoc_csrbank3_controller_bandwidth_data_width_re;
wire [6:0] netsoc_csrbank3_controller_bandwidth_data_width_r;
wire [6:0] netsoc_csrbank3_controller_bandwidth_data_width_w;
wire netsoc_csrbank3_sel;
wire [13:0] netsoc_interface4_bank_bus_adr;
wire netsoc_interface4_bank_bus_we;
wire [7:0] netsoc_interface4_bank_bus_dat_w;
reg [7:0] netsoc_interface4_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank4_bitbang0_re;
wire [3:0] netsoc_csrbank4_bitbang0_r;
wire [3:0] netsoc_csrbank4_bitbang0_w;
wire netsoc_csrbank4_miso_re;
wire netsoc_csrbank4_miso_r;
wire netsoc_csrbank4_miso_w;
wire netsoc_csrbank4_bitbang_en0_re;
wire netsoc_csrbank4_bitbang_en0_r;
wire netsoc_csrbank4_bitbang_en0_w;
wire netsoc_csrbank4_sel;
wire [13:0] netsoc_interface5_bank_bus_adr;
wire netsoc_interface5_bank_bus_we;
wire [7:0] netsoc_interface5_bank_bus_dat_w;
reg [7:0] netsoc_interface5_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank5_load3_re;
wire [7:0] netsoc_csrbank5_load3_r;
wire [7:0] netsoc_csrbank5_load3_w;
wire netsoc_csrbank5_load2_re;
wire [7:0] netsoc_csrbank5_load2_r;
wire [7:0] netsoc_csrbank5_load2_w;
wire netsoc_csrbank5_load1_re;
wire [7:0] netsoc_csrbank5_load1_r;
wire [7:0] netsoc_csrbank5_load1_w;
wire netsoc_csrbank5_load0_re;
wire [7:0] netsoc_csrbank5_load0_r;
wire [7:0] netsoc_csrbank5_load0_w;
wire netsoc_csrbank5_reload3_re;
wire [7:0] netsoc_csrbank5_reload3_r;
wire [7:0] netsoc_csrbank5_reload3_w;
wire netsoc_csrbank5_reload2_re;
wire [7:0] netsoc_csrbank5_reload2_r;
wire [7:0] netsoc_csrbank5_reload2_w;
wire netsoc_csrbank5_reload1_re;
wire [7:0] netsoc_csrbank5_reload1_r;
wire [7:0] netsoc_csrbank5_reload1_w;
wire netsoc_csrbank5_reload0_re;
wire [7:0] netsoc_csrbank5_reload0_r;
wire [7:0] netsoc_csrbank5_reload0_w;
wire netsoc_csrbank5_en0_re;
wire netsoc_csrbank5_en0_r;
wire netsoc_csrbank5_en0_w;
wire netsoc_csrbank5_value3_re;
wire [7:0] netsoc_csrbank5_value3_r;
wire [7:0] netsoc_csrbank5_value3_w;
wire netsoc_csrbank5_value2_re;
wire [7:0] netsoc_csrbank5_value2_r;
wire [7:0] netsoc_csrbank5_value2_w;
wire netsoc_csrbank5_value1_re;
wire [7:0] netsoc_csrbank5_value1_r;
wire [7:0] netsoc_csrbank5_value1_w;
wire netsoc_csrbank5_value0_re;
wire [7:0] netsoc_csrbank5_value0_r;
wire [7:0] netsoc_csrbank5_value0_w;
wire netsoc_csrbank5_ev_enable0_re;
wire netsoc_csrbank5_ev_enable0_r;
wire netsoc_csrbank5_ev_enable0_w;
wire netsoc_csrbank5_sel;
wire [13:0] netsoc_interface6_bank_bus_adr;
wire netsoc_interface6_bank_bus_we;
wire [7:0] netsoc_interface6_bank_bus_dat_w;
reg [7:0] netsoc_interface6_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank6_txfull_re;
wire netsoc_csrbank6_txfull_r;
wire netsoc_csrbank6_txfull_w;
wire netsoc_csrbank6_rxempty_re;
wire netsoc_csrbank6_rxempty_r;
wire netsoc_csrbank6_rxempty_w;
wire netsoc_csrbank6_ev_enable0_re;
wire [1:0] netsoc_csrbank6_ev_enable0_r;
wire [1:0] netsoc_csrbank6_ev_enable0_w;
wire netsoc_csrbank6_sel;
wire [13:0] netsoc_interface7_bank_bus_adr;
wire netsoc_interface7_bank_bus_we;
wire [7:0] netsoc_interface7_bank_bus_dat_w;
reg [7:0] netsoc_interface7_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank7_tuning_word3_re;
wire [7:0] netsoc_csrbank7_tuning_word3_r;
wire [7:0] netsoc_csrbank7_tuning_word3_w;
wire netsoc_csrbank7_tuning_word2_re;
wire [7:0] netsoc_csrbank7_tuning_word2_r;
wire [7:0] netsoc_csrbank7_tuning_word2_w;
wire netsoc_csrbank7_tuning_word1_re;
wire [7:0] netsoc_csrbank7_tuning_word1_r;
wire [7:0] netsoc_csrbank7_tuning_word1_w;
wire netsoc_csrbank7_tuning_word0_re;
wire [7:0] netsoc_csrbank7_tuning_word0_r;
wire [7:0] netsoc_csrbank7_tuning_word0_w;
wire netsoc_csrbank7_sel;
wire [15:0] slice_proxy0;
wire [15:0] slice_proxy1;
wire [15:0] slice_proxy2;
wire [15:0] slice_proxy3;
wire [15:0] slice_proxy4;
wire [15:0] slice_proxy5;
wire [15:0] slice_proxy6;
wire [15:0] slice_proxy7;
wire [15:0] slice_proxy8;
wire [15:0] slice_proxy9;
wire [15:0] slice_proxy10;
wire [15:0] slice_proxy11;
wire [15:0] slice_proxy12;
wire [15:0] slice_proxy13;
wire [15:0] slice_proxy14;
wire [15:0] slice_proxy15;
wire [15:0] slice_proxy16;
wire [15:0] slice_proxy17;
wire [15:0] slice_proxy18;
wire [15:0] slice_proxy19;
wire [15:0] slice_proxy20;
wire [15:0] slice_proxy21;
wire [15:0] slice_proxy22;
wire [15:0] slice_proxy23;
wire [15:0] slice_proxy24;
wire [15:0] slice_proxy25;
wire [15:0] slice_proxy26;
wire [15:0] slice_proxy27;
wire [15:0] slice_proxy28;
wire [15:0] slice_proxy29;
wire [15:0] slice_proxy30;
wire [15:0] slice_proxy31;
wire [15:0] slice_proxy32;
wire [15:0] slice_proxy33;
wire [15:0] slice_proxy34;
wire [15:0] slice_proxy35;
wire [15:0] slice_proxy36;
wire [15:0] slice_proxy37;
wire [15:0] slice_proxy38;
wire [15:0] slice_proxy39;
wire [15:0] slice_proxy40;
wire [15:0] slice_proxy41;
wire [15:0] slice_proxy42;
wire [15:0] slice_proxy43;
wire [15:0] slice_proxy44;
wire [15:0] slice_proxy45;
wire [15:0] slice_proxy46;
wire [15:0] slice_proxy47;
wire [15:0] slice_proxy48;
wire [15:0] slice_proxy49;
wire [15:0] slice_proxy50;
wire [15:0] slice_proxy51;
wire [15:0] slice_proxy52;
wire [15:0] slice_proxy53;
wire [15:0] slice_proxy54;
wire [15:0] slice_proxy55;
wire [15:0] slice_proxy56;
wire [15:0] slice_proxy57;
wire [15:0] slice_proxy58;
wire [15:0] slice_proxy59;
wire [15:0] slice_proxy60;
wire [15:0] slice_proxy61;
wire [15:0] slice_proxy62;
wire [15:0] slice_proxy63;
wire [1:0] slice_proxy64;
wire [1:0] slice_proxy65;
wire [1:0] slice_proxy66;
wire [1:0] slice_proxy67;
wire [1:0] slice_proxy68;
wire [1:0] slice_proxy69;
wire [1:0] slice_proxy70;
wire [1:0] slice_proxy71;
reg rhs_array_muxed0 = 1'd0;
reg [12:0] rhs_array_muxed1 = 13'd0;
reg [2:0] rhs_array_muxed2 = 3'd0;
reg rhs_array_muxed3 = 1'd0;
reg rhs_array_muxed4 = 1'd0;
reg rhs_array_muxed5 = 1'd0;
reg t_array_muxed0 = 1'd0;
reg t_array_muxed1 = 1'd0;
reg t_array_muxed2 = 1'd0;
reg rhs_array_muxed6 = 1'd0;
reg [12:0] rhs_array_muxed7 = 13'd0;
reg [2:0] rhs_array_muxed8 = 3'd0;
reg rhs_array_muxed9 = 1'd0;
reg rhs_array_muxed10 = 1'd0;
reg rhs_array_muxed11 = 1'd0;
reg t_array_muxed3 = 1'd0;
reg t_array_muxed4 = 1'd0;
reg t_array_muxed5 = 1'd0;
reg [20:0] rhs_array_muxed12 = 21'd0;
reg rhs_array_muxed13 = 1'd0;
reg rhs_array_muxed14 = 1'd0;
reg [20:0] rhs_array_muxed15 = 21'd0;
reg rhs_array_muxed16 = 1'd0;
reg rhs_array_muxed17 = 1'd0;
reg [20:0] rhs_array_muxed18 = 21'd0;
reg rhs_array_muxed19 = 1'd0;
reg rhs_array_muxed20 = 1'd0;
reg [20:0] rhs_array_muxed21 = 21'd0;
reg rhs_array_muxed22 = 1'd0;
reg rhs_array_muxed23 = 1'd0;
reg [20:0] rhs_array_muxed24 = 21'd0;
reg rhs_array_muxed25 = 1'd0;
reg rhs_array_muxed26 = 1'd0;
reg [20:0] rhs_array_muxed27 = 21'd0;
reg rhs_array_muxed28 = 1'd0;
reg rhs_array_muxed29 = 1'd0;
reg [20:0] rhs_array_muxed30 = 21'd0;
reg rhs_array_muxed31 = 1'd0;
reg rhs_array_muxed32 = 1'd0;
reg [20:0] rhs_array_muxed33 = 21'd0;
reg rhs_array_muxed34 = 1'd0;
reg rhs_array_muxed35 = 1'd0;
reg [29:0] rhs_array_muxed36 = 30'd0;
reg [31:0] rhs_array_muxed37 = 32'd0;
reg [3:0] rhs_array_muxed38 = 4'd0;
reg rhs_array_muxed39 = 1'd0;
reg rhs_array_muxed40 = 1'd0;
reg rhs_array_muxed41 = 1'd0;
reg [2:0] rhs_array_muxed42 = 3'd0;
reg [1:0] rhs_array_muxed43 = 2'd0;
reg [29:0] rhs_array_muxed44 = 30'd0;
reg [31:0] rhs_array_muxed45 = 32'd0;
reg [3:0] rhs_array_muxed46 = 4'd0;
reg rhs_array_muxed47 = 1'd0;
reg rhs_array_muxed48 = 1'd0;
reg rhs_array_muxed49 = 1'd0;
reg [2:0] rhs_array_muxed50 = 3'd0;
reg [1:0] rhs_array_muxed51 = 2'd0;
reg [12:0] array_muxed0 = 13'd0;
reg [2:0] array_muxed1 = 3'd0;
reg array_muxed2 = 1'd0;
reg array_muxed3 = 1'd0;
reg array_muxed4 = 1'd0;
reg array_muxed5 = 1'd0;
reg array_muxed6 = 1'd0;
reg [12:0] array_muxed7 = 13'd0;
reg [2:0] array_muxed8 = 3'd0;
reg array_muxed9 = 1'd0;
reg array_muxed10 = 1'd0;
reg array_muxed11 = 1'd0;
reg array_muxed12 = 1'd0;
reg array_muxed13 = 1'd0;
reg [12:0] array_muxed14 = 13'd0;
reg [2:0] array_muxed15 = 3'd0;
reg array_muxed16 = 1'd0;
reg array_muxed17 = 1'd0;
reg array_muxed18 = 1'd0;
reg array_muxed19 = 1'd0;
reg array_muxed20 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl0_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl0_regs1 = 1'd0;
wire xilinxasyncresetsynchronizerimpl0;
wire xilinxasyncresetsynchronizerimpl0_rst_meta;
wire xilinxasyncresetsynchronizerimpl1;
wire xilinxasyncresetsynchronizerimpl1_rst_meta;
wire xilinxasyncresetsynchronizerimpl2;
wire xilinxasyncresetsynchronizerimpl2_rst_meta;
wire xilinxasyncresetsynchronizerimpl3_rst_meta;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl1_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl1_regs1 = 1'd0;
wire xilinxasyncresetsynchronizerimpl4_rst_meta;
wire xilinxasyncresetsynchronizerimpl5_rst_meta;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl2_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl2_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl3_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl3_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl4_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl4_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl5_regs0 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl5_regs1 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl6_regs0 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl6_regs1 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl7_regs0 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl7_regs1 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl8_regs0 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl8_regs1 = 7'd0;


// Adding a dummy event (using a dummy signal 'dummy_s') to get the simulator
// to run the combinatorial process once at the beginning.
// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign netsoc_ddrphy_clk4x_wr_strb = netsoc_crg_clk4x_wr_strb;
assign netsoc_ddrphy_clk4x_rd_strb = netsoc_crg_clk4x_rd_strb;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	netsoc_netsoc_interrupt <= 32'd0;
	netsoc_netsoc_interrupt[1] <= netsoc_netsoc_timer0_irq;
	netsoc_netsoc_interrupt[2] <= netsoc_netsoc_uart_irq;
	netsoc_netsoc_interrupt[3] <= ethmac_ev_irq;
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign netsoc_netsoc_ibus_adr = netsoc_netsoc_i_adr_o[31:2];
assign netsoc_netsoc_dbus_adr = netsoc_netsoc_d_adr_o[31:2];
assign netsoc_netsoc_rom_adr = netsoc_netsoc_rom_bus_adr[12:0];
assign netsoc_netsoc_rom_bus_dat_r = netsoc_netsoc_rom_dat_r;

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	netsoc_netsoc_sram_we <= 4'd0;
	netsoc_netsoc_sram_we[0] <= (((netsoc_netsoc_sram_bus_cyc & netsoc_netsoc_sram_bus_stb) & netsoc_netsoc_sram_bus_we) & netsoc_netsoc_sram_bus_sel[0]);
	netsoc_netsoc_sram_we[1] <= (((netsoc_netsoc_sram_bus_cyc & netsoc_netsoc_sram_bus_stb) & netsoc_netsoc_sram_bus_we) & netsoc_netsoc_sram_bus_sel[1]);
	netsoc_netsoc_sram_we[2] <= (((netsoc_netsoc_sram_bus_cyc & netsoc_netsoc_sram_bus_stb) & netsoc_netsoc_sram_bus_we) & netsoc_netsoc_sram_bus_sel[2]);
	netsoc_netsoc_sram_we[3] <= (((netsoc_netsoc_sram_bus_cyc & netsoc_netsoc_sram_bus_stb) & netsoc_netsoc_sram_bus_we) & netsoc_netsoc_sram_bus_sel[3]);
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
assign netsoc_netsoc_sram_adr = netsoc_netsoc_sram_bus_adr[11:0];
assign netsoc_netsoc_sram_bus_dat_r = netsoc_netsoc_sram_dat_r;
assign netsoc_netsoc_sram_dat_w = netsoc_netsoc_sram_bus_dat_w;
assign netsoc_netsoc_uart_tx_fifo_sink_valid = netsoc_netsoc_uart_rxtx_re;
assign netsoc_netsoc_uart_tx_fifo_sink_payload_data = netsoc_netsoc_uart_rxtx_r;
assign netsoc_netsoc_uart_txfull_status = (~netsoc_netsoc_uart_tx_fifo_sink_ready);
assign netsoc_netsoc_uart_phy_sink_valid = netsoc_netsoc_uart_tx_fifo_source_valid;
assign netsoc_netsoc_uart_tx_fifo_source_ready = netsoc_netsoc_uart_phy_sink_ready;
assign netsoc_netsoc_uart_phy_sink_first = netsoc_netsoc_uart_tx_fifo_source_first;
assign netsoc_netsoc_uart_phy_sink_last = netsoc_netsoc_uart_tx_fifo_source_last;
assign netsoc_netsoc_uart_phy_sink_payload_data = netsoc_netsoc_uart_tx_fifo_source_payload_data;
assign netsoc_netsoc_uart_tx_trigger = (~netsoc_netsoc_uart_tx_fifo_sink_ready);
assign netsoc_netsoc_uart_rx_fifo_sink_valid = netsoc_netsoc_uart_phy_source_valid;
assign netsoc_netsoc_uart_phy_source_ready = netsoc_netsoc_uart_rx_fifo_sink_ready;
assign netsoc_netsoc_uart_rx_fifo_sink_first = netsoc_netsoc_uart_phy_source_first;
assign netsoc_netsoc_uart_rx_fifo_sink_last = netsoc_netsoc_uart_phy_source_last;
assign netsoc_netsoc_uart_rx_fifo_sink_payload_data = netsoc_netsoc_uart_phy_source_payload_data;
assign netsoc_netsoc_uart_rxempty_status = (~netsoc_netsoc_uart_rx_fifo_source_valid);
assign netsoc_netsoc_uart_rxtx_w = netsoc_netsoc_uart_rx_fifo_source_payload_data;
assign netsoc_netsoc_uart_rx_fifo_source_ready = netsoc_netsoc_uart_rx_clear;
assign netsoc_netsoc_uart_rx_trigger = (~netsoc_netsoc_uart_rx_fifo_source_valid);

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	netsoc_netsoc_uart_tx_clear <= 1'd0;
	if ((netsoc_netsoc_uart_pending_re & netsoc_netsoc_uart_pending_r[0])) begin
		netsoc_netsoc_uart_tx_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	netsoc_netsoc_uart_status_w <= 2'd0;
	netsoc_netsoc_uart_status_w[0] <= netsoc_netsoc_uart_tx_status;
	netsoc_netsoc_uart_status_w[1] <= netsoc_netsoc_uart_rx_status;
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	netsoc_netsoc_uart_rx_clear <= 1'd0;
	if ((netsoc_netsoc_uart_pending_re & netsoc_netsoc_uart_pending_r[1])) begin
		netsoc_netsoc_uart_rx_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	netsoc_netsoc_uart_pending_w <= 2'd0;
	netsoc_netsoc_uart_pending_w[0] <= netsoc_netsoc_uart_tx_pending;
	netsoc_netsoc_uart_pending_w[1] <= netsoc_netsoc_uart_rx_pending;
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end
assign netsoc_netsoc_uart_irq = ((netsoc_netsoc_uart_pending_w[0] & netsoc_netsoc_uart_storage[0]) | (netsoc_netsoc_uart_pending_w[1] & netsoc_netsoc_uart_storage[1]));
assign netsoc_netsoc_uart_tx_status = netsoc_netsoc_uart_tx_trigger;
assign netsoc_netsoc_uart_rx_status = netsoc_netsoc_uart_rx_trigger;
assign netsoc_netsoc_uart_tx_fifo_syncfifo_din = {netsoc_netsoc_uart_tx_fifo_fifo_in_last, netsoc_netsoc_uart_tx_fifo_fifo_in_first, netsoc_netsoc_uart_tx_fifo_fifo_in_payload_data};
assign {netsoc_netsoc_uart_tx_fifo_fifo_out_last, netsoc_netsoc_uart_tx_fifo_fifo_out_first, netsoc_netsoc_uart_tx_fifo_fifo_out_payload_data} = netsoc_netsoc_uart_tx_fifo_syncfifo_dout;
assign netsoc_netsoc_uart_tx_fifo_sink_ready = netsoc_netsoc_uart_tx_fifo_syncfifo_writable;
assign netsoc_netsoc_uart_tx_fifo_syncfifo_we = netsoc_netsoc_uart_tx_fifo_sink_valid;
assign netsoc_netsoc_uart_tx_fifo_fifo_in_first = netsoc_netsoc_uart_tx_fifo_sink_first;
assign netsoc_netsoc_uart_tx_fifo_fifo_in_last = netsoc_netsoc_uart_tx_fifo_sink_last;
assign netsoc_netsoc_uart_tx_fifo_fifo_in_payload_data = netsoc_netsoc_uart_tx_fifo_sink_payload_data;
assign netsoc_netsoc_uart_tx_fifo_source_valid = netsoc_netsoc_uart_tx_fifo_syncfifo_readable;
assign netsoc_netsoc_uart_tx_fifo_source_first = netsoc_netsoc_uart_tx_fifo_fifo_out_first;
assign netsoc_netsoc_uart_tx_fifo_source_last = netsoc_netsoc_uart_tx_fifo_fifo_out_last;
assign netsoc_netsoc_uart_tx_fifo_source_payload_data = netsoc_netsoc_uart_tx_fifo_fifo_out_payload_data;
assign netsoc_netsoc_uart_tx_fifo_syncfifo_re = netsoc_netsoc_uart_tx_fifo_source_ready;

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	netsoc_netsoc_uart_tx_fifo_wrport_adr <= 4'd0;
	if (netsoc_netsoc_uart_tx_fifo_replace) begin
		netsoc_netsoc_uart_tx_fifo_wrport_adr <= (netsoc_netsoc_uart_tx_fifo_produce - 1'd1);
	end else begin
		netsoc_netsoc_uart_tx_fifo_wrport_adr <= netsoc_netsoc_uart_tx_fifo_produce;
	end
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end
assign netsoc_netsoc_uart_tx_fifo_wrport_dat_w = netsoc_netsoc_uart_tx_fifo_syncfifo_din;
assign netsoc_netsoc_uart_tx_fifo_wrport_we = (netsoc_netsoc_uart_tx_fifo_syncfifo_we & (netsoc_netsoc_uart_tx_fifo_syncfifo_writable | netsoc_netsoc_uart_tx_fifo_replace));
assign netsoc_netsoc_uart_tx_fifo_do_read = (netsoc_netsoc_uart_tx_fifo_syncfifo_readable & netsoc_netsoc_uart_tx_fifo_syncfifo_re);
assign netsoc_netsoc_uart_tx_fifo_rdport_adr = netsoc_netsoc_uart_tx_fifo_consume;
assign netsoc_netsoc_uart_tx_fifo_syncfifo_dout = netsoc_netsoc_uart_tx_fifo_rdport_dat_r;
assign netsoc_netsoc_uart_tx_fifo_syncfifo_writable = (netsoc_netsoc_uart_tx_fifo_level != 5'd16);
assign netsoc_netsoc_uart_tx_fifo_syncfifo_readable = (netsoc_netsoc_uart_tx_fifo_level != 1'd0);
assign netsoc_netsoc_uart_rx_fifo_syncfifo_din = {netsoc_netsoc_uart_rx_fifo_fifo_in_last, netsoc_netsoc_uart_rx_fifo_fifo_in_first, netsoc_netsoc_uart_rx_fifo_fifo_in_payload_data};
assign {netsoc_netsoc_uart_rx_fifo_fifo_out_last, netsoc_netsoc_uart_rx_fifo_fifo_out_first, netsoc_netsoc_uart_rx_fifo_fifo_out_payload_data} = netsoc_netsoc_uart_rx_fifo_syncfifo_dout;
assign netsoc_netsoc_uart_rx_fifo_sink_ready = netsoc_netsoc_uart_rx_fifo_syncfifo_writable;
assign netsoc_netsoc_uart_rx_fifo_syncfifo_we = netsoc_netsoc_uart_rx_fifo_sink_valid;
assign netsoc_netsoc_uart_rx_fifo_fifo_in_first = netsoc_netsoc_uart_rx_fifo_sink_first;
assign netsoc_netsoc_uart_rx_fifo_fifo_in_last = netsoc_netsoc_uart_rx_fifo_sink_last;
assign netsoc_netsoc_uart_rx_fifo_fifo_in_payload_data = netsoc_netsoc_uart_rx_fifo_sink_payload_data;
assign netsoc_netsoc_uart_rx_fifo_source_valid = netsoc_netsoc_uart_rx_fifo_syncfifo_readable;
assign netsoc_netsoc_uart_rx_fifo_source_first = netsoc_netsoc_uart_rx_fifo_fifo_out_first;
assign netsoc_netsoc_uart_rx_fifo_source_last = netsoc_netsoc_uart_rx_fifo_fifo_out_last;
assign netsoc_netsoc_uart_rx_fifo_source_payload_data = netsoc_netsoc_uart_rx_fifo_fifo_out_payload_data;
assign netsoc_netsoc_uart_rx_fifo_syncfifo_re = netsoc_netsoc_uart_rx_fifo_source_ready;

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	netsoc_netsoc_uart_rx_fifo_wrport_adr <= 4'd0;
	if (netsoc_netsoc_uart_rx_fifo_replace) begin
		netsoc_netsoc_uart_rx_fifo_wrport_adr <= (netsoc_netsoc_uart_rx_fifo_produce - 1'd1);
	end else begin
		netsoc_netsoc_uart_rx_fifo_wrport_adr <= netsoc_netsoc_uart_rx_fifo_produce;
	end
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end
assign netsoc_netsoc_uart_rx_fifo_wrport_dat_w = netsoc_netsoc_uart_rx_fifo_syncfifo_din;
assign netsoc_netsoc_uart_rx_fifo_wrport_we = (netsoc_netsoc_uart_rx_fifo_syncfifo_we & (netsoc_netsoc_uart_rx_fifo_syncfifo_writable | netsoc_netsoc_uart_rx_fifo_replace));
assign netsoc_netsoc_uart_rx_fifo_do_read = (netsoc_netsoc_uart_rx_fifo_syncfifo_readable & netsoc_netsoc_uart_rx_fifo_syncfifo_re);
assign netsoc_netsoc_uart_rx_fifo_rdport_adr = netsoc_netsoc_uart_rx_fifo_consume;
assign netsoc_netsoc_uart_rx_fifo_syncfifo_dout = netsoc_netsoc_uart_rx_fifo_rdport_dat_r;
assign netsoc_netsoc_uart_rx_fifo_syncfifo_writable = (netsoc_netsoc_uart_rx_fifo_level != 5'd16);
assign netsoc_netsoc_uart_rx_fifo_syncfifo_readable = (netsoc_netsoc_uart_rx_fifo_level != 1'd0);
assign netsoc_netsoc_timer0_zero_trigger = (netsoc_netsoc_timer0_value != 1'd0);
assign netsoc_netsoc_timer0_eventmanager_status_w = netsoc_netsoc_timer0_zero_status;

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	netsoc_netsoc_timer0_zero_clear <= 1'd0;
	if ((netsoc_netsoc_timer0_eventmanager_pending_re & netsoc_netsoc_timer0_eventmanager_pending_r)) begin
		netsoc_netsoc_timer0_zero_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end
assign netsoc_netsoc_timer0_eventmanager_pending_w = netsoc_netsoc_timer0_zero_pending;
assign netsoc_netsoc_timer0_irq = (netsoc_netsoc_timer0_eventmanager_pending_w & netsoc_netsoc_timer0_eventmanager_storage);
assign netsoc_netsoc_timer0_zero_status = netsoc_netsoc_timer0_zero_trigger;
assign por_clk = sys_clk;
assign sdram_full_rd_clk = sdram_full_wr_clk;
assign netsoc_crg_clk4x_rd_strb = netsoc_crg_clk4x_wr_strb;
assign netsoc_git_status = 157'd172085711681377380222213630004461379165498271442;
assign netsoc_platform_status = 63'd7022356987853668352;
assign netsoc_target_status = 63'd7954891860168671232;
assign netsoc_bus_dat_r = netsoc_sr;

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	spiflash4x_cs_n <= 1'd0;
	spiflash4x_clk <= 1'd0;
	netsoc_status <= 1'd0;
	netsoc_o <= 4'd0;
	netsoc_oe <= 1'd0;
	if (netsoc_bitbang_en_storage) begin
		spiflash4x_clk <= netsoc_bitbang_storage[1];
		spiflash4x_cs_n <= netsoc_bitbang_storage[2];
		if (netsoc_bitbang_storage[3]) begin
			netsoc_oe <= 1'd0;
		end else begin
			netsoc_oe <= 1'd1;
		end
		if (netsoc_bitbang_storage[1]) begin
			netsoc_status <= netsoc_i0[1];
		end
		netsoc_o <= {{3{1'd1}}, netsoc_bitbang_storage[0]};
	end else begin
		spiflash4x_clk <= netsoc_clk;
		spiflash4x_cs_n <= netsoc_cs_n;
		netsoc_o <= netsoc_sr[31:28];
		netsoc_oe <= netsoc_dq_oe;
	end
// synthesis translate_off
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end
assign netsoc_ddrphy_sdram_half_clk_n = (~sdram_half_clk);
assign netsoc_ddrphy_dqs_t_d0 = (~(netsoc_ddrphy_drive_dqs | netsoc_ddrphy_postamble));
assign netsoc_ddrphy_dqs_t_d1 = (~netsoc_ddrphy_drive_dqs);
assign netsoc_ddrphy_record0_wrdata = netsoc_ddrphy_dfi_p0_wrdata;
assign netsoc_ddrphy_record0_wrdata_mask = netsoc_ddrphy_dfi_p0_wrdata_mask;
assign netsoc_ddrphy_record0_wrdata_en = netsoc_ddrphy_dfi_p0_wrdata_en;
assign netsoc_ddrphy_record0_rddata_en = netsoc_ddrphy_dfi_p0_rddata_en;
assign netsoc_ddrphy_record1_wrdata = netsoc_ddrphy_dfi_p1_wrdata;
assign netsoc_ddrphy_record1_wrdata_mask = netsoc_ddrphy_dfi_p1_wrdata_mask;
assign netsoc_ddrphy_record1_wrdata_en = netsoc_ddrphy_dfi_p1_wrdata_en;
assign netsoc_ddrphy_record1_rddata_en = netsoc_ddrphy_dfi_p1_rddata_en;
assign netsoc_ddrphy_drive_dq_n0 = (~netsoc_ddrphy_drive_dq);
assign netsoc_ddrphy_wrdata_en = (netsoc_ddrphy_record0_wrdata_en | netsoc_ddrphy_record1_wrdata_en);
assign netsoc_ddrphy_drive_dq = netsoc_ddrphy_wrdata_en;
assign netsoc_ddrphy_drive_dqs = netsoc_ddrphy_r_dfi_wrdata_en[1];
assign netsoc_ddrphy_rddata_en = (netsoc_ddrphy_record0_rddata_en | netsoc_ddrphy_record1_rddata_en);
assign netsoc_ddrphy_dfi_p0_rddata = netsoc_ddrphy_record0_rddata;
assign netsoc_ddrphy_dfi_p0_rddata_valid = netsoc_ddrphy_rddata_sr[0];
assign netsoc_ddrphy_dfi_p1_rddata = netsoc_ddrphy_record1_rddata;
assign netsoc_ddrphy_dfi_p1_rddata_valid = netsoc_ddrphy_rddata_sr[0];
assign netsoc_ddrphy_dfi_p0_address = netsoc_sdram_master_p0_address;
assign netsoc_ddrphy_dfi_p0_bank = netsoc_sdram_master_p0_bank;
assign netsoc_ddrphy_dfi_p0_cas_n = netsoc_sdram_master_p0_cas_n;
assign netsoc_ddrphy_dfi_p0_cs_n = netsoc_sdram_master_p0_cs_n;
assign netsoc_ddrphy_dfi_p0_ras_n = netsoc_sdram_master_p0_ras_n;
assign netsoc_ddrphy_dfi_p0_we_n = netsoc_sdram_master_p0_we_n;
assign netsoc_ddrphy_dfi_p0_cke = netsoc_sdram_master_p0_cke;
assign netsoc_ddrphy_dfi_p0_odt = netsoc_sdram_master_p0_odt;
assign netsoc_ddrphy_dfi_p0_reset_n = netsoc_sdram_master_p0_reset_n;
assign netsoc_ddrphy_dfi_p0_wrdata = netsoc_sdram_master_p0_wrdata;
assign netsoc_ddrphy_dfi_p0_wrdata_en = netsoc_sdram_master_p0_wrdata_en;
assign netsoc_ddrphy_dfi_p0_wrdata_mask = netsoc_sdram_master_p0_wrdata_mask;
assign netsoc_ddrphy_dfi_p0_rddata_en = netsoc_sdram_master_p0_rddata_en;
assign netsoc_sdram_master_p0_rddata = netsoc_ddrphy_dfi_p0_rddata;
assign netsoc_sdram_master_p0_rddata_valid = netsoc_ddrphy_dfi_p0_rddata_valid;
assign netsoc_ddrphy_dfi_p1_address = netsoc_sdram_master_p1_address;
assign netsoc_ddrphy_dfi_p1_bank = netsoc_sdram_master_p1_bank;
assign netsoc_ddrphy_dfi_p1_cas_n = netsoc_sdram_master_p1_cas_n;
assign netsoc_ddrphy_dfi_p1_cs_n = netsoc_sdram_master_p1_cs_n;
assign netsoc_ddrphy_dfi_p1_ras_n = netsoc_sdram_master_p1_ras_n;
assign netsoc_ddrphy_dfi_p1_we_n = netsoc_sdram_master_p1_we_n;
assign netsoc_ddrphy_dfi_p1_cke = netsoc_sdram_master_p1_cke;
assign netsoc_ddrphy_dfi_p1_odt = netsoc_sdram_master_p1_odt;
assign netsoc_ddrphy_dfi_p1_reset_n = netsoc_sdram_master_p1_reset_n;
assign netsoc_ddrphy_dfi_p1_wrdata = netsoc_sdram_master_p1_wrdata;
assign netsoc_ddrphy_dfi_p1_wrdata_en = netsoc_sdram_master_p1_wrdata_en;
assign netsoc_ddrphy_dfi_p1_wrdata_mask = netsoc_sdram_master_p1_wrdata_mask;
assign netsoc_ddrphy_dfi_p1_rddata_en = netsoc_sdram_master_p1_rddata_en;
assign netsoc_sdram_master_p1_rddata = netsoc_ddrphy_dfi_p1_rddata;
assign netsoc_sdram_master_p1_rddata_valid = netsoc_ddrphy_dfi_p1_rddata_valid;
assign netsoc_sdram_slave_p0_address = netsoc_sdram_dfi_p0_address;
assign netsoc_sdram_slave_p0_bank = netsoc_sdram_dfi_p0_bank;
assign netsoc_sdram_slave_p0_cas_n = netsoc_sdram_dfi_p0_cas_n;
assign netsoc_sdram_slave_p0_cs_n = netsoc_sdram_dfi_p0_cs_n;
assign netsoc_sdram_slave_p0_ras_n = netsoc_sdram_dfi_p0_ras_n;
assign netsoc_sdram_slave_p0_we_n = netsoc_sdram_dfi_p0_we_n;
assign netsoc_sdram_slave_p0_cke = netsoc_sdram_dfi_p0_cke;
assign netsoc_sdram_slave_p0_odt = netsoc_sdram_dfi_p0_odt;
assign netsoc_sdram_slave_p0_reset_n = netsoc_sdram_dfi_p0_reset_n;
assign netsoc_sdram_slave_p0_wrdata = netsoc_sdram_dfi_p0_wrdata;
assign netsoc_sdram_slave_p0_wrdata_en = netsoc_sdram_dfi_p0_wrdata_en;
assign netsoc_sdram_slave_p0_wrdata_mask = netsoc_sdram_dfi_p0_wrdata_mask;
assign netsoc_sdram_slave_p0_rddata_en = netsoc_sdram_dfi_p0_rddata_en;
assign netsoc_sdram_dfi_p0_rddata = netsoc_sdram_slave_p0_rddata;
assign netsoc_sdram_dfi_p0_rddata_valid = netsoc_sdram_slave_p0_rddata_valid;
assign netsoc_sdram_slave_p1_address = netsoc_sdram_dfi_p1_address;
assign netsoc_sdram_slave_p1_bank = netsoc_sdram_dfi_p1_bank;
assign netsoc_sdram_slave_p1_cas_n = netsoc_sdram_dfi_p1_cas_n;
assign netsoc_sdram_slave_p1_cs_n = netsoc_sdram_dfi_p1_cs_n;
assign netsoc_sdram_slave_p1_ras_n = netsoc_sdram_dfi_p1_ras_n;
assign netsoc_sdram_slave_p1_we_n = netsoc_sdram_dfi_p1_we_n;
assign netsoc_sdram_slave_p1_cke = netsoc_sdram_dfi_p1_cke;
assign netsoc_sdram_slave_p1_odt = netsoc_sdram_dfi_p1_odt;
assign netsoc_sdram_slave_p1_reset_n = netsoc_sdram_dfi_p1_reset_n;
assign netsoc_sdram_slave_p1_wrdata = netsoc_sdram_dfi_p1_wrdata;
assign netsoc_sdram_slave_p1_wrdata_en = netsoc_sdram_dfi_p1_wrdata_en;
assign netsoc_sdram_slave_p1_wrdata_mask = netsoc_sdram_dfi_p1_wrdata_mask;
assign netsoc_sdram_slave_p1_rddata_en = netsoc_sdram_dfi_p1_rddata_en;
assign netsoc_sdram_dfi_p1_rddata = netsoc_sdram_slave_p1_rddata;
assign netsoc_sdram_dfi_p1_rddata_valid = netsoc_sdram_slave_p1_rddata_valid;

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_master_p1_wrdata_mask <= 4'd0;
	netsoc_sdram_master_p1_rddata_en <= 1'd0;
	netsoc_sdram_inti_p0_rddata <= 32'd0;
	netsoc_sdram_inti_p0_rddata_valid <= 1'd0;
	netsoc_sdram_inti_p1_rddata <= 32'd0;
	netsoc_sdram_inti_p1_rddata_valid <= 1'd0;
	netsoc_sdram_slave_p0_rddata <= 32'd0;
	netsoc_sdram_slave_p0_rddata_valid <= 1'd0;
	netsoc_sdram_slave_p1_rddata <= 32'd0;
	netsoc_sdram_slave_p1_rddata_valid <= 1'd0;
	netsoc_sdram_master_p0_address <= 13'd0;
	netsoc_sdram_master_p0_bank <= 3'd0;
	netsoc_sdram_master_p0_cas_n <= 1'd1;
	netsoc_sdram_master_p0_cs_n <= 1'd1;
	netsoc_sdram_master_p0_ras_n <= 1'd1;
	netsoc_sdram_master_p0_we_n <= 1'd1;
	netsoc_sdram_master_p0_cke <= 1'd0;
	netsoc_sdram_master_p0_odt <= 1'd0;
	netsoc_sdram_master_p0_reset_n <= 1'd0;
	netsoc_sdram_master_p0_wrdata <= 32'd0;
	netsoc_sdram_master_p0_wrdata_en <= 1'd0;
	netsoc_sdram_master_p0_wrdata_mask <= 4'd0;
	netsoc_sdram_master_p0_rddata_en <= 1'd0;
	netsoc_sdram_master_p1_address <= 13'd0;
	netsoc_sdram_master_p1_bank <= 3'd0;
	netsoc_sdram_master_p1_cas_n <= 1'd1;
	netsoc_sdram_master_p1_cs_n <= 1'd1;
	netsoc_sdram_master_p1_ras_n <= 1'd1;
	netsoc_sdram_master_p1_we_n <= 1'd1;
	netsoc_sdram_master_p1_cke <= 1'd0;
	netsoc_sdram_master_p1_odt <= 1'd0;
	netsoc_sdram_master_p1_reset_n <= 1'd0;
	netsoc_sdram_master_p1_wrdata <= 32'd0;
	netsoc_sdram_master_p1_wrdata_en <= 1'd0;
	if (netsoc_sdram_storage[0]) begin
		netsoc_sdram_master_p0_address <= netsoc_sdram_slave_p0_address;
		netsoc_sdram_master_p0_bank <= netsoc_sdram_slave_p0_bank;
		netsoc_sdram_master_p0_cas_n <= netsoc_sdram_slave_p0_cas_n;
		netsoc_sdram_master_p0_cs_n <= netsoc_sdram_slave_p0_cs_n;
		netsoc_sdram_master_p0_ras_n <= netsoc_sdram_slave_p0_ras_n;
		netsoc_sdram_master_p0_we_n <= netsoc_sdram_slave_p0_we_n;
		netsoc_sdram_master_p0_cke <= netsoc_sdram_slave_p0_cke;
		netsoc_sdram_master_p0_odt <= netsoc_sdram_slave_p0_odt;
		netsoc_sdram_master_p0_reset_n <= netsoc_sdram_slave_p0_reset_n;
		netsoc_sdram_master_p0_wrdata <= netsoc_sdram_slave_p0_wrdata;
		netsoc_sdram_master_p0_wrdata_en <= netsoc_sdram_slave_p0_wrdata_en;
		netsoc_sdram_master_p0_wrdata_mask <= netsoc_sdram_slave_p0_wrdata_mask;
		netsoc_sdram_master_p0_rddata_en <= netsoc_sdram_slave_p0_rddata_en;
		netsoc_sdram_slave_p0_rddata <= netsoc_sdram_master_p0_rddata;
		netsoc_sdram_slave_p0_rddata_valid <= netsoc_sdram_master_p0_rddata_valid;
		netsoc_sdram_master_p1_address <= netsoc_sdram_slave_p1_address;
		netsoc_sdram_master_p1_bank <= netsoc_sdram_slave_p1_bank;
		netsoc_sdram_master_p1_cas_n <= netsoc_sdram_slave_p1_cas_n;
		netsoc_sdram_master_p1_cs_n <= netsoc_sdram_slave_p1_cs_n;
		netsoc_sdram_master_p1_ras_n <= netsoc_sdram_slave_p1_ras_n;
		netsoc_sdram_master_p1_we_n <= netsoc_sdram_slave_p1_we_n;
		netsoc_sdram_master_p1_cke <= netsoc_sdram_slave_p1_cke;
		netsoc_sdram_master_p1_odt <= netsoc_sdram_slave_p1_odt;
		netsoc_sdram_master_p1_reset_n <= netsoc_sdram_slave_p1_reset_n;
		netsoc_sdram_master_p1_wrdata <= netsoc_sdram_slave_p1_wrdata;
		netsoc_sdram_master_p1_wrdata_en <= netsoc_sdram_slave_p1_wrdata_en;
		netsoc_sdram_master_p1_wrdata_mask <= netsoc_sdram_slave_p1_wrdata_mask;
		netsoc_sdram_master_p1_rddata_en <= netsoc_sdram_slave_p1_rddata_en;
		netsoc_sdram_slave_p1_rddata <= netsoc_sdram_master_p1_rddata;
		netsoc_sdram_slave_p1_rddata_valid <= netsoc_sdram_master_p1_rddata_valid;
	end else begin
		netsoc_sdram_master_p0_address <= netsoc_sdram_inti_p0_address;
		netsoc_sdram_master_p0_bank <= netsoc_sdram_inti_p0_bank;
		netsoc_sdram_master_p0_cas_n <= netsoc_sdram_inti_p0_cas_n;
		netsoc_sdram_master_p0_cs_n <= netsoc_sdram_inti_p0_cs_n;
		netsoc_sdram_master_p0_ras_n <= netsoc_sdram_inti_p0_ras_n;
		netsoc_sdram_master_p0_we_n <= netsoc_sdram_inti_p0_we_n;
		netsoc_sdram_master_p0_cke <= netsoc_sdram_inti_p0_cke;
		netsoc_sdram_master_p0_odt <= netsoc_sdram_inti_p0_odt;
		netsoc_sdram_master_p0_reset_n <= netsoc_sdram_inti_p0_reset_n;
		netsoc_sdram_master_p0_wrdata <= netsoc_sdram_inti_p0_wrdata;
		netsoc_sdram_master_p0_wrdata_en <= netsoc_sdram_inti_p0_wrdata_en;
		netsoc_sdram_master_p0_wrdata_mask <= netsoc_sdram_inti_p0_wrdata_mask;
		netsoc_sdram_master_p0_rddata_en <= netsoc_sdram_inti_p0_rddata_en;
		netsoc_sdram_inti_p0_rddata <= netsoc_sdram_master_p0_rddata;
		netsoc_sdram_inti_p0_rddata_valid <= netsoc_sdram_master_p0_rddata_valid;
		netsoc_sdram_master_p1_address <= netsoc_sdram_inti_p1_address;
		netsoc_sdram_master_p1_bank <= netsoc_sdram_inti_p1_bank;
		netsoc_sdram_master_p1_cas_n <= netsoc_sdram_inti_p1_cas_n;
		netsoc_sdram_master_p1_cs_n <= netsoc_sdram_inti_p1_cs_n;
		netsoc_sdram_master_p1_ras_n <= netsoc_sdram_inti_p1_ras_n;
		netsoc_sdram_master_p1_we_n <= netsoc_sdram_inti_p1_we_n;
		netsoc_sdram_master_p1_cke <= netsoc_sdram_inti_p1_cke;
		netsoc_sdram_master_p1_odt <= netsoc_sdram_inti_p1_odt;
		netsoc_sdram_master_p1_reset_n <= netsoc_sdram_inti_p1_reset_n;
		netsoc_sdram_master_p1_wrdata <= netsoc_sdram_inti_p1_wrdata;
		netsoc_sdram_master_p1_wrdata_en <= netsoc_sdram_inti_p1_wrdata_en;
		netsoc_sdram_master_p1_wrdata_mask <= netsoc_sdram_inti_p1_wrdata_mask;
		netsoc_sdram_master_p1_rddata_en <= netsoc_sdram_inti_p1_rddata_en;
		netsoc_sdram_inti_p1_rddata <= netsoc_sdram_master_p1_rddata;
		netsoc_sdram_inti_p1_rddata_valid <= netsoc_sdram_master_p1_rddata_valid;
	end
// synthesis translate_off
	dummy_d_10 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_inti_p0_cke = netsoc_sdram_storage[1];
assign netsoc_sdram_inti_p1_cke = netsoc_sdram_storage[1];
assign netsoc_sdram_inti_p0_odt = netsoc_sdram_storage[2];
assign netsoc_sdram_inti_p1_odt = netsoc_sdram_storage[2];
assign netsoc_sdram_inti_p0_reset_n = netsoc_sdram_storage[3];
assign netsoc_sdram_inti_p1_reset_n = netsoc_sdram_storage[3];

// synthesis translate_off
reg dummy_d_11;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_inti_p0_cas_n <= 1'd1;
	netsoc_sdram_inti_p0_cs_n <= 1'd1;
	netsoc_sdram_inti_p0_ras_n <= 1'd1;
	netsoc_sdram_inti_p0_we_n <= 1'd1;
	if (netsoc_sdram_phaseinjector0_command_issue_re) begin
		netsoc_sdram_inti_p0_cs_n <= (~netsoc_sdram_phaseinjector0_command_storage[0]);
		netsoc_sdram_inti_p0_we_n <= (~netsoc_sdram_phaseinjector0_command_storage[1]);
		netsoc_sdram_inti_p0_cas_n <= (~netsoc_sdram_phaseinjector0_command_storage[2]);
		netsoc_sdram_inti_p0_ras_n <= (~netsoc_sdram_phaseinjector0_command_storage[3]);
	end else begin
		netsoc_sdram_inti_p0_cs_n <= 1'd1;
		netsoc_sdram_inti_p0_we_n <= 1'd1;
		netsoc_sdram_inti_p0_cas_n <= 1'd1;
		netsoc_sdram_inti_p0_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_11 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_inti_p0_address = netsoc_sdram_phaseinjector0_address_storage;
assign netsoc_sdram_inti_p0_bank = netsoc_sdram_phaseinjector0_baddress_storage;
assign netsoc_sdram_inti_p0_wrdata_en = (netsoc_sdram_phaseinjector0_command_issue_re & netsoc_sdram_phaseinjector0_command_storage[4]);
assign netsoc_sdram_inti_p0_rddata_en = (netsoc_sdram_phaseinjector0_command_issue_re & netsoc_sdram_phaseinjector0_command_storage[5]);
assign netsoc_sdram_inti_p0_wrdata = netsoc_sdram_phaseinjector0_wrdata_storage;
assign netsoc_sdram_inti_p0_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_12;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_inti_p1_cs_n <= 1'd1;
	netsoc_sdram_inti_p1_ras_n <= 1'd1;
	netsoc_sdram_inti_p1_we_n <= 1'd1;
	netsoc_sdram_inti_p1_cas_n <= 1'd1;
	if (netsoc_sdram_phaseinjector1_command_issue_re) begin
		netsoc_sdram_inti_p1_cs_n <= (~netsoc_sdram_phaseinjector1_command_storage[0]);
		netsoc_sdram_inti_p1_we_n <= (~netsoc_sdram_phaseinjector1_command_storage[1]);
		netsoc_sdram_inti_p1_cas_n <= (~netsoc_sdram_phaseinjector1_command_storage[2]);
		netsoc_sdram_inti_p1_ras_n <= (~netsoc_sdram_phaseinjector1_command_storage[3]);
	end else begin
		netsoc_sdram_inti_p1_cs_n <= 1'd1;
		netsoc_sdram_inti_p1_we_n <= 1'd1;
		netsoc_sdram_inti_p1_cas_n <= 1'd1;
		netsoc_sdram_inti_p1_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_12 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_inti_p1_address = netsoc_sdram_phaseinjector1_address_storage;
assign netsoc_sdram_inti_p1_bank = netsoc_sdram_phaseinjector1_baddress_storage;
assign netsoc_sdram_inti_p1_wrdata_en = (netsoc_sdram_phaseinjector1_command_issue_re & netsoc_sdram_phaseinjector1_command_storage[4]);
assign netsoc_sdram_inti_p1_rddata_en = (netsoc_sdram_phaseinjector1_command_issue_re & netsoc_sdram_phaseinjector1_command_storage[5]);
assign netsoc_sdram_inti_p1_wrdata = netsoc_sdram_phaseinjector1_wrdata_storage;
assign netsoc_sdram_inti_p1_wrdata_mask = 1'd0;
assign netsoc_sdram_bankmachine0_req_valid = netsoc_sdram_interface_bank0_valid;
assign netsoc_sdram_interface_bank0_ready = netsoc_sdram_bankmachine0_req_ready;
assign netsoc_sdram_bankmachine0_req_we = netsoc_sdram_interface_bank0_we;
assign netsoc_sdram_bankmachine0_req_adr = netsoc_sdram_interface_bank0_adr;
assign netsoc_sdram_interface_bank0_lock = netsoc_sdram_bankmachine0_req_lock;
assign netsoc_sdram_interface_bank0_wdata_ready = netsoc_sdram_bankmachine0_req_wdata_ready;
assign netsoc_sdram_interface_bank0_rdata_valid = netsoc_sdram_bankmachine0_req_rdata_valid;
assign netsoc_sdram_bankmachine1_req_valid = netsoc_sdram_interface_bank1_valid;
assign netsoc_sdram_interface_bank1_ready = netsoc_sdram_bankmachine1_req_ready;
assign netsoc_sdram_bankmachine1_req_we = netsoc_sdram_interface_bank1_we;
assign netsoc_sdram_bankmachine1_req_adr = netsoc_sdram_interface_bank1_adr;
assign netsoc_sdram_interface_bank1_lock = netsoc_sdram_bankmachine1_req_lock;
assign netsoc_sdram_interface_bank1_wdata_ready = netsoc_sdram_bankmachine1_req_wdata_ready;
assign netsoc_sdram_interface_bank1_rdata_valid = netsoc_sdram_bankmachine1_req_rdata_valid;
assign netsoc_sdram_bankmachine2_req_valid = netsoc_sdram_interface_bank2_valid;
assign netsoc_sdram_interface_bank2_ready = netsoc_sdram_bankmachine2_req_ready;
assign netsoc_sdram_bankmachine2_req_we = netsoc_sdram_interface_bank2_we;
assign netsoc_sdram_bankmachine2_req_adr = netsoc_sdram_interface_bank2_adr;
assign netsoc_sdram_interface_bank2_lock = netsoc_sdram_bankmachine2_req_lock;
assign netsoc_sdram_interface_bank2_wdata_ready = netsoc_sdram_bankmachine2_req_wdata_ready;
assign netsoc_sdram_interface_bank2_rdata_valid = netsoc_sdram_bankmachine2_req_rdata_valid;
assign netsoc_sdram_bankmachine3_req_valid = netsoc_sdram_interface_bank3_valid;
assign netsoc_sdram_interface_bank3_ready = netsoc_sdram_bankmachine3_req_ready;
assign netsoc_sdram_bankmachine3_req_we = netsoc_sdram_interface_bank3_we;
assign netsoc_sdram_bankmachine3_req_adr = netsoc_sdram_interface_bank3_adr;
assign netsoc_sdram_interface_bank3_lock = netsoc_sdram_bankmachine3_req_lock;
assign netsoc_sdram_interface_bank3_wdata_ready = netsoc_sdram_bankmachine3_req_wdata_ready;
assign netsoc_sdram_interface_bank3_rdata_valid = netsoc_sdram_bankmachine3_req_rdata_valid;
assign netsoc_sdram_bankmachine4_req_valid = netsoc_sdram_interface_bank4_valid;
assign netsoc_sdram_interface_bank4_ready = netsoc_sdram_bankmachine4_req_ready;
assign netsoc_sdram_bankmachine4_req_we = netsoc_sdram_interface_bank4_we;
assign netsoc_sdram_bankmachine4_req_adr = netsoc_sdram_interface_bank4_adr;
assign netsoc_sdram_interface_bank4_lock = netsoc_sdram_bankmachine4_req_lock;
assign netsoc_sdram_interface_bank4_wdata_ready = netsoc_sdram_bankmachine4_req_wdata_ready;
assign netsoc_sdram_interface_bank4_rdata_valid = netsoc_sdram_bankmachine4_req_rdata_valid;
assign netsoc_sdram_bankmachine5_req_valid = netsoc_sdram_interface_bank5_valid;
assign netsoc_sdram_interface_bank5_ready = netsoc_sdram_bankmachine5_req_ready;
assign netsoc_sdram_bankmachine5_req_we = netsoc_sdram_interface_bank5_we;
assign netsoc_sdram_bankmachine5_req_adr = netsoc_sdram_interface_bank5_adr;
assign netsoc_sdram_interface_bank5_lock = netsoc_sdram_bankmachine5_req_lock;
assign netsoc_sdram_interface_bank5_wdata_ready = netsoc_sdram_bankmachine5_req_wdata_ready;
assign netsoc_sdram_interface_bank5_rdata_valid = netsoc_sdram_bankmachine5_req_rdata_valid;
assign netsoc_sdram_bankmachine6_req_valid = netsoc_sdram_interface_bank6_valid;
assign netsoc_sdram_interface_bank6_ready = netsoc_sdram_bankmachine6_req_ready;
assign netsoc_sdram_bankmachine6_req_we = netsoc_sdram_interface_bank6_we;
assign netsoc_sdram_bankmachine6_req_adr = netsoc_sdram_interface_bank6_adr;
assign netsoc_sdram_interface_bank6_lock = netsoc_sdram_bankmachine6_req_lock;
assign netsoc_sdram_interface_bank6_wdata_ready = netsoc_sdram_bankmachine6_req_wdata_ready;
assign netsoc_sdram_interface_bank6_rdata_valid = netsoc_sdram_bankmachine6_req_rdata_valid;
assign netsoc_sdram_bankmachine7_req_valid = netsoc_sdram_interface_bank7_valid;
assign netsoc_sdram_interface_bank7_ready = netsoc_sdram_bankmachine7_req_ready;
assign netsoc_sdram_bankmachine7_req_we = netsoc_sdram_interface_bank7_we;
assign netsoc_sdram_bankmachine7_req_adr = netsoc_sdram_interface_bank7_adr;
assign netsoc_sdram_interface_bank7_lock = netsoc_sdram_bankmachine7_req_lock;
assign netsoc_sdram_interface_bank7_wdata_ready = netsoc_sdram_bankmachine7_req_wdata_ready;
assign netsoc_sdram_interface_bank7_rdata_valid = netsoc_sdram_bankmachine7_req_rdata_valid;
assign netsoc_sdram_wait = (1'd1 & (~netsoc_sdram_done));
assign netsoc_sdram_done = (netsoc_sdram_count == 1'd0);

// synthesis translate_off
reg dummy_d_13;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_seq_start <= 1'd0;
	netsoc_sdram_cmd_valid <= 1'd0;
	netsoc_sdram_cmd_last <= 1'd0;
	refresher_next_state <= 2'd0;
	refresher_next_state <= refresher_state;
	case (refresher_state)
		1'd1: begin
			netsoc_sdram_cmd_valid <= 1'd1;
			if (netsoc_sdram_cmd_ready) begin
				netsoc_sdram_seq_start <= 1'd1;
				refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (netsoc_sdram_seq_done) begin
				netsoc_sdram_cmd_last <= 1'd1;
				refresher_next_state <= 1'd0;
			end else begin
				netsoc_sdram_cmd_valid <= 1'd1;
			end
		end
		default: begin
			if (netsoc_sdram_done) begin
				refresher_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_13 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine0_sink_valid = netsoc_sdram_bankmachine0_req_valid;
assign netsoc_sdram_bankmachine0_req_ready = netsoc_sdram_bankmachine0_sink_ready;
assign netsoc_sdram_bankmachine0_sink_payload_we = netsoc_sdram_bankmachine0_req_we;
assign netsoc_sdram_bankmachine0_sink_payload_adr = netsoc_sdram_bankmachine0_req_adr;
assign netsoc_sdram_bankmachine0_source_ready = (netsoc_sdram_bankmachine0_req_wdata_ready | netsoc_sdram_bankmachine0_req_rdata_valid);
assign netsoc_sdram_bankmachine0_req_lock = netsoc_sdram_bankmachine0_source_valid;
assign netsoc_sdram_bankmachine0_hit = (netsoc_sdram_bankmachine0_openrow == netsoc_sdram_bankmachine0_source_payload_adr[20:8]);
assign netsoc_sdram_bankmachine0_cmd_payload_ba = 1'd0;

// synthesis translate_off
reg dummy_d_14;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine0_cmd_payload_a <= 13'd0;
	if (netsoc_sdram_bankmachine0_sel_row_adr) begin
		netsoc_sdram_bankmachine0_cmd_payload_a <= netsoc_sdram_bankmachine0_source_payload_adr[20:8];
	end else begin
		netsoc_sdram_bankmachine0_cmd_payload_a <= {netsoc_sdram_bankmachine0_source_payload_adr[7:0], {2{1'd0}}};
	end
// synthesis translate_off
	dummy_d_14 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine0_wait = (~((netsoc_sdram_bankmachine0_cmd_valid & netsoc_sdram_bankmachine0_cmd_ready) & netsoc_sdram_bankmachine0_cmd_payload_is_write));
assign netsoc_sdram_bankmachine0_syncfifo0_din = {netsoc_sdram_bankmachine0_fifo_in_last, netsoc_sdram_bankmachine0_fifo_in_first, netsoc_sdram_bankmachine0_fifo_in_payload_adr, netsoc_sdram_bankmachine0_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine0_fifo_out_last, netsoc_sdram_bankmachine0_fifo_out_first, netsoc_sdram_bankmachine0_fifo_out_payload_adr, netsoc_sdram_bankmachine0_fifo_out_payload_we} = netsoc_sdram_bankmachine0_syncfifo0_dout;
assign netsoc_sdram_bankmachine0_sink_ready = netsoc_sdram_bankmachine0_syncfifo0_writable;
assign netsoc_sdram_bankmachine0_syncfifo0_we = netsoc_sdram_bankmachine0_sink_valid;
assign netsoc_sdram_bankmachine0_fifo_in_first = netsoc_sdram_bankmachine0_sink_first;
assign netsoc_sdram_bankmachine0_fifo_in_last = netsoc_sdram_bankmachine0_sink_last;
assign netsoc_sdram_bankmachine0_fifo_in_payload_we = netsoc_sdram_bankmachine0_sink_payload_we;
assign netsoc_sdram_bankmachine0_fifo_in_payload_adr = netsoc_sdram_bankmachine0_sink_payload_adr;
assign netsoc_sdram_bankmachine0_source_valid = netsoc_sdram_bankmachine0_syncfifo0_readable;
assign netsoc_sdram_bankmachine0_source_first = netsoc_sdram_bankmachine0_fifo_out_first;
assign netsoc_sdram_bankmachine0_source_last = netsoc_sdram_bankmachine0_fifo_out_last;
assign netsoc_sdram_bankmachine0_source_payload_we = netsoc_sdram_bankmachine0_fifo_out_payload_we;
assign netsoc_sdram_bankmachine0_source_payload_adr = netsoc_sdram_bankmachine0_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine0_syncfifo0_re = netsoc_sdram_bankmachine0_source_ready;

// synthesis translate_off
reg dummy_d_15;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine0_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine0_replace) begin
		netsoc_sdram_bankmachine0_wrport_adr <= (netsoc_sdram_bankmachine0_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine0_wrport_adr <= netsoc_sdram_bankmachine0_produce;
	end
// synthesis translate_off
	dummy_d_15 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine0_wrport_dat_w = netsoc_sdram_bankmachine0_syncfifo0_din;
assign netsoc_sdram_bankmachine0_wrport_we = (netsoc_sdram_bankmachine0_syncfifo0_we & (netsoc_sdram_bankmachine0_syncfifo0_writable | netsoc_sdram_bankmachine0_replace));
assign netsoc_sdram_bankmachine0_do_read = (netsoc_sdram_bankmachine0_syncfifo0_readable & netsoc_sdram_bankmachine0_syncfifo0_re);
assign netsoc_sdram_bankmachine0_rdport_adr = netsoc_sdram_bankmachine0_consume;
assign netsoc_sdram_bankmachine0_syncfifo0_dout = netsoc_sdram_bankmachine0_rdport_dat_r;
assign netsoc_sdram_bankmachine0_syncfifo0_writable = (netsoc_sdram_bankmachine0_level != 4'd8);
assign netsoc_sdram_bankmachine0_syncfifo0_readable = (netsoc_sdram_bankmachine0_level != 1'd0);
assign netsoc_sdram_bankmachine0_done = (netsoc_sdram_bankmachine0_count == 1'd0);

// synthesis translate_off
reg dummy_d_16;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd0;
	netsoc_sdram_bankmachine0_req_wdata_ready <= 1'd0;
	bankmachine0_next_state <= 3'd0;
	netsoc_sdram_bankmachine0_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine0_track_close <= 1'd0;
	netsoc_sdram_bankmachine0_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_valid <= 1'd0;
	netsoc_sdram_bankmachine0_track_open <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine0_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd0;
	bankmachine0_next_state <= bankmachine0_state;
	case (bankmachine0_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine0_done) begin
				netsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 3'd4;
				end
				netsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine0_track_close <= 1'd1;
		end
		2'd2: begin
			netsoc_sdram_bankmachine0_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine0_track_open <= 1'd1;
			netsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
			netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if (netsoc_sdram_bankmachine0_cmd_ready) begin
				bankmachine0_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (netsoc_sdram_bankmachine0_done) begin
				netsoc_sdram_bankmachine0_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine0_track_close <= 1'd1;
			netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine0_refresh_req)) begin
				bankmachine0_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine0_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine0_refresh_req) begin
				bankmachine0_next_state <= 2'd3;
			end else begin
				if (netsoc_sdram_bankmachine0_source_valid) begin
					if (netsoc_sdram_bankmachine0_has_openrow) begin
						if (netsoc_sdram_bankmachine0_hit) begin
							netsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
							if (netsoc_sdram_bankmachine0_source_payload_we) begin
								netsoc_sdram_bankmachine0_req_wdata_ready <= netsoc_sdram_bankmachine0_cmd_ready;
								netsoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd1;
								netsoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
							end else begin
								netsoc_sdram_bankmachine0_req_rdata_valid <= netsoc_sdram_bankmachine0_cmd_ready;
								netsoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd1;
							end
							netsoc_sdram_bankmachine0_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine0_next_state <= 1'd1;
						end
					end else begin
						bankmachine0_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_16 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine1_sink_valid = netsoc_sdram_bankmachine1_req_valid;
assign netsoc_sdram_bankmachine1_req_ready = netsoc_sdram_bankmachine1_sink_ready;
assign netsoc_sdram_bankmachine1_sink_payload_we = netsoc_sdram_bankmachine1_req_we;
assign netsoc_sdram_bankmachine1_sink_payload_adr = netsoc_sdram_bankmachine1_req_adr;
assign netsoc_sdram_bankmachine1_source_ready = (netsoc_sdram_bankmachine1_req_wdata_ready | netsoc_sdram_bankmachine1_req_rdata_valid);
assign netsoc_sdram_bankmachine1_req_lock = netsoc_sdram_bankmachine1_source_valid;
assign netsoc_sdram_bankmachine1_hit = (netsoc_sdram_bankmachine1_openrow == netsoc_sdram_bankmachine1_source_payload_adr[20:8]);
assign netsoc_sdram_bankmachine1_cmd_payload_ba = 1'd1;

// synthesis translate_off
reg dummy_d_17;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine1_cmd_payload_a <= 13'd0;
	if (netsoc_sdram_bankmachine1_sel_row_adr) begin
		netsoc_sdram_bankmachine1_cmd_payload_a <= netsoc_sdram_bankmachine1_source_payload_adr[20:8];
	end else begin
		netsoc_sdram_bankmachine1_cmd_payload_a <= {netsoc_sdram_bankmachine1_source_payload_adr[7:0], {2{1'd0}}};
	end
// synthesis translate_off
	dummy_d_17 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine1_wait = (~((netsoc_sdram_bankmachine1_cmd_valid & netsoc_sdram_bankmachine1_cmd_ready) & netsoc_sdram_bankmachine1_cmd_payload_is_write));
assign netsoc_sdram_bankmachine1_syncfifo1_din = {netsoc_sdram_bankmachine1_fifo_in_last, netsoc_sdram_bankmachine1_fifo_in_first, netsoc_sdram_bankmachine1_fifo_in_payload_adr, netsoc_sdram_bankmachine1_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine1_fifo_out_last, netsoc_sdram_bankmachine1_fifo_out_first, netsoc_sdram_bankmachine1_fifo_out_payload_adr, netsoc_sdram_bankmachine1_fifo_out_payload_we} = netsoc_sdram_bankmachine1_syncfifo1_dout;
assign netsoc_sdram_bankmachine1_sink_ready = netsoc_sdram_bankmachine1_syncfifo1_writable;
assign netsoc_sdram_bankmachine1_syncfifo1_we = netsoc_sdram_bankmachine1_sink_valid;
assign netsoc_sdram_bankmachine1_fifo_in_first = netsoc_sdram_bankmachine1_sink_first;
assign netsoc_sdram_bankmachine1_fifo_in_last = netsoc_sdram_bankmachine1_sink_last;
assign netsoc_sdram_bankmachine1_fifo_in_payload_we = netsoc_sdram_bankmachine1_sink_payload_we;
assign netsoc_sdram_bankmachine1_fifo_in_payload_adr = netsoc_sdram_bankmachine1_sink_payload_adr;
assign netsoc_sdram_bankmachine1_source_valid = netsoc_sdram_bankmachine1_syncfifo1_readable;
assign netsoc_sdram_bankmachine1_source_first = netsoc_sdram_bankmachine1_fifo_out_first;
assign netsoc_sdram_bankmachine1_source_last = netsoc_sdram_bankmachine1_fifo_out_last;
assign netsoc_sdram_bankmachine1_source_payload_we = netsoc_sdram_bankmachine1_fifo_out_payload_we;
assign netsoc_sdram_bankmachine1_source_payload_adr = netsoc_sdram_bankmachine1_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine1_syncfifo1_re = netsoc_sdram_bankmachine1_source_ready;

// synthesis translate_off
reg dummy_d_18;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine1_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine1_replace) begin
		netsoc_sdram_bankmachine1_wrport_adr <= (netsoc_sdram_bankmachine1_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine1_wrport_adr <= netsoc_sdram_bankmachine1_produce;
	end
// synthesis translate_off
	dummy_d_18 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine1_wrport_dat_w = netsoc_sdram_bankmachine1_syncfifo1_din;
assign netsoc_sdram_bankmachine1_wrport_we = (netsoc_sdram_bankmachine1_syncfifo1_we & (netsoc_sdram_bankmachine1_syncfifo1_writable | netsoc_sdram_bankmachine1_replace));
assign netsoc_sdram_bankmachine1_do_read = (netsoc_sdram_bankmachine1_syncfifo1_readable & netsoc_sdram_bankmachine1_syncfifo1_re);
assign netsoc_sdram_bankmachine1_rdport_adr = netsoc_sdram_bankmachine1_consume;
assign netsoc_sdram_bankmachine1_syncfifo1_dout = netsoc_sdram_bankmachine1_rdport_dat_r;
assign netsoc_sdram_bankmachine1_syncfifo1_writable = (netsoc_sdram_bankmachine1_level != 4'd8);
assign netsoc_sdram_bankmachine1_syncfifo1_readable = (netsoc_sdram_bankmachine1_level != 1'd0);
assign netsoc_sdram_bankmachine1_done = (netsoc_sdram_bankmachine1_count == 1'd0);

// synthesis translate_off
reg dummy_d_19;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine1_track_open <= 1'd0;
	netsoc_sdram_bankmachine1_track_close <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine1_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd0;
	netsoc_sdram_bankmachine1_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine1_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine1_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_valid <= 1'd0;
	bankmachine1_next_state <= 3'd0;
	bankmachine1_next_state <= bankmachine1_state;
	case (bankmachine1_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine1_done) begin
				netsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 3'd4;
				end
				netsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine1_track_close <= 1'd1;
		end
		2'd2: begin
			netsoc_sdram_bankmachine1_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine1_track_open <= 1'd1;
			netsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
			netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if (netsoc_sdram_bankmachine1_cmd_ready) begin
				bankmachine1_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (netsoc_sdram_bankmachine1_done) begin
				netsoc_sdram_bankmachine1_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine1_track_close <= 1'd1;
			netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine1_refresh_req)) begin
				bankmachine1_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine1_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine1_refresh_req) begin
				bankmachine1_next_state <= 2'd3;
			end else begin
				if (netsoc_sdram_bankmachine1_source_valid) begin
					if (netsoc_sdram_bankmachine1_has_openrow) begin
						if (netsoc_sdram_bankmachine1_hit) begin
							netsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
							if (netsoc_sdram_bankmachine1_source_payload_we) begin
								netsoc_sdram_bankmachine1_req_wdata_ready <= netsoc_sdram_bankmachine1_cmd_ready;
								netsoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd1;
								netsoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
							end else begin
								netsoc_sdram_bankmachine1_req_rdata_valid <= netsoc_sdram_bankmachine1_cmd_ready;
								netsoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd1;
							end
							netsoc_sdram_bankmachine1_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine1_next_state <= 1'd1;
						end
					end else begin
						bankmachine1_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_19 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine2_sink_valid = netsoc_sdram_bankmachine2_req_valid;
assign netsoc_sdram_bankmachine2_req_ready = netsoc_sdram_bankmachine2_sink_ready;
assign netsoc_sdram_bankmachine2_sink_payload_we = netsoc_sdram_bankmachine2_req_we;
assign netsoc_sdram_bankmachine2_sink_payload_adr = netsoc_sdram_bankmachine2_req_adr;
assign netsoc_sdram_bankmachine2_source_ready = (netsoc_sdram_bankmachine2_req_wdata_ready | netsoc_sdram_bankmachine2_req_rdata_valid);
assign netsoc_sdram_bankmachine2_req_lock = netsoc_sdram_bankmachine2_source_valid;
assign netsoc_sdram_bankmachine2_hit = (netsoc_sdram_bankmachine2_openrow == netsoc_sdram_bankmachine2_source_payload_adr[20:8]);
assign netsoc_sdram_bankmachine2_cmd_payload_ba = 2'd2;

// synthesis translate_off
reg dummy_d_20;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine2_cmd_payload_a <= 13'd0;
	if (netsoc_sdram_bankmachine2_sel_row_adr) begin
		netsoc_sdram_bankmachine2_cmd_payload_a <= netsoc_sdram_bankmachine2_source_payload_adr[20:8];
	end else begin
		netsoc_sdram_bankmachine2_cmd_payload_a <= {netsoc_sdram_bankmachine2_source_payload_adr[7:0], {2{1'd0}}};
	end
// synthesis translate_off
	dummy_d_20 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine2_wait = (~((netsoc_sdram_bankmachine2_cmd_valid & netsoc_sdram_bankmachine2_cmd_ready) & netsoc_sdram_bankmachine2_cmd_payload_is_write));
assign netsoc_sdram_bankmachine2_syncfifo2_din = {netsoc_sdram_bankmachine2_fifo_in_last, netsoc_sdram_bankmachine2_fifo_in_first, netsoc_sdram_bankmachine2_fifo_in_payload_adr, netsoc_sdram_bankmachine2_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine2_fifo_out_last, netsoc_sdram_bankmachine2_fifo_out_first, netsoc_sdram_bankmachine2_fifo_out_payload_adr, netsoc_sdram_bankmachine2_fifo_out_payload_we} = netsoc_sdram_bankmachine2_syncfifo2_dout;
assign netsoc_sdram_bankmachine2_sink_ready = netsoc_sdram_bankmachine2_syncfifo2_writable;
assign netsoc_sdram_bankmachine2_syncfifo2_we = netsoc_sdram_bankmachine2_sink_valid;
assign netsoc_sdram_bankmachine2_fifo_in_first = netsoc_sdram_bankmachine2_sink_first;
assign netsoc_sdram_bankmachine2_fifo_in_last = netsoc_sdram_bankmachine2_sink_last;
assign netsoc_sdram_bankmachine2_fifo_in_payload_we = netsoc_sdram_bankmachine2_sink_payload_we;
assign netsoc_sdram_bankmachine2_fifo_in_payload_adr = netsoc_sdram_bankmachine2_sink_payload_adr;
assign netsoc_sdram_bankmachine2_source_valid = netsoc_sdram_bankmachine2_syncfifo2_readable;
assign netsoc_sdram_bankmachine2_source_first = netsoc_sdram_bankmachine2_fifo_out_first;
assign netsoc_sdram_bankmachine2_source_last = netsoc_sdram_bankmachine2_fifo_out_last;
assign netsoc_sdram_bankmachine2_source_payload_we = netsoc_sdram_bankmachine2_fifo_out_payload_we;
assign netsoc_sdram_bankmachine2_source_payload_adr = netsoc_sdram_bankmachine2_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine2_syncfifo2_re = netsoc_sdram_bankmachine2_source_ready;

// synthesis translate_off
reg dummy_d_21;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine2_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine2_replace) begin
		netsoc_sdram_bankmachine2_wrport_adr <= (netsoc_sdram_bankmachine2_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine2_wrport_adr <= netsoc_sdram_bankmachine2_produce;
	end
// synthesis translate_off
	dummy_d_21 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine2_wrport_dat_w = netsoc_sdram_bankmachine2_syncfifo2_din;
assign netsoc_sdram_bankmachine2_wrport_we = (netsoc_sdram_bankmachine2_syncfifo2_we & (netsoc_sdram_bankmachine2_syncfifo2_writable | netsoc_sdram_bankmachine2_replace));
assign netsoc_sdram_bankmachine2_do_read = (netsoc_sdram_bankmachine2_syncfifo2_readable & netsoc_sdram_bankmachine2_syncfifo2_re);
assign netsoc_sdram_bankmachine2_rdport_adr = netsoc_sdram_bankmachine2_consume;
assign netsoc_sdram_bankmachine2_syncfifo2_dout = netsoc_sdram_bankmachine2_rdport_dat_r;
assign netsoc_sdram_bankmachine2_syncfifo2_writable = (netsoc_sdram_bankmachine2_level != 4'd8);
assign netsoc_sdram_bankmachine2_syncfifo2_readable = (netsoc_sdram_bankmachine2_level != 1'd0);
assign netsoc_sdram_bankmachine2_done = (netsoc_sdram_bankmachine2_count == 1'd0);

// synthesis translate_off
reg dummy_d_22;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine2_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_valid <= 1'd0;
	netsoc_sdram_bankmachine2_track_open <= 1'd0;
	netsoc_sdram_bankmachine2_track_close <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd0;
	bankmachine2_next_state <= 3'd0;
	netsoc_sdram_bankmachine2_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine2_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd0;
	netsoc_sdram_bankmachine2_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine2_req_rdata_valid <= 1'd0;
	bankmachine2_next_state <= bankmachine2_state;
	case (bankmachine2_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine2_done) begin
				netsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 3'd4;
				end
				netsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine2_track_close <= 1'd1;
		end
		2'd2: begin
			netsoc_sdram_bankmachine2_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine2_track_open <= 1'd1;
			netsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
			netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if (netsoc_sdram_bankmachine2_cmd_ready) begin
				bankmachine2_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (netsoc_sdram_bankmachine2_done) begin
				netsoc_sdram_bankmachine2_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine2_track_close <= 1'd1;
			netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine2_refresh_req)) begin
				bankmachine2_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine2_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine2_refresh_req) begin
				bankmachine2_next_state <= 2'd3;
			end else begin
				if (netsoc_sdram_bankmachine2_source_valid) begin
					if (netsoc_sdram_bankmachine2_has_openrow) begin
						if (netsoc_sdram_bankmachine2_hit) begin
							netsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
							if (netsoc_sdram_bankmachine2_source_payload_we) begin
								netsoc_sdram_bankmachine2_req_wdata_ready <= netsoc_sdram_bankmachine2_cmd_ready;
								netsoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd1;
								netsoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
							end else begin
								netsoc_sdram_bankmachine2_req_rdata_valid <= netsoc_sdram_bankmachine2_cmd_ready;
								netsoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd1;
							end
							netsoc_sdram_bankmachine2_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine2_next_state <= 1'd1;
						end
					end else begin
						bankmachine2_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_22 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine3_sink_valid = netsoc_sdram_bankmachine3_req_valid;
assign netsoc_sdram_bankmachine3_req_ready = netsoc_sdram_bankmachine3_sink_ready;
assign netsoc_sdram_bankmachine3_sink_payload_we = netsoc_sdram_bankmachine3_req_we;
assign netsoc_sdram_bankmachine3_sink_payload_adr = netsoc_sdram_bankmachine3_req_adr;
assign netsoc_sdram_bankmachine3_source_ready = (netsoc_sdram_bankmachine3_req_wdata_ready | netsoc_sdram_bankmachine3_req_rdata_valid);
assign netsoc_sdram_bankmachine3_req_lock = netsoc_sdram_bankmachine3_source_valid;
assign netsoc_sdram_bankmachine3_hit = (netsoc_sdram_bankmachine3_openrow == netsoc_sdram_bankmachine3_source_payload_adr[20:8]);
assign netsoc_sdram_bankmachine3_cmd_payload_ba = 2'd3;

// synthesis translate_off
reg dummy_d_23;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine3_cmd_payload_a <= 13'd0;
	if (netsoc_sdram_bankmachine3_sel_row_adr) begin
		netsoc_sdram_bankmachine3_cmd_payload_a <= netsoc_sdram_bankmachine3_source_payload_adr[20:8];
	end else begin
		netsoc_sdram_bankmachine3_cmd_payload_a <= {netsoc_sdram_bankmachine3_source_payload_adr[7:0], {2{1'd0}}};
	end
// synthesis translate_off
	dummy_d_23 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine3_wait = (~((netsoc_sdram_bankmachine3_cmd_valid & netsoc_sdram_bankmachine3_cmd_ready) & netsoc_sdram_bankmachine3_cmd_payload_is_write));
assign netsoc_sdram_bankmachine3_syncfifo3_din = {netsoc_sdram_bankmachine3_fifo_in_last, netsoc_sdram_bankmachine3_fifo_in_first, netsoc_sdram_bankmachine3_fifo_in_payload_adr, netsoc_sdram_bankmachine3_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine3_fifo_out_last, netsoc_sdram_bankmachine3_fifo_out_first, netsoc_sdram_bankmachine3_fifo_out_payload_adr, netsoc_sdram_bankmachine3_fifo_out_payload_we} = netsoc_sdram_bankmachine3_syncfifo3_dout;
assign netsoc_sdram_bankmachine3_sink_ready = netsoc_sdram_bankmachine3_syncfifo3_writable;
assign netsoc_sdram_bankmachine3_syncfifo3_we = netsoc_sdram_bankmachine3_sink_valid;
assign netsoc_sdram_bankmachine3_fifo_in_first = netsoc_sdram_bankmachine3_sink_first;
assign netsoc_sdram_bankmachine3_fifo_in_last = netsoc_sdram_bankmachine3_sink_last;
assign netsoc_sdram_bankmachine3_fifo_in_payload_we = netsoc_sdram_bankmachine3_sink_payload_we;
assign netsoc_sdram_bankmachine3_fifo_in_payload_adr = netsoc_sdram_bankmachine3_sink_payload_adr;
assign netsoc_sdram_bankmachine3_source_valid = netsoc_sdram_bankmachine3_syncfifo3_readable;
assign netsoc_sdram_bankmachine3_source_first = netsoc_sdram_bankmachine3_fifo_out_first;
assign netsoc_sdram_bankmachine3_source_last = netsoc_sdram_bankmachine3_fifo_out_last;
assign netsoc_sdram_bankmachine3_source_payload_we = netsoc_sdram_bankmachine3_fifo_out_payload_we;
assign netsoc_sdram_bankmachine3_source_payload_adr = netsoc_sdram_bankmachine3_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine3_syncfifo3_re = netsoc_sdram_bankmachine3_source_ready;

// synthesis translate_off
reg dummy_d_24;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine3_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine3_replace) begin
		netsoc_sdram_bankmachine3_wrport_adr <= (netsoc_sdram_bankmachine3_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine3_wrport_adr <= netsoc_sdram_bankmachine3_produce;
	end
// synthesis translate_off
	dummy_d_24 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine3_wrport_dat_w = netsoc_sdram_bankmachine3_syncfifo3_din;
assign netsoc_sdram_bankmachine3_wrport_we = (netsoc_sdram_bankmachine3_syncfifo3_we & (netsoc_sdram_bankmachine3_syncfifo3_writable | netsoc_sdram_bankmachine3_replace));
assign netsoc_sdram_bankmachine3_do_read = (netsoc_sdram_bankmachine3_syncfifo3_readable & netsoc_sdram_bankmachine3_syncfifo3_re);
assign netsoc_sdram_bankmachine3_rdport_adr = netsoc_sdram_bankmachine3_consume;
assign netsoc_sdram_bankmachine3_syncfifo3_dout = netsoc_sdram_bankmachine3_rdport_dat_r;
assign netsoc_sdram_bankmachine3_syncfifo3_writable = (netsoc_sdram_bankmachine3_level != 4'd8);
assign netsoc_sdram_bankmachine3_syncfifo3_readable = (netsoc_sdram_bankmachine3_level != 1'd0);
assign netsoc_sdram_bankmachine3_done = (netsoc_sdram_bankmachine3_count == 1'd0);

// synthesis translate_off
reg dummy_d_25;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine3_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine3_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine3_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_valid <= 1'd0;
	netsoc_sdram_bankmachine3_track_open <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine3_track_close <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine3_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd0;
	bankmachine3_next_state <= 3'd0;
	bankmachine3_next_state <= bankmachine3_state;
	case (bankmachine3_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine3_done) begin
				netsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 3'd4;
				end
				netsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine3_track_close <= 1'd1;
		end
		2'd2: begin
			netsoc_sdram_bankmachine3_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine3_track_open <= 1'd1;
			netsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
			netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if (netsoc_sdram_bankmachine3_cmd_ready) begin
				bankmachine3_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (netsoc_sdram_bankmachine3_done) begin
				netsoc_sdram_bankmachine3_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine3_track_close <= 1'd1;
			netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine3_refresh_req)) begin
				bankmachine3_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine3_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine3_refresh_req) begin
				bankmachine3_next_state <= 2'd3;
			end else begin
				if (netsoc_sdram_bankmachine3_source_valid) begin
					if (netsoc_sdram_bankmachine3_has_openrow) begin
						if (netsoc_sdram_bankmachine3_hit) begin
							netsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
							if (netsoc_sdram_bankmachine3_source_payload_we) begin
								netsoc_sdram_bankmachine3_req_wdata_ready <= netsoc_sdram_bankmachine3_cmd_ready;
								netsoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd1;
								netsoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
							end else begin
								netsoc_sdram_bankmachine3_req_rdata_valid <= netsoc_sdram_bankmachine3_cmd_ready;
								netsoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd1;
							end
							netsoc_sdram_bankmachine3_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine3_next_state <= 1'd1;
						end
					end else begin
						bankmachine3_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_25 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine4_sink_valid = netsoc_sdram_bankmachine4_req_valid;
assign netsoc_sdram_bankmachine4_req_ready = netsoc_sdram_bankmachine4_sink_ready;
assign netsoc_sdram_bankmachine4_sink_payload_we = netsoc_sdram_bankmachine4_req_we;
assign netsoc_sdram_bankmachine4_sink_payload_adr = netsoc_sdram_bankmachine4_req_adr;
assign netsoc_sdram_bankmachine4_source_ready = (netsoc_sdram_bankmachine4_req_wdata_ready | netsoc_sdram_bankmachine4_req_rdata_valid);
assign netsoc_sdram_bankmachine4_req_lock = netsoc_sdram_bankmachine4_source_valid;
assign netsoc_sdram_bankmachine4_hit = (netsoc_sdram_bankmachine4_openrow == netsoc_sdram_bankmachine4_source_payload_adr[20:8]);
assign netsoc_sdram_bankmachine4_cmd_payload_ba = 3'd4;

// synthesis translate_off
reg dummy_d_26;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine4_cmd_payload_a <= 13'd0;
	if (netsoc_sdram_bankmachine4_sel_row_adr) begin
		netsoc_sdram_bankmachine4_cmd_payload_a <= netsoc_sdram_bankmachine4_source_payload_adr[20:8];
	end else begin
		netsoc_sdram_bankmachine4_cmd_payload_a <= {netsoc_sdram_bankmachine4_source_payload_adr[7:0], {2{1'd0}}};
	end
// synthesis translate_off
	dummy_d_26 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine4_wait = (~((netsoc_sdram_bankmachine4_cmd_valid & netsoc_sdram_bankmachine4_cmd_ready) & netsoc_sdram_bankmachine4_cmd_payload_is_write));
assign netsoc_sdram_bankmachine4_syncfifo4_din = {netsoc_sdram_bankmachine4_fifo_in_last, netsoc_sdram_bankmachine4_fifo_in_first, netsoc_sdram_bankmachine4_fifo_in_payload_adr, netsoc_sdram_bankmachine4_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine4_fifo_out_last, netsoc_sdram_bankmachine4_fifo_out_first, netsoc_sdram_bankmachine4_fifo_out_payload_adr, netsoc_sdram_bankmachine4_fifo_out_payload_we} = netsoc_sdram_bankmachine4_syncfifo4_dout;
assign netsoc_sdram_bankmachine4_sink_ready = netsoc_sdram_bankmachine4_syncfifo4_writable;
assign netsoc_sdram_bankmachine4_syncfifo4_we = netsoc_sdram_bankmachine4_sink_valid;
assign netsoc_sdram_bankmachine4_fifo_in_first = netsoc_sdram_bankmachine4_sink_first;
assign netsoc_sdram_bankmachine4_fifo_in_last = netsoc_sdram_bankmachine4_sink_last;
assign netsoc_sdram_bankmachine4_fifo_in_payload_we = netsoc_sdram_bankmachine4_sink_payload_we;
assign netsoc_sdram_bankmachine4_fifo_in_payload_adr = netsoc_sdram_bankmachine4_sink_payload_adr;
assign netsoc_sdram_bankmachine4_source_valid = netsoc_sdram_bankmachine4_syncfifo4_readable;
assign netsoc_sdram_bankmachine4_source_first = netsoc_sdram_bankmachine4_fifo_out_first;
assign netsoc_sdram_bankmachine4_source_last = netsoc_sdram_bankmachine4_fifo_out_last;
assign netsoc_sdram_bankmachine4_source_payload_we = netsoc_sdram_bankmachine4_fifo_out_payload_we;
assign netsoc_sdram_bankmachine4_source_payload_adr = netsoc_sdram_bankmachine4_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine4_syncfifo4_re = netsoc_sdram_bankmachine4_source_ready;

// synthesis translate_off
reg dummy_d_27;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine4_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine4_replace) begin
		netsoc_sdram_bankmachine4_wrport_adr <= (netsoc_sdram_bankmachine4_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine4_wrport_adr <= netsoc_sdram_bankmachine4_produce;
	end
// synthesis translate_off
	dummy_d_27 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine4_wrport_dat_w = netsoc_sdram_bankmachine4_syncfifo4_din;
assign netsoc_sdram_bankmachine4_wrport_we = (netsoc_sdram_bankmachine4_syncfifo4_we & (netsoc_sdram_bankmachine4_syncfifo4_writable | netsoc_sdram_bankmachine4_replace));
assign netsoc_sdram_bankmachine4_do_read = (netsoc_sdram_bankmachine4_syncfifo4_readable & netsoc_sdram_bankmachine4_syncfifo4_re);
assign netsoc_sdram_bankmachine4_rdport_adr = netsoc_sdram_bankmachine4_consume;
assign netsoc_sdram_bankmachine4_syncfifo4_dout = netsoc_sdram_bankmachine4_rdport_dat_r;
assign netsoc_sdram_bankmachine4_syncfifo4_writable = (netsoc_sdram_bankmachine4_level != 4'd8);
assign netsoc_sdram_bankmachine4_syncfifo4_readable = (netsoc_sdram_bankmachine4_level != 1'd0);
assign netsoc_sdram_bankmachine4_done = (netsoc_sdram_bankmachine4_count == 1'd0);

// synthesis translate_off
reg dummy_d_28;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine4_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine4_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine4_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_valid <= 1'd0;
	netsoc_sdram_bankmachine4_track_open <= 1'd0;
	netsoc_sdram_bankmachine4_track_close <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine4_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd0;
	bankmachine4_next_state <= 3'd0;
	bankmachine4_next_state <= bankmachine4_state;
	case (bankmachine4_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine4_done) begin
				netsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine4_cmd_ready) begin
					bankmachine4_next_state <= 3'd4;
				end
				netsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine4_track_close <= 1'd1;
		end
		2'd2: begin
			netsoc_sdram_bankmachine4_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine4_track_open <= 1'd1;
			netsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
			netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if (netsoc_sdram_bankmachine4_cmd_ready) begin
				bankmachine4_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (netsoc_sdram_bankmachine4_done) begin
				netsoc_sdram_bankmachine4_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine4_track_close <= 1'd1;
			netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine4_refresh_req)) begin
				bankmachine4_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine4_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine4_refresh_req) begin
				bankmachine4_next_state <= 2'd3;
			end else begin
				if (netsoc_sdram_bankmachine4_source_valid) begin
					if (netsoc_sdram_bankmachine4_has_openrow) begin
						if (netsoc_sdram_bankmachine4_hit) begin
							netsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
							if (netsoc_sdram_bankmachine4_source_payload_we) begin
								netsoc_sdram_bankmachine4_req_wdata_ready <= netsoc_sdram_bankmachine4_cmd_ready;
								netsoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd1;
								netsoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
							end else begin
								netsoc_sdram_bankmachine4_req_rdata_valid <= netsoc_sdram_bankmachine4_cmd_ready;
								netsoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd1;
							end
							netsoc_sdram_bankmachine4_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine4_next_state <= 1'd1;
						end
					end else begin
						bankmachine4_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_28 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine5_sink_valid = netsoc_sdram_bankmachine5_req_valid;
assign netsoc_sdram_bankmachine5_req_ready = netsoc_sdram_bankmachine5_sink_ready;
assign netsoc_sdram_bankmachine5_sink_payload_we = netsoc_sdram_bankmachine5_req_we;
assign netsoc_sdram_bankmachine5_sink_payload_adr = netsoc_sdram_bankmachine5_req_adr;
assign netsoc_sdram_bankmachine5_source_ready = (netsoc_sdram_bankmachine5_req_wdata_ready | netsoc_sdram_bankmachine5_req_rdata_valid);
assign netsoc_sdram_bankmachine5_req_lock = netsoc_sdram_bankmachine5_source_valid;
assign netsoc_sdram_bankmachine5_hit = (netsoc_sdram_bankmachine5_openrow == netsoc_sdram_bankmachine5_source_payload_adr[20:8]);
assign netsoc_sdram_bankmachine5_cmd_payload_ba = 3'd5;

// synthesis translate_off
reg dummy_d_29;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine5_cmd_payload_a <= 13'd0;
	if (netsoc_sdram_bankmachine5_sel_row_adr) begin
		netsoc_sdram_bankmachine5_cmd_payload_a <= netsoc_sdram_bankmachine5_source_payload_adr[20:8];
	end else begin
		netsoc_sdram_bankmachine5_cmd_payload_a <= {netsoc_sdram_bankmachine5_source_payload_adr[7:0], {2{1'd0}}};
	end
// synthesis translate_off
	dummy_d_29 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine5_wait = (~((netsoc_sdram_bankmachine5_cmd_valid & netsoc_sdram_bankmachine5_cmd_ready) & netsoc_sdram_bankmachine5_cmd_payload_is_write));
assign netsoc_sdram_bankmachine5_syncfifo5_din = {netsoc_sdram_bankmachine5_fifo_in_last, netsoc_sdram_bankmachine5_fifo_in_first, netsoc_sdram_bankmachine5_fifo_in_payload_adr, netsoc_sdram_bankmachine5_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine5_fifo_out_last, netsoc_sdram_bankmachine5_fifo_out_first, netsoc_sdram_bankmachine5_fifo_out_payload_adr, netsoc_sdram_bankmachine5_fifo_out_payload_we} = netsoc_sdram_bankmachine5_syncfifo5_dout;
assign netsoc_sdram_bankmachine5_sink_ready = netsoc_sdram_bankmachine5_syncfifo5_writable;
assign netsoc_sdram_bankmachine5_syncfifo5_we = netsoc_sdram_bankmachine5_sink_valid;
assign netsoc_sdram_bankmachine5_fifo_in_first = netsoc_sdram_bankmachine5_sink_first;
assign netsoc_sdram_bankmachine5_fifo_in_last = netsoc_sdram_bankmachine5_sink_last;
assign netsoc_sdram_bankmachine5_fifo_in_payload_we = netsoc_sdram_bankmachine5_sink_payload_we;
assign netsoc_sdram_bankmachine5_fifo_in_payload_adr = netsoc_sdram_bankmachine5_sink_payload_adr;
assign netsoc_sdram_bankmachine5_source_valid = netsoc_sdram_bankmachine5_syncfifo5_readable;
assign netsoc_sdram_bankmachine5_source_first = netsoc_sdram_bankmachine5_fifo_out_first;
assign netsoc_sdram_bankmachine5_source_last = netsoc_sdram_bankmachine5_fifo_out_last;
assign netsoc_sdram_bankmachine5_source_payload_we = netsoc_sdram_bankmachine5_fifo_out_payload_we;
assign netsoc_sdram_bankmachine5_source_payload_adr = netsoc_sdram_bankmachine5_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine5_syncfifo5_re = netsoc_sdram_bankmachine5_source_ready;

// synthesis translate_off
reg dummy_d_30;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine5_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine5_replace) begin
		netsoc_sdram_bankmachine5_wrport_adr <= (netsoc_sdram_bankmachine5_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine5_wrport_adr <= netsoc_sdram_bankmachine5_produce;
	end
// synthesis translate_off
	dummy_d_30 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine5_wrport_dat_w = netsoc_sdram_bankmachine5_syncfifo5_din;
assign netsoc_sdram_bankmachine5_wrport_we = (netsoc_sdram_bankmachine5_syncfifo5_we & (netsoc_sdram_bankmachine5_syncfifo5_writable | netsoc_sdram_bankmachine5_replace));
assign netsoc_sdram_bankmachine5_do_read = (netsoc_sdram_bankmachine5_syncfifo5_readable & netsoc_sdram_bankmachine5_syncfifo5_re);
assign netsoc_sdram_bankmachine5_rdport_adr = netsoc_sdram_bankmachine5_consume;
assign netsoc_sdram_bankmachine5_syncfifo5_dout = netsoc_sdram_bankmachine5_rdport_dat_r;
assign netsoc_sdram_bankmachine5_syncfifo5_writable = (netsoc_sdram_bankmachine5_level != 4'd8);
assign netsoc_sdram_bankmachine5_syncfifo5_readable = (netsoc_sdram_bankmachine5_level != 1'd0);
assign netsoc_sdram_bankmachine5_done = (netsoc_sdram_bankmachine5_count == 1'd0);

// synthesis translate_off
reg dummy_d_31;
// synthesis translate_on
always @(*) begin
	bankmachine5_next_state <= 3'd0;
	netsoc_sdram_bankmachine5_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine5_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine5_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_valid <= 1'd0;
	netsoc_sdram_bankmachine5_track_open <= 1'd0;
	netsoc_sdram_bankmachine5_track_close <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine5_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd0;
	bankmachine5_next_state <= bankmachine5_state;
	case (bankmachine5_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine5_done) begin
				netsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine5_cmd_ready) begin
					bankmachine5_next_state <= 3'd4;
				end
				netsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine5_track_close <= 1'd1;
		end
		2'd2: begin
			netsoc_sdram_bankmachine5_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine5_track_open <= 1'd1;
			netsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
			netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if (netsoc_sdram_bankmachine5_cmd_ready) begin
				bankmachine5_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (netsoc_sdram_bankmachine5_done) begin
				netsoc_sdram_bankmachine5_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine5_track_close <= 1'd1;
			netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine5_refresh_req)) begin
				bankmachine5_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine5_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine5_refresh_req) begin
				bankmachine5_next_state <= 2'd3;
			end else begin
				if (netsoc_sdram_bankmachine5_source_valid) begin
					if (netsoc_sdram_bankmachine5_has_openrow) begin
						if (netsoc_sdram_bankmachine5_hit) begin
							netsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
							if (netsoc_sdram_bankmachine5_source_payload_we) begin
								netsoc_sdram_bankmachine5_req_wdata_ready <= netsoc_sdram_bankmachine5_cmd_ready;
								netsoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd1;
								netsoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
							end else begin
								netsoc_sdram_bankmachine5_req_rdata_valid <= netsoc_sdram_bankmachine5_cmd_ready;
								netsoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd1;
							end
							netsoc_sdram_bankmachine5_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine5_next_state <= 1'd1;
						end
					end else begin
						bankmachine5_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_31 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine6_sink_valid = netsoc_sdram_bankmachine6_req_valid;
assign netsoc_sdram_bankmachine6_req_ready = netsoc_sdram_bankmachine6_sink_ready;
assign netsoc_sdram_bankmachine6_sink_payload_we = netsoc_sdram_bankmachine6_req_we;
assign netsoc_sdram_bankmachine6_sink_payload_adr = netsoc_sdram_bankmachine6_req_adr;
assign netsoc_sdram_bankmachine6_source_ready = (netsoc_sdram_bankmachine6_req_wdata_ready | netsoc_sdram_bankmachine6_req_rdata_valid);
assign netsoc_sdram_bankmachine6_req_lock = netsoc_sdram_bankmachine6_source_valid;
assign netsoc_sdram_bankmachine6_hit = (netsoc_sdram_bankmachine6_openrow == netsoc_sdram_bankmachine6_source_payload_adr[20:8]);
assign netsoc_sdram_bankmachine6_cmd_payload_ba = 3'd6;

// synthesis translate_off
reg dummy_d_32;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine6_cmd_payload_a <= 13'd0;
	if (netsoc_sdram_bankmachine6_sel_row_adr) begin
		netsoc_sdram_bankmachine6_cmd_payload_a <= netsoc_sdram_bankmachine6_source_payload_adr[20:8];
	end else begin
		netsoc_sdram_bankmachine6_cmd_payload_a <= {netsoc_sdram_bankmachine6_source_payload_adr[7:0], {2{1'd0}}};
	end
// synthesis translate_off
	dummy_d_32 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine6_wait = (~((netsoc_sdram_bankmachine6_cmd_valid & netsoc_sdram_bankmachine6_cmd_ready) & netsoc_sdram_bankmachine6_cmd_payload_is_write));
assign netsoc_sdram_bankmachine6_syncfifo6_din = {netsoc_sdram_bankmachine6_fifo_in_last, netsoc_sdram_bankmachine6_fifo_in_first, netsoc_sdram_bankmachine6_fifo_in_payload_adr, netsoc_sdram_bankmachine6_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine6_fifo_out_last, netsoc_sdram_bankmachine6_fifo_out_first, netsoc_sdram_bankmachine6_fifo_out_payload_adr, netsoc_sdram_bankmachine6_fifo_out_payload_we} = netsoc_sdram_bankmachine6_syncfifo6_dout;
assign netsoc_sdram_bankmachine6_sink_ready = netsoc_sdram_bankmachine6_syncfifo6_writable;
assign netsoc_sdram_bankmachine6_syncfifo6_we = netsoc_sdram_bankmachine6_sink_valid;
assign netsoc_sdram_bankmachine6_fifo_in_first = netsoc_sdram_bankmachine6_sink_first;
assign netsoc_sdram_bankmachine6_fifo_in_last = netsoc_sdram_bankmachine6_sink_last;
assign netsoc_sdram_bankmachine6_fifo_in_payload_we = netsoc_sdram_bankmachine6_sink_payload_we;
assign netsoc_sdram_bankmachine6_fifo_in_payload_adr = netsoc_sdram_bankmachine6_sink_payload_adr;
assign netsoc_sdram_bankmachine6_source_valid = netsoc_sdram_bankmachine6_syncfifo6_readable;
assign netsoc_sdram_bankmachine6_source_first = netsoc_sdram_bankmachine6_fifo_out_first;
assign netsoc_sdram_bankmachine6_source_last = netsoc_sdram_bankmachine6_fifo_out_last;
assign netsoc_sdram_bankmachine6_source_payload_we = netsoc_sdram_bankmachine6_fifo_out_payload_we;
assign netsoc_sdram_bankmachine6_source_payload_adr = netsoc_sdram_bankmachine6_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine6_syncfifo6_re = netsoc_sdram_bankmachine6_source_ready;

// synthesis translate_off
reg dummy_d_33;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine6_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine6_replace) begin
		netsoc_sdram_bankmachine6_wrport_adr <= (netsoc_sdram_bankmachine6_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine6_wrport_adr <= netsoc_sdram_bankmachine6_produce;
	end
// synthesis translate_off
	dummy_d_33 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine6_wrport_dat_w = netsoc_sdram_bankmachine6_syncfifo6_din;
assign netsoc_sdram_bankmachine6_wrport_we = (netsoc_sdram_bankmachine6_syncfifo6_we & (netsoc_sdram_bankmachine6_syncfifo6_writable | netsoc_sdram_bankmachine6_replace));
assign netsoc_sdram_bankmachine6_do_read = (netsoc_sdram_bankmachine6_syncfifo6_readable & netsoc_sdram_bankmachine6_syncfifo6_re);
assign netsoc_sdram_bankmachine6_rdport_adr = netsoc_sdram_bankmachine6_consume;
assign netsoc_sdram_bankmachine6_syncfifo6_dout = netsoc_sdram_bankmachine6_rdport_dat_r;
assign netsoc_sdram_bankmachine6_syncfifo6_writable = (netsoc_sdram_bankmachine6_level != 4'd8);
assign netsoc_sdram_bankmachine6_syncfifo6_readable = (netsoc_sdram_bankmachine6_level != 1'd0);
assign netsoc_sdram_bankmachine6_done = (netsoc_sdram_bankmachine6_count == 1'd0);

// synthesis translate_off
reg dummy_d_34;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine6_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine6_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd0;
	bankmachine6_next_state <= 3'd0;
	netsoc_sdram_bankmachine6_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine6_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine6_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine6_cmd_valid <= 1'd0;
	netsoc_sdram_bankmachine6_track_close <= 1'd0;
	netsoc_sdram_bankmachine6_track_open <= 1'd0;
	netsoc_sdram_bankmachine6_cmd_payload_cas <= 1'd0;
	bankmachine6_next_state <= bankmachine6_state;
	case (bankmachine6_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine6_done) begin
				netsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine6_cmd_ready) begin
					bankmachine6_next_state <= 3'd4;
				end
				netsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine6_track_close <= 1'd1;
		end
		2'd2: begin
			netsoc_sdram_bankmachine6_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine6_track_open <= 1'd1;
			netsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
			netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if (netsoc_sdram_bankmachine6_cmd_ready) begin
				bankmachine6_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (netsoc_sdram_bankmachine6_done) begin
				netsoc_sdram_bankmachine6_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine6_track_close <= 1'd1;
			netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine6_refresh_req)) begin
				bankmachine6_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine6_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine6_refresh_req) begin
				bankmachine6_next_state <= 2'd3;
			end else begin
				if (netsoc_sdram_bankmachine6_source_valid) begin
					if (netsoc_sdram_bankmachine6_has_openrow) begin
						if (netsoc_sdram_bankmachine6_hit) begin
							netsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
							if (netsoc_sdram_bankmachine6_source_payload_we) begin
								netsoc_sdram_bankmachine6_req_wdata_ready <= netsoc_sdram_bankmachine6_cmd_ready;
								netsoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd1;
								netsoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
							end else begin
								netsoc_sdram_bankmachine6_req_rdata_valid <= netsoc_sdram_bankmachine6_cmd_ready;
								netsoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd1;
							end
							netsoc_sdram_bankmachine6_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine6_next_state <= 1'd1;
						end
					end else begin
						bankmachine6_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_34 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine7_sink_valid = netsoc_sdram_bankmachine7_req_valid;
assign netsoc_sdram_bankmachine7_req_ready = netsoc_sdram_bankmachine7_sink_ready;
assign netsoc_sdram_bankmachine7_sink_payload_we = netsoc_sdram_bankmachine7_req_we;
assign netsoc_sdram_bankmachine7_sink_payload_adr = netsoc_sdram_bankmachine7_req_adr;
assign netsoc_sdram_bankmachine7_source_ready = (netsoc_sdram_bankmachine7_req_wdata_ready | netsoc_sdram_bankmachine7_req_rdata_valid);
assign netsoc_sdram_bankmachine7_req_lock = netsoc_sdram_bankmachine7_source_valid;
assign netsoc_sdram_bankmachine7_hit = (netsoc_sdram_bankmachine7_openrow == netsoc_sdram_bankmachine7_source_payload_adr[20:8]);
assign netsoc_sdram_bankmachine7_cmd_payload_ba = 3'd7;

// synthesis translate_off
reg dummy_d_35;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine7_cmd_payload_a <= 13'd0;
	if (netsoc_sdram_bankmachine7_sel_row_adr) begin
		netsoc_sdram_bankmachine7_cmd_payload_a <= netsoc_sdram_bankmachine7_source_payload_adr[20:8];
	end else begin
		netsoc_sdram_bankmachine7_cmd_payload_a <= {netsoc_sdram_bankmachine7_source_payload_adr[7:0], {2{1'd0}}};
	end
// synthesis translate_off
	dummy_d_35 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine7_wait = (~((netsoc_sdram_bankmachine7_cmd_valid & netsoc_sdram_bankmachine7_cmd_ready) & netsoc_sdram_bankmachine7_cmd_payload_is_write));
assign netsoc_sdram_bankmachine7_syncfifo7_din = {netsoc_sdram_bankmachine7_fifo_in_last, netsoc_sdram_bankmachine7_fifo_in_first, netsoc_sdram_bankmachine7_fifo_in_payload_adr, netsoc_sdram_bankmachine7_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine7_fifo_out_last, netsoc_sdram_bankmachine7_fifo_out_first, netsoc_sdram_bankmachine7_fifo_out_payload_adr, netsoc_sdram_bankmachine7_fifo_out_payload_we} = netsoc_sdram_bankmachine7_syncfifo7_dout;
assign netsoc_sdram_bankmachine7_sink_ready = netsoc_sdram_bankmachine7_syncfifo7_writable;
assign netsoc_sdram_bankmachine7_syncfifo7_we = netsoc_sdram_bankmachine7_sink_valid;
assign netsoc_sdram_bankmachine7_fifo_in_first = netsoc_sdram_bankmachine7_sink_first;
assign netsoc_sdram_bankmachine7_fifo_in_last = netsoc_sdram_bankmachine7_sink_last;
assign netsoc_sdram_bankmachine7_fifo_in_payload_we = netsoc_sdram_bankmachine7_sink_payload_we;
assign netsoc_sdram_bankmachine7_fifo_in_payload_adr = netsoc_sdram_bankmachine7_sink_payload_adr;
assign netsoc_sdram_bankmachine7_source_valid = netsoc_sdram_bankmachine7_syncfifo7_readable;
assign netsoc_sdram_bankmachine7_source_first = netsoc_sdram_bankmachine7_fifo_out_first;
assign netsoc_sdram_bankmachine7_source_last = netsoc_sdram_bankmachine7_fifo_out_last;
assign netsoc_sdram_bankmachine7_source_payload_we = netsoc_sdram_bankmachine7_fifo_out_payload_we;
assign netsoc_sdram_bankmachine7_source_payload_adr = netsoc_sdram_bankmachine7_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine7_syncfifo7_re = netsoc_sdram_bankmachine7_source_ready;

// synthesis translate_off
reg dummy_d_36;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine7_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine7_replace) begin
		netsoc_sdram_bankmachine7_wrport_adr <= (netsoc_sdram_bankmachine7_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine7_wrport_adr <= netsoc_sdram_bankmachine7_produce;
	end
// synthesis translate_off
	dummy_d_36 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_bankmachine7_wrport_dat_w = netsoc_sdram_bankmachine7_syncfifo7_din;
assign netsoc_sdram_bankmachine7_wrport_we = (netsoc_sdram_bankmachine7_syncfifo7_we & (netsoc_sdram_bankmachine7_syncfifo7_writable | netsoc_sdram_bankmachine7_replace));
assign netsoc_sdram_bankmachine7_do_read = (netsoc_sdram_bankmachine7_syncfifo7_readable & netsoc_sdram_bankmachine7_syncfifo7_re);
assign netsoc_sdram_bankmachine7_rdport_adr = netsoc_sdram_bankmachine7_consume;
assign netsoc_sdram_bankmachine7_syncfifo7_dout = netsoc_sdram_bankmachine7_rdport_dat_r;
assign netsoc_sdram_bankmachine7_syncfifo7_writable = (netsoc_sdram_bankmachine7_level != 4'd8);
assign netsoc_sdram_bankmachine7_syncfifo7_readable = (netsoc_sdram_bankmachine7_level != 1'd0);
assign netsoc_sdram_bankmachine7_done = (netsoc_sdram_bankmachine7_count == 1'd0);

// synthesis translate_off
reg dummy_d_37;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine7_track_open <= 1'd0;
	bankmachine7_next_state <= 3'd0;
	netsoc_sdram_bankmachine7_track_close <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine7_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd0;
	netsoc_sdram_bankmachine7_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine7_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine7_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_valid <= 1'd0;
	bankmachine7_next_state <= bankmachine7_state;
	case (bankmachine7_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine7_done) begin
				netsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine7_cmd_ready) begin
					bankmachine7_next_state <= 3'd4;
				end
				netsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine7_track_close <= 1'd1;
		end
		2'd2: begin
			netsoc_sdram_bankmachine7_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine7_track_open <= 1'd1;
			netsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
			netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if (netsoc_sdram_bankmachine7_cmd_ready) begin
				bankmachine7_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (netsoc_sdram_bankmachine7_done) begin
				netsoc_sdram_bankmachine7_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine7_track_close <= 1'd1;
			netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine7_refresh_req)) begin
				bankmachine7_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine7_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine7_refresh_req) begin
				bankmachine7_next_state <= 2'd3;
			end else begin
				if (netsoc_sdram_bankmachine7_source_valid) begin
					if (netsoc_sdram_bankmachine7_has_openrow) begin
						if (netsoc_sdram_bankmachine7_hit) begin
							netsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
							if (netsoc_sdram_bankmachine7_source_payload_we) begin
								netsoc_sdram_bankmachine7_req_wdata_ready <= netsoc_sdram_bankmachine7_cmd_ready;
								netsoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd1;
								netsoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
							end else begin
								netsoc_sdram_bankmachine7_req_rdata_valid <= netsoc_sdram_bankmachine7_cmd_ready;
								netsoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd1;
							end
							netsoc_sdram_bankmachine7_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine7_next_state <= 1'd1;
						end
					end else begin
						bankmachine7_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_37 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_read_available = ((((((((netsoc_sdram_bankmachine0_cmd_valid & netsoc_sdram_bankmachine0_cmd_payload_is_read) | (netsoc_sdram_bankmachine1_cmd_valid & netsoc_sdram_bankmachine1_cmd_payload_is_read)) | (netsoc_sdram_bankmachine2_cmd_valid & netsoc_sdram_bankmachine2_cmd_payload_is_read)) | (netsoc_sdram_bankmachine3_cmd_valid & netsoc_sdram_bankmachine3_cmd_payload_is_read)) | (netsoc_sdram_bankmachine4_cmd_valid & netsoc_sdram_bankmachine4_cmd_payload_is_read)) | (netsoc_sdram_bankmachine5_cmd_valid & netsoc_sdram_bankmachine5_cmd_payload_is_read)) | (netsoc_sdram_bankmachine6_cmd_valid & netsoc_sdram_bankmachine6_cmd_payload_is_read)) | (netsoc_sdram_bankmachine7_cmd_valid & netsoc_sdram_bankmachine7_cmd_payload_is_read));
assign netsoc_sdram_write_available = ((((((((netsoc_sdram_bankmachine0_cmd_valid & netsoc_sdram_bankmachine0_cmd_payload_is_write) | (netsoc_sdram_bankmachine1_cmd_valid & netsoc_sdram_bankmachine1_cmd_payload_is_write)) | (netsoc_sdram_bankmachine2_cmd_valid & netsoc_sdram_bankmachine2_cmd_payload_is_write)) | (netsoc_sdram_bankmachine3_cmd_valid & netsoc_sdram_bankmachine3_cmd_payload_is_write)) | (netsoc_sdram_bankmachine4_cmd_valid & netsoc_sdram_bankmachine4_cmd_payload_is_write)) | (netsoc_sdram_bankmachine5_cmd_valid & netsoc_sdram_bankmachine5_cmd_payload_is_write)) | (netsoc_sdram_bankmachine6_cmd_valid & netsoc_sdram_bankmachine6_cmd_payload_is_write)) | (netsoc_sdram_bankmachine7_cmd_valid & netsoc_sdram_bankmachine7_cmd_payload_is_write));
assign netsoc_sdram_max_time0 = (netsoc_sdram_time0 == 1'd0);
assign netsoc_sdram_max_time1 = (netsoc_sdram_time1 == 1'd0);
assign netsoc_sdram_bankmachine0_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine1_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine2_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine3_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine4_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine5_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine6_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine7_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_go_to_refresh = (((((((netsoc_sdram_bankmachine0_refresh_gnt & netsoc_sdram_bankmachine1_refresh_gnt) & netsoc_sdram_bankmachine2_refresh_gnt) & netsoc_sdram_bankmachine3_refresh_gnt) & netsoc_sdram_bankmachine4_refresh_gnt) & netsoc_sdram_bankmachine5_refresh_gnt) & netsoc_sdram_bankmachine6_refresh_gnt) & netsoc_sdram_bankmachine7_refresh_gnt);
assign netsoc_sdram_interface_rdata = {netsoc_sdram_dfi_p1_rddata, netsoc_sdram_dfi_p0_rddata};
assign {netsoc_sdram_dfi_p1_wrdata, netsoc_sdram_dfi_p0_wrdata} = netsoc_sdram_interface_wdata;
assign {netsoc_sdram_dfi_p1_wrdata_mask, netsoc_sdram_dfi_p0_wrdata_mask} = (~netsoc_sdram_interface_wdata_we);

// synthesis translate_off
reg dummy_d_38;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_choose_cmd_valids <= 8'd0;
	netsoc_sdram_choose_cmd_valids[0] <= (netsoc_sdram_bankmachine0_cmd_valid & ((netsoc_sdram_bankmachine0_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) | ((netsoc_sdram_bankmachine0_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine0_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[1] <= (netsoc_sdram_bankmachine1_cmd_valid & ((netsoc_sdram_bankmachine1_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) | ((netsoc_sdram_bankmachine1_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine1_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[2] <= (netsoc_sdram_bankmachine2_cmd_valid & ((netsoc_sdram_bankmachine2_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) | ((netsoc_sdram_bankmachine2_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine2_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[3] <= (netsoc_sdram_bankmachine3_cmd_valid & ((netsoc_sdram_bankmachine3_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) | ((netsoc_sdram_bankmachine3_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine3_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[4] <= (netsoc_sdram_bankmachine4_cmd_valid & ((netsoc_sdram_bankmachine4_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) | ((netsoc_sdram_bankmachine4_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine4_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[5] <= (netsoc_sdram_bankmachine5_cmd_valid & ((netsoc_sdram_bankmachine5_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) | ((netsoc_sdram_bankmachine5_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine5_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[6] <= (netsoc_sdram_bankmachine6_cmd_valid & ((netsoc_sdram_bankmachine6_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) | ((netsoc_sdram_bankmachine6_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine6_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[7] <= (netsoc_sdram_bankmachine7_cmd_valid & ((netsoc_sdram_bankmachine7_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) | ((netsoc_sdram_bankmachine7_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine7_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
// synthesis translate_off
	dummy_d_38 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_choose_cmd_request = netsoc_sdram_choose_cmd_valids;
assign netsoc_sdram_choose_cmd_cmd_valid = rhs_array_muxed0;
assign netsoc_sdram_choose_cmd_cmd_payload_a = rhs_array_muxed1;
assign netsoc_sdram_choose_cmd_cmd_payload_ba = rhs_array_muxed2;
assign netsoc_sdram_choose_cmd_cmd_payload_is_read = rhs_array_muxed3;
assign netsoc_sdram_choose_cmd_cmd_payload_is_write = rhs_array_muxed4;
assign netsoc_sdram_choose_cmd_cmd_payload_is_cmd = rhs_array_muxed5;

// synthesis translate_off
reg dummy_d_39;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_choose_cmd_cmd_payload_cas <= 1'd0;
	if (netsoc_sdram_choose_cmd_cmd_valid) begin
		netsoc_sdram_choose_cmd_cmd_payload_cas <= t_array_muxed0;
	end
// synthesis translate_off
	dummy_d_39 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_40;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_choose_cmd_cmd_payload_ras <= 1'd0;
	if (netsoc_sdram_choose_cmd_cmd_valid) begin
		netsoc_sdram_choose_cmd_cmd_payload_ras <= t_array_muxed1;
	end
// synthesis translate_off
	dummy_d_40 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_41;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_choose_cmd_cmd_payload_we <= 1'd0;
	if (netsoc_sdram_choose_cmd_cmd_valid) begin
		netsoc_sdram_choose_cmd_cmd_payload_we <= t_array_muxed2;
	end
// synthesis translate_off
	dummy_d_41 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_choose_cmd_ce = netsoc_sdram_choose_cmd_cmd_ready;

// synthesis translate_off
reg dummy_d_42;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_choose_req_valids <= 8'd0;
	netsoc_sdram_choose_req_valids[0] <= (netsoc_sdram_bankmachine0_cmd_valid & ((netsoc_sdram_bankmachine0_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) | ((netsoc_sdram_bankmachine0_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine0_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[1] <= (netsoc_sdram_bankmachine1_cmd_valid & ((netsoc_sdram_bankmachine1_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) | ((netsoc_sdram_bankmachine1_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine1_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[2] <= (netsoc_sdram_bankmachine2_cmd_valid & ((netsoc_sdram_bankmachine2_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) | ((netsoc_sdram_bankmachine2_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine2_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[3] <= (netsoc_sdram_bankmachine3_cmd_valid & ((netsoc_sdram_bankmachine3_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) | ((netsoc_sdram_bankmachine3_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine3_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[4] <= (netsoc_sdram_bankmachine4_cmd_valid & ((netsoc_sdram_bankmachine4_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) | ((netsoc_sdram_bankmachine4_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine4_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[5] <= (netsoc_sdram_bankmachine5_cmd_valid & ((netsoc_sdram_bankmachine5_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) | ((netsoc_sdram_bankmachine5_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine5_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[6] <= (netsoc_sdram_bankmachine6_cmd_valid & ((netsoc_sdram_bankmachine6_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) | ((netsoc_sdram_bankmachine6_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine6_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[7] <= (netsoc_sdram_bankmachine7_cmd_valid & ((netsoc_sdram_bankmachine7_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) | ((netsoc_sdram_bankmachine7_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine7_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
// synthesis translate_off
	dummy_d_42 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_choose_req_request = netsoc_sdram_choose_req_valids;
assign netsoc_sdram_choose_req_cmd_valid = rhs_array_muxed6;
assign netsoc_sdram_choose_req_cmd_payload_a = rhs_array_muxed7;
assign netsoc_sdram_choose_req_cmd_payload_ba = rhs_array_muxed8;
assign netsoc_sdram_choose_req_cmd_payload_is_read = rhs_array_muxed9;
assign netsoc_sdram_choose_req_cmd_payload_is_write = rhs_array_muxed10;
assign netsoc_sdram_choose_req_cmd_payload_is_cmd = rhs_array_muxed11;

// synthesis translate_off
reg dummy_d_43;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_choose_req_cmd_payload_cas <= 1'd0;
	if (netsoc_sdram_choose_req_cmd_valid) begin
		netsoc_sdram_choose_req_cmd_payload_cas <= t_array_muxed3;
	end
// synthesis translate_off
	dummy_d_43 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_44;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_choose_req_cmd_payload_ras <= 1'd0;
	if (netsoc_sdram_choose_req_cmd_valid) begin
		netsoc_sdram_choose_req_cmd_payload_ras <= t_array_muxed4;
	end
// synthesis translate_off
	dummy_d_44 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_45;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_choose_req_cmd_payload_we <= 1'd0;
	if (netsoc_sdram_choose_req_cmd_valid) begin
		netsoc_sdram_choose_req_cmd_payload_we <= t_array_muxed5;
	end
// synthesis translate_off
	dummy_d_45 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_46;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine0_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 1'd0))) begin
		netsoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 1'd0))) begin
		netsoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_46 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_47;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine1_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 1'd1))) begin
		netsoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 1'd1))) begin
		netsoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_47 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_48;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine2_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 2'd2))) begin
		netsoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 2'd2))) begin
		netsoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_48 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_49;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine3_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 2'd3))) begin
		netsoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 2'd3))) begin
		netsoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_49 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_50;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine4_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 3'd4))) begin
		netsoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 3'd4))) begin
		netsoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_50 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_51;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine5_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 3'd5))) begin
		netsoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 3'd5))) begin
		netsoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_51 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_52;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine6_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 3'd6))) begin
		netsoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 3'd6))) begin
		netsoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_52 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_53;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_bankmachine7_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 3'd7))) begin
		netsoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 3'd7))) begin
		netsoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_53 <= dummy_s;
// synthesis translate_on
end
assign netsoc_sdram_choose_req_ce = netsoc_sdram_choose_req_cmd_ready;
assign netsoc_sdram_dfi_p0_cke = 1'd1;
assign netsoc_sdram_dfi_p0_cs_n = 1'd0;
assign netsoc_sdram_dfi_p0_odt = 1'd1;
assign netsoc_sdram_dfi_p0_reset_n = 1'd1;
assign netsoc_sdram_dfi_p1_cke = 1'd1;
assign netsoc_sdram_dfi_p1_cs_n = 1'd0;
assign netsoc_sdram_dfi_p1_odt = 1'd1;
assign netsoc_sdram_dfi_p1_reset_n = 1'd1;

// synthesis translate_off
reg dummy_d_54;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_en1 <= 1'd0;
	netsoc_sdram_choose_cmd_cmd_ready <= 1'd0;
	netsoc_sdram_choose_req_want_reads <= 1'd0;
	netsoc_sdram_choose_req_want_writes <= 1'd0;
	netsoc_sdram_choose_req_cmd_ready <= 1'd0;
	netsoc_sdram_cmd_ready <= 1'd0;
	multiplexer_next_state <= 4'd0;
	netsoc_sdram_sel0 <= 2'd0;
	netsoc_sdram_sel1 <= 2'd0;
	netsoc_sdram_en0 <= 1'd0;
	multiplexer_next_state <= multiplexer_state;
	case (multiplexer_state)
		1'd1: begin
			netsoc_sdram_en1 <= 1'd1;
			netsoc_sdram_choose_req_want_writes <= 1'd1;
			netsoc_sdram_choose_cmd_cmd_ready <= 1'd1;
			netsoc_sdram_choose_req_cmd_ready <= 1'd1;
			netsoc_sdram_sel0 <= 1'd1;
			netsoc_sdram_sel1 <= 2'd2;
			if (netsoc_sdram_read_available) begin
				if (((~netsoc_sdram_write_available) | netsoc_sdram_max_time1)) begin
					multiplexer_next_state <= 3'd7;
				end
			end
			if (netsoc_sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			netsoc_sdram_sel0 <= 2'd3;
			netsoc_sdram_cmd_ready <= 1'd1;
			if (netsoc_sdram_cmd_last) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			multiplexer_next_state <= 3'd4;
		end
		3'd4: begin
			multiplexer_next_state <= 3'd5;
		end
		3'd5: begin
			multiplexer_next_state <= 3'd6;
		end
		3'd6: begin
			multiplexer_next_state <= 1'd1;
		end
		3'd7: begin
			multiplexer_next_state <= 4'd8;
		end
		4'd8: begin
			multiplexer_next_state <= 1'd0;
		end
		default: begin
			netsoc_sdram_en0 <= 1'd1;
			netsoc_sdram_choose_req_want_reads <= 1'd1;
			netsoc_sdram_choose_cmd_cmd_ready <= 1'd1;
			netsoc_sdram_choose_req_cmd_ready <= 1'd1;
			netsoc_sdram_sel0 <= 2'd2;
			netsoc_sdram_sel1 <= 1'd1;
			if (netsoc_sdram_write_available) begin
				if (((~netsoc_sdram_read_available) | netsoc_sdram_max_time0)) begin
					multiplexer_next_state <= 2'd3;
				end
			end
			if (netsoc_sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_54 <= dummy_s;
// synthesis translate_on
end
assign cba = netsoc_port_cmd_payload_adr[10:8];
assign rca = {netsoc_port_cmd_payload_adr[23:11], netsoc_port_cmd_payload_adr[7:0]};
assign roundrobin0_request = {(((cba == 1'd0) & (~(((((((1'd0 | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin0_ce = ((~netsoc_sdram_interface_bank0_valid) & (~netsoc_sdram_interface_bank0_lock));
assign netsoc_sdram_interface_bank0_adr = rhs_array_muxed12;
assign netsoc_sdram_interface_bank0_we = rhs_array_muxed13;
assign netsoc_sdram_interface_bank0_valid = rhs_array_muxed14;
assign roundrobin1_request = {(((cba == 1'd1) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin1_ce = ((~netsoc_sdram_interface_bank1_valid) & (~netsoc_sdram_interface_bank1_lock));
assign netsoc_sdram_interface_bank1_adr = rhs_array_muxed15;
assign netsoc_sdram_interface_bank1_we = rhs_array_muxed16;
assign netsoc_sdram_interface_bank1_valid = rhs_array_muxed17;
assign roundrobin2_request = {(((cba == 2'd2) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin2_ce = ((~netsoc_sdram_interface_bank2_valid) & (~netsoc_sdram_interface_bank2_lock));
assign netsoc_sdram_interface_bank2_adr = rhs_array_muxed18;
assign netsoc_sdram_interface_bank2_we = rhs_array_muxed19;
assign netsoc_sdram_interface_bank2_valid = rhs_array_muxed20;
assign roundrobin3_request = {(((cba == 2'd3) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin3_ce = ((~netsoc_sdram_interface_bank3_valid) & (~netsoc_sdram_interface_bank3_lock));
assign netsoc_sdram_interface_bank3_adr = rhs_array_muxed21;
assign netsoc_sdram_interface_bank3_we = rhs_array_muxed22;
assign netsoc_sdram_interface_bank3_valid = rhs_array_muxed23;
assign roundrobin4_request = {(((cba == 3'd4) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin4_ce = ((~netsoc_sdram_interface_bank4_valid) & (~netsoc_sdram_interface_bank4_lock));
assign netsoc_sdram_interface_bank4_adr = rhs_array_muxed24;
assign netsoc_sdram_interface_bank4_we = rhs_array_muxed25;
assign netsoc_sdram_interface_bank4_valid = rhs_array_muxed26;
assign roundrobin5_request = {(((cba == 3'd5) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin5_ce = ((~netsoc_sdram_interface_bank5_valid) & (~netsoc_sdram_interface_bank5_lock));
assign netsoc_sdram_interface_bank5_adr = rhs_array_muxed27;
assign netsoc_sdram_interface_bank5_we = rhs_array_muxed28;
assign netsoc_sdram_interface_bank5_valid = rhs_array_muxed29;
assign roundrobin6_request = {(((cba == 3'd6) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin6_ce = ((~netsoc_sdram_interface_bank6_valid) & (~netsoc_sdram_interface_bank6_lock));
assign netsoc_sdram_interface_bank6_adr = rhs_array_muxed30;
assign netsoc_sdram_interface_bank6_we = rhs_array_muxed31;
assign netsoc_sdram_interface_bank6_valid = rhs_array_muxed32;
assign roundrobin7_request = {(((cba == 3'd7) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin7_ce = ((~netsoc_sdram_interface_bank7_valid) & (~netsoc_sdram_interface_bank7_lock));
assign netsoc_sdram_interface_bank7_adr = rhs_array_muxed33;
assign netsoc_sdram_interface_bank7_we = rhs_array_muxed34;
assign netsoc_sdram_interface_bank7_valid = rhs_array_muxed35;
assign netsoc_port_cmd_ready = ((((((((1'd0 | (((roundrobin0_grant == 1'd0) & ((cba == 1'd0) & (~(((((((1'd0 | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank0_ready)) | (((roundrobin1_grant == 1'd0) & ((cba == 1'd1) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank1_ready)) | (((roundrobin2_grant == 1'd0) & ((cba == 2'd2) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank2_ready)) | (((roundrobin3_grant == 1'd0) & ((cba == 2'd3) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank3_ready)) | (((roundrobin4_grant == 1'd0) & ((cba == 3'd4) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank4_ready)) | (((roundrobin5_grant == 1'd0) & ((cba == 3'd5) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank5_ready)) | (((roundrobin6_grant == 1'd0) & ((cba == 3'd6) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank6_ready)) | (((roundrobin7_grant == 1'd0) & ((cba == 3'd7) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0)))))) & netsoc_sdram_interface_bank7_ready));
assign netsoc_port_wdata_ready = new_master_wdata_ready;
assign netsoc_port_rdata_valid = new_master_rdata_valid5;

// synthesis translate_off
reg dummy_d_55;
// synthesis translate_on
always @(*) begin
	netsoc_sdram_interface_wdata <= 64'd0;
	netsoc_sdram_interface_wdata_we <= 8'd0;
	case ({new_master_wdata_ready})
		1'd1: begin
			netsoc_sdram_interface_wdata <= netsoc_port_wdata_payload_data;
			netsoc_sdram_interface_wdata_we <= netsoc_port_wdata_payload_we;
		end
		default: begin
			netsoc_sdram_interface_wdata <= 1'd0;
			netsoc_sdram_interface_wdata_we <= 1'd0;
		end
	endcase
// synthesis translate_off
	dummy_d_55 <= dummy_s;
// synthesis translate_on
end
assign netsoc_port_rdata_payload_data = netsoc_sdram_interface_rdata;
assign roundrobin0_grant = 1'd0;
assign roundrobin1_grant = 1'd0;
assign roundrobin2_grant = 1'd0;
assign roundrobin3_grant = 1'd0;
assign roundrobin4_grant = 1'd0;
assign roundrobin5_grant = 1'd0;
assign roundrobin6_grant = 1'd0;
assign roundrobin7_grant = 1'd0;
assign netsoc_data_port_adr = netsoc_interface0_wb_sdram_adr[10:1];

// synthesis translate_off
reg dummy_d_56;
// synthesis translate_on
always @(*) begin
	netsoc_data_port_we <= 8'd0;
	netsoc_data_port_dat_w <= 64'd0;
	if (netsoc_write_from_slave) begin
		netsoc_data_port_dat_w <= netsoc_interface_dat_r;
		netsoc_data_port_we <= {8{1'd1}};
	end else begin
		netsoc_data_port_dat_w <= {2{netsoc_interface0_wb_sdram_dat_w}};
		if ((((netsoc_interface0_wb_sdram_cyc & netsoc_interface0_wb_sdram_stb) & netsoc_interface0_wb_sdram_we) & netsoc_interface0_wb_sdram_ack)) begin
			netsoc_data_port_we <= {({4{(netsoc_interface0_wb_sdram_adr[0] == 1'd0)}} & netsoc_interface0_wb_sdram_sel), ({4{(netsoc_interface0_wb_sdram_adr[0] == 1'd1)}} & netsoc_interface0_wb_sdram_sel)};
		end
	end
// synthesis translate_off
	dummy_d_56 <= dummy_s;
// synthesis translate_on
end
assign netsoc_interface_dat_w = netsoc_data_port_dat_r;
assign netsoc_interface_sel = 8'd255;

// synthesis translate_off
reg dummy_d_57;
// synthesis translate_on
always @(*) begin
	netsoc_interface0_wb_sdram_dat_r <= 32'd0;
	case (netsoc_adr_offset_r)
		1'd0: begin
			netsoc_interface0_wb_sdram_dat_r <= netsoc_data_port_dat_r[63:32];
		end
		default: begin
			netsoc_interface0_wb_sdram_dat_r <= netsoc_data_port_dat_r[31:0];
		end
	endcase
// synthesis translate_off
	dummy_d_57 <= dummy_s;
// synthesis translate_on
end
assign {netsoc_tag_do_dirty, netsoc_tag_do_tag} = netsoc_tag_port_dat_r;
assign netsoc_tag_port_dat_w = {netsoc_tag_di_dirty, netsoc_tag_di_tag};
assign netsoc_tag_port_adr = netsoc_interface0_wb_sdram_adr[10:1];
assign netsoc_tag_di_tag = netsoc_interface0_wb_sdram_adr[29:11];
assign netsoc_interface_adr = {netsoc_tag_do_tag, netsoc_interface0_wb_sdram_adr[10:1]};

// synthesis translate_off
reg dummy_d_58;
// synthesis translate_on
always @(*) begin
	cache_next_state <= 3'd0;
	netsoc_tag_port_we <= 1'd0;
	netsoc_interface_cyc <= 1'd0;
	netsoc_interface_stb <= 1'd0;
	netsoc_tag_di_dirty <= 1'd0;
	netsoc_interface_we <= 1'd0;
	netsoc_word_clr <= 1'd0;
	netsoc_word_inc <= 1'd0;
	netsoc_interface0_wb_sdram_ack <= 1'd0;
	netsoc_write_from_slave <= 1'd0;
	cache_next_state <= cache_state;
	case (cache_state)
		1'd1: begin
			netsoc_word_clr <= 1'd1;
			if ((netsoc_tag_do_tag == netsoc_interface0_wb_sdram_adr[29:11])) begin
				netsoc_interface0_wb_sdram_ack <= 1'd1;
				if (netsoc_interface0_wb_sdram_we) begin
					netsoc_tag_di_dirty <= 1'd1;
					netsoc_tag_port_we <= 1'd1;
				end
				cache_next_state <= 1'd0;
			end else begin
				if (netsoc_tag_do_dirty) begin
					cache_next_state <= 2'd2;
				end else begin
					cache_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			netsoc_interface_stb <= 1'd1;
			netsoc_interface_cyc <= 1'd1;
			netsoc_interface_we <= 1'd1;
			if (netsoc_interface_ack) begin
				netsoc_word_inc <= 1'd1;
				if (1'd1) begin
					cache_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			netsoc_tag_port_we <= 1'd1;
			netsoc_word_clr <= 1'd1;
			cache_next_state <= 3'd4;
		end
		3'd4: begin
			netsoc_interface_stb <= 1'd1;
			netsoc_interface_cyc <= 1'd1;
			netsoc_interface_we <= 1'd0;
			if (netsoc_interface_ack) begin
				netsoc_write_from_slave <= 1'd1;
				netsoc_word_inc <= 1'd1;
				if (1'd1) begin
					cache_next_state <= 1'd1;
				end else begin
					cache_next_state <= 3'd4;
				end
			end
		end
		default: begin
			if ((netsoc_interface0_wb_sdram_cyc & netsoc_interface0_wb_sdram_stb)) begin
				cache_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_58 <= dummy_s;
// synthesis translate_on
end
assign netsoc_port_cmd_payload_adr = netsoc_interface_adr;
assign netsoc_port_wdata_payload_we = netsoc_interface_sel;
assign netsoc_port_wdata_payload_data = netsoc_interface_dat_w;
assign netsoc_interface_dat_r = netsoc_port_rdata_payload_data;

// synthesis translate_off
reg dummy_d_59;
// synthesis translate_on
always @(*) begin
	litedramwishbonebridge_next_state <= 2'd0;
	netsoc_port_wdata_valid <= 1'd0;
	netsoc_interface_ack <= 1'd0;
	netsoc_port_rdata_ready <= 1'd0;
	netsoc_port_cmd_valid <= 1'd0;
	netsoc_port_cmd_payload_we <= 1'd0;
	litedramwishbonebridge_next_state <= litedramwishbonebridge_state;
	case (litedramwishbonebridge_state)
		1'd1: begin
			netsoc_port_cmd_valid <= 1'd1;
			netsoc_port_cmd_payload_we <= netsoc_interface_we;
			if (netsoc_port_cmd_ready) begin
				if (netsoc_interface_we) begin
					litedramwishbonebridge_next_state <= 2'd2;
				end else begin
					litedramwishbonebridge_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			netsoc_port_wdata_valid <= 1'd1;
			if (netsoc_port_wdata_ready) begin
				netsoc_interface_ack <= 1'd1;
				litedramwishbonebridge_next_state <= 1'd0;
			end
		end
		2'd3: begin
			netsoc_port_rdata_ready <= 1'd1;
			if (netsoc_port_rdata_valid) begin
				netsoc_interface_ack <= 1'd1;
				litedramwishbonebridge_next_state <= 1'd0;
			end
		end
		default: begin
			if ((netsoc_interface_cyc & netsoc_interface_stb)) begin
				litedramwishbonebridge_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_59 <= dummy_s;
// synthesis translate_on
end
assign ethphy_mode_status = ethphy_mode0;
assign ethphy_eth_tick = (ethphy_eth_counter == 1'd0);
assign ethphy_i = ethphy_eth_tick;
assign ethphy_sys_tick = ethphy_o;
assign ethphy_o = (ethphy_toggle_o ^ ethphy_toggle_o_r);

// synthesis translate_off
reg dummy_d_60;
// synthesis translate_on
always @(*) begin
	ethphy_sys_counter_reset <= 1'd0;
	ethphy_sys_counter_ce <= 1'd0;
	ethphy_mode1 <= 1'd0;
	ethphy_update_mode <= 1'd0;
	liteethphygmiimii_next_state <= 2'd0;
	liteethphygmiimii_next_state <= liteethphygmiimii_state;
	case (liteethphygmiimii_state)
		1'd1: begin
			ethphy_sys_counter_ce <= 1'd1;
			if (ethphy_sys_tick) begin
				liteethphygmiimii_next_state <= 2'd2;
			end
		end
		2'd2: begin
			ethphy_update_mode <= 1'd1;
			if ((ethphy_sys_counter > 10'd645)) begin
				ethphy_mode1 <= 1'd1;
			end else begin
				ethphy_mode1 <= 1'd0;
			end
			liteethphygmiimii_next_state <= 1'd0;
		end
		default: begin
			ethphy_sys_counter_reset <= 1'd1;
			if (ethphy_sys_tick) begin
				liteethphygmiimii_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_60 <= dummy_s;
// synthesis translate_on
end
assign eth_rx_clk = eth_clocks_rx;
assign ethphy_reset0 = (ethphy_reset_storage | ethphy_reset1);
assign eth_rst_n = (~ethphy_reset0);
assign ethphy_counter_done = (ethphy_counter == 9'd256);
assign ethphy_counter_ce = (~ethphy_counter_done);
assign ethphy_reset1 = (~ethphy_counter_done);
assign ethphy_liteethphygmiimiitx_demux_sel = (ethphy_mode0 == 1'd1);
assign ethphy_liteethphygmiimiitx_demux_sink_valid = ethphy_liteethphygmiimiitx_sink_sink_valid0;
assign ethphy_liteethphygmiimiitx_sink_sink_ready0 = ethphy_liteethphygmiimiitx_demux_sink_ready;
assign ethphy_liteethphygmiimiitx_demux_sink_first = ethphy_liteethphygmiimiitx_sink_sink_first0;
assign ethphy_liteethphygmiimiitx_demux_sink_last = ethphy_liteethphygmiimiitx_sink_sink_last0;
assign ethphy_liteethphygmiimiitx_demux_sink_payload_data = ethphy_liteethphygmiimiitx_sink_sink_payload_data0;
assign ethphy_liteethphygmiimiitx_demux_sink_payload_last_be = ethphy_liteethphygmiimiitx_sink_sink_payload_last_be0;
assign ethphy_liteethphygmiimiitx_demux_sink_payload_error = ethphy_liteethphygmiimiitx_sink_sink_payload_error0;
assign ethphy_liteethphygmiimiitx_gmii_tx_sink_valid = ethphy_liteethphygmiimiitx_demux_endpoint0_source_valid;
assign ethphy_liteethphygmiimiitx_demux_endpoint0_source_ready = ethphy_liteethphygmiimiitx_gmii_tx_sink_ready;
assign ethphy_liteethphygmiimiitx_gmii_tx_sink_first = ethphy_liteethphygmiimiitx_demux_endpoint0_source_first;
assign ethphy_liteethphygmiimiitx_gmii_tx_sink_last = ethphy_liteethphygmiimiitx_demux_endpoint0_source_last;
assign ethphy_liteethphygmiimiitx_gmii_tx_sink_payload_data = ethphy_liteethphygmiimiitx_demux_endpoint0_source_payload_data;
assign ethphy_liteethphygmiimiitx_gmii_tx_sink_payload_last_be = ethphy_liteethphygmiimiitx_demux_endpoint0_source_payload_last_be;
assign ethphy_liteethphygmiimiitx_gmii_tx_sink_payload_error = ethphy_liteethphygmiimiitx_demux_endpoint0_source_payload_error;
assign ethphy_liteethphygmiimiitx_sink_sink_valid1 = ethphy_liteethphygmiimiitx_demux_endpoint1_source_valid;
assign ethphy_liteethphygmiimiitx_demux_endpoint1_source_ready = ethphy_liteethphygmiimiitx_sink_sink_ready1;
assign ethphy_liteethphygmiimiitx_sink_sink_first1 = ethphy_liteethphygmiimiitx_demux_endpoint1_source_first;
assign ethphy_liteethphygmiimiitx_sink_sink_last1 = ethphy_liteethphygmiimiitx_demux_endpoint1_source_last;
assign ethphy_liteethphygmiimiitx_sink_sink_payload_data1 = ethphy_liteethphygmiimiitx_demux_endpoint1_source_payload_data;
assign ethphy_liteethphygmiimiitx_sink_sink_payload_last_be1 = ethphy_liteethphygmiimiitx_demux_endpoint1_source_payload_last_be;
assign ethphy_liteethphygmiimiitx_sink_sink_payload_error1 = ethphy_liteethphygmiimiitx_demux_endpoint1_source_payload_error;
assign eth_tx_er = 1'd0;
assign ethphy_liteethphygmiimiitx_converter_sink_valid = ethphy_liteethphygmiimiitx_sink_sink_valid1;
assign ethphy_liteethphygmiimiitx_converter_sink_payload_data = ethphy_liteethphygmiimiitx_sink_sink_payload_data1;
assign ethphy_liteethphygmiimiitx_sink_sink_ready1 = ethphy_liteethphygmiimiitx_converter_sink_ready;
assign ethphy_liteethphygmiimiitx_converter_source_ready = 1'd1;
assign ethphy_liteethphygmiimiitx_converter_converter_sink_valid = ethphy_liteethphygmiimiitx_converter_sink_valid;
assign ethphy_liteethphygmiimiitx_converter_converter_sink_first = ethphy_liteethphygmiimiitx_converter_sink_first;
assign ethphy_liteethphygmiimiitx_converter_converter_sink_last = ethphy_liteethphygmiimiitx_converter_sink_last;
assign ethphy_liteethphygmiimiitx_converter_sink_ready = ethphy_liteethphygmiimiitx_converter_converter_sink_ready;

// synthesis translate_off
reg dummy_d_61;
// synthesis translate_on
always @(*) begin
	ethphy_liteethphygmiimiitx_converter_converter_sink_payload_data <= 8'd0;
	ethphy_liteethphygmiimiitx_converter_converter_sink_payload_data[3:0] <= ethphy_liteethphygmiimiitx_converter_sink_payload_data[3:0];
	ethphy_liteethphygmiimiitx_converter_converter_sink_payload_data[7:4] <= ethphy_liteethphygmiimiitx_converter_sink_payload_data[7:4];
// synthesis translate_off
	dummy_d_61 <= dummy_s;
// synthesis translate_on
end
assign ethphy_liteethphygmiimiitx_converter_source_valid = ethphy_liteethphygmiimiitx_converter_source_source_valid;
assign ethphy_liteethphygmiimiitx_converter_source_first = ethphy_liteethphygmiimiitx_converter_source_source_first;
assign ethphy_liteethphygmiimiitx_converter_source_last = ethphy_liteethphygmiimiitx_converter_source_source_last;
assign ethphy_liteethphygmiimiitx_converter_source_source_ready = ethphy_liteethphygmiimiitx_converter_source_ready;
assign {ethphy_liteethphygmiimiitx_converter_source_payload_data} = ethphy_liteethphygmiimiitx_converter_source_source_payload_data;
assign ethphy_liteethphygmiimiitx_converter_source_source_valid = ethphy_liteethphygmiimiitx_converter_converter_source_valid;
assign ethphy_liteethphygmiimiitx_converter_converter_source_ready = ethphy_liteethphygmiimiitx_converter_source_source_ready;
assign ethphy_liteethphygmiimiitx_converter_source_source_first = ethphy_liteethphygmiimiitx_converter_converter_source_first;
assign ethphy_liteethphygmiimiitx_converter_source_source_last = ethphy_liteethphygmiimiitx_converter_converter_source_last;
assign ethphy_liteethphygmiimiitx_converter_source_source_payload_data = ethphy_liteethphygmiimiitx_converter_converter_source_payload_data;
assign ethphy_liteethphygmiimiitx_converter_converter_first = (ethphy_liteethphygmiimiitx_converter_converter_mux == 1'd0);
assign ethphy_liteethphygmiimiitx_converter_converter_last = (ethphy_liteethphygmiimiitx_converter_converter_mux == 1'd1);
assign ethphy_liteethphygmiimiitx_converter_converter_source_valid = ethphy_liteethphygmiimiitx_converter_converter_sink_valid;
assign ethphy_liteethphygmiimiitx_converter_converter_source_first = (ethphy_liteethphygmiimiitx_converter_converter_sink_first & ethphy_liteethphygmiimiitx_converter_converter_first);
assign ethphy_liteethphygmiimiitx_converter_converter_source_last = (ethphy_liteethphygmiimiitx_converter_converter_sink_last & ethphy_liteethphygmiimiitx_converter_converter_last);
assign ethphy_liteethphygmiimiitx_converter_converter_sink_ready = (ethphy_liteethphygmiimiitx_converter_converter_last & ethphy_liteethphygmiimiitx_converter_converter_source_ready);

// synthesis translate_off
reg dummy_d_62;
// synthesis translate_on
always @(*) begin
	ethphy_liteethphygmiimiitx_converter_converter_source_payload_data <= 4'd0;
	case (ethphy_liteethphygmiimiitx_converter_converter_mux)
		1'd0: begin
			ethphy_liteethphygmiimiitx_converter_converter_source_payload_data <= ethphy_liteethphygmiimiitx_converter_converter_sink_payload_data[3:0];
		end
		default: begin
			ethphy_liteethphygmiimiitx_converter_converter_source_payload_data <= ethphy_liteethphygmiimiitx_converter_converter_sink_payload_data[7:4];
		end
	endcase
// synthesis translate_off
	dummy_d_62 <= dummy_s;
// synthesis translate_on
end
assign ethphy_liteethphygmiimiitx_converter_converter_source_payload_valid_token_count = ethphy_liteethphygmiimiitx_converter_converter_last;

// synthesis translate_off
reg dummy_d_63;
// synthesis translate_on
always @(*) begin
	ethphy_liteethphygmiimiitx_demux_sink_ready <= 1'd0;
	ethphy_liteethphygmiimiitx_demux_endpoint0_source_valid <= 1'd0;
	ethphy_liteethphygmiimiitx_demux_endpoint0_source_first <= 1'd0;
	ethphy_liteethphygmiimiitx_demux_endpoint0_source_last <= 1'd0;
	ethphy_liteethphygmiimiitx_demux_endpoint0_source_payload_data <= 8'd0;
	ethphy_liteethphygmiimiitx_demux_endpoint0_source_payload_last_be <= 1'd0;
	ethphy_liteethphygmiimiitx_demux_endpoint0_source_payload_error <= 1'd0;
	ethphy_liteethphygmiimiitx_demux_endpoint1_source_valid <= 1'd0;
	ethphy_liteethphygmiimiitx_demux_endpoint1_source_first <= 1'd0;
	ethphy_liteethphygmiimiitx_demux_endpoint1_source_last <= 1'd0;
	ethphy_liteethphygmiimiitx_demux_endpoint1_source_payload_data <= 8'd0;
	ethphy_liteethphygmiimiitx_demux_endpoint1_source_payload_last_be <= 1'd0;
	ethphy_liteethphygmiimiitx_demux_endpoint1_source_payload_error <= 1'd0;
	case (ethphy_liteethphygmiimiitx_demux_sel)
		1'd0: begin
			ethphy_liteethphygmiimiitx_demux_endpoint0_source_valid <= ethphy_liteethphygmiimiitx_demux_sink_valid;
			ethphy_liteethphygmiimiitx_demux_sink_ready <= ethphy_liteethphygmiimiitx_demux_endpoint0_source_ready;
			ethphy_liteethphygmiimiitx_demux_endpoint0_source_first <= ethphy_liteethphygmiimiitx_demux_sink_first;
			ethphy_liteethphygmiimiitx_demux_endpoint0_source_last <= ethphy_liteethphygmiimiitx_demux_sink_last;
			ethphy_liteethphygmiimiitx_demux_endpoint0_source_payload_data <= ethphy_liteethphygmiimiitx_demux_sink_payload_data;
			ethphy_liteethphygmiimiitx_demux_endpoint0_source_payload_last_be <= ethphy_liteethphygmiimiitx_demux_sink_payload_last_be;
			ethphy_liteethphygmiimiitx_demux_endpoint0_source_payload_error <= ethphy_liteethphygmiimiitx_demux_sink_payload_error;
		end
		1'd1: begin
			ethphy_liteethphygmiimiitx_demux_endpoint1_source_valid <= ethphy_liteethphygmiimiitx_demux_sink_valid;
			ethphy_liteethphygmiimiitx_demux_sink_ready <= ethphy_liteethphygmiimiitx_demux_endpoint1_source_ready;
			ethphy_liteethphygmiimiitx_demux_endpoint1_source_first <= ethphy_liteethphygmiimiitx_demux_sink_first;
			ethphy_liteethphygmiimiitx_demux_endpoint1_source_last <= ethphy_liteethphygmiimiitx_demux_sink_last;
			ethphy_liteethphygmiimiitx_demux_endpoint1_source_payload_data <= ethphy_liteethphygmiimiitx_demux_sink_payload_data;
			ethphy_liteethphygmiimiitx_demux_endpoint1_source_payload_last_be <= ethphy_liteethphygmiimiitx_demux_sink_payload_last_be;
			ethphy_liteethphygmiimiitx_demux_endpoint1_source_payload_error <= ethphy_liteethphygmiimiitx_demux_sink_payload_error;
		end
	endcase
// synthesis translate_off
	dummy_d_63 <= dummy_s;
// synthesis translate_on
end
assign ethphy_liteethphygmiimiirx_mux_sel = (ethphy_mode0 == 1'd1);
assign ethphy_liteethphygmiimiirx_mux_endpoint0_sink_valid = ethphy_liteethphygmiimiirx_gmii_rx_source_valid;
assign ethphy_liteethphygmiimiirx_gmii_rx_source_ready = ethphy_liteethphygmiimiirx_mux_endpoint0_sink_ready;
assign ethphy_liteethphygmiimiirx_mux_endpoint0_sink_first = ethphy_liteethphygmiimiirx_gmii_rx_source_first;
assign ethphy_liteethphygmiimiirx_mux_endpoint0_sink_last = ethphy_liteethphygmiimiirx_gmii_rx_source_last;
assign ethphy_liteethphygmiimiirx_mux_endpoint0_sink_payload_data = ethphy_liteethphygmiimiirx_gmii_rx_source_payload_data;
assign ethphy_liteethphygmiimiirx_mux_endpoint0_sink_payload_last_be = ethphy_liteethphygmiimiirx_gmii_rx_source_payload_last_be;
assign ethphy_liteethphygmiimiirx_mux_endpoint0_sink_payload_error = ethphy_liteethphygmiimiirx_gmii_rx_source_payload_error;
assign ethphy_liteethphygmiimiirx_mux_endpoint1_sink_valid = ethphy_liteethphygmiimiirx_source_source_valid1;
assign ethphy_liteethphygmiimiirx_source_source_ready1 = ethphy_liteethphygmiimiirx_mux_endpoint1_sink_ready;
assign ethphy_liteethphygmiimiirx_mux_endpoint1_sink_first = ethphy_liteethphygmiimiirx_source_source_first1;
assign ethphy_liteethphygmiimiirx_mux_endpoint1_sink_last = ethphy_liteethphygmiimiirx_source_source_last1;
assign ethphy_liteethphygmiimiirx_mux_endpoint1_sink_payload_data = ethphy_liteethphygmiimiirx_source_source_payload_data1;
assign ethphy_liteethphygmiimiirx_mux_endpoint1_sink_payload_last_be = ethphy_liteethphygmiimiirx_source_source_payload_last_be1;
assign ethphy_liteethphygmiimiirx_mux_endpoint1_sink_payload_error = ethphy_liteethphygmiimiirx_source_source_payload_error1;
assign ethphy_liteethphygmiimiirx_source_source_valid0 = ethphy_liteethphygmiimiirx_mux_source_valid;
assign ethphy_liteethphygmiimiirx_mux_source_ready = ethphy_liteethphygmiimiirx_source_source_ready0;
assign ethphy_liteethphygmiimiirx_source_source_first0 = ethphy_liteethphygmiimiirx_mux_source_first;
assign ethphy_liteethphygmiimiirx_source_source_last0 = ethphy_liteethphygmiimiirx_mux_source_last;
assign ethphy_liteethphygmiimiirx_source_source_payload_data0 = ethphy_liteethphygmiimiirx_mux_source_payload_data;
assign ethphy_liteethphygmiimiirx_source_source_payload_last_be0 = ethphy_liteethphygmiimiirx_mux_source_payload_last_be;
assign ethphy_liteethphygmiimiirx_source_source_payload_error0 = ethphy_liteethphygmiimiirx_mux_source_payload_error;
assign ethphy_liteethphygmiimiirx_gmii_rx_source_last = ((~ethphy_liteethphygmiimiirx_pads_d_dv) & ethphy_liteethphygmiimiirx_gmii_rx_dv_d);
assign ethphy_liteethphygmiimiirx_converter_sink_last = (~ethphy_liteethphygmiimiirx_pads_d_dv);
assign ethphy_liteethphygmiimiirx_source_source_valid1 = ethphy_liteethphygmiimiirx_converter_source_valid;
assign ethphy_liteethphygmiimiirx_converter_source_ready = ethphy_liteethphygmiimiirx_source_source_ready1;
assign ethphy_liteethphygmiimiirx_source_source_first1 = ethphy_liteethphygmiimiirx_converter_source_first;
assign ethphy_liteethphygmiimiirx_source_source_last1 = ethphy_liteethphygmiimiirx_converter_source_last;
assign ethphy_liteethphygmiimiirx_source_source_payload_data1 = ethphy_liteethphygmiimiirx_converter_source_payload_data;
assign ethphy_liteethphygmiimiirx_converter_converter_sink_valid = ethphy_liteethphygmiimiirx_converter_sink_valid;
assign ethphy_liteethphygmiimiirx_converter_converter_sink_first = ethphy_liteethphygmiimiirx_converter_sink_first;
assign ethphy_liteethphygmiimiirx_converter_converter_sink_last = ethphy_liteethphygmiimiirx_converter_sink_last;
assign ethphy_liteethphygmiimiirx_converter_sink_ready = ethphy_liteethphygmiimiirx_converter_converter_sink_ready;
assign ethphy_liteethphygmiimiirx_converter_converter_sink_payload_data = {ethphy_liteethphygmiimiirx_converter_sink_payload_data};
assign ethphy_liteethphygmiimiirx_converter_source_valid = ethphy_liteethphygmiimiirx_converter_source_source_valid;
assign ethphy_liteethphygmiimiirx_converter_source_first = ethphy_liteethphygmiimiirx_converter_source_source_first;
assign ethphy_liteethphygmiimiirx_converter_source_last = ethphy_liteethphygmiimiirx_converter_source_source_last;
assign ethphy_liteethphygmiimiirx_converter_source_source_ready = ethphy_liteethphygmiimiirx_converter_source_ready;

// synthesis translate_off
reg dummy_d_64;
// synthesis translate_on
always @(*) begin
	ethphy_liteethphygmiimiirx_converter_source_payload_data <= 8'd0;
	ethphy_liteethphygmiimiirx_converter_source_payload_data[3:0] <= ethphy_liteethphygmiimiirx_converter_source_source_payload_data[3:0];
	ethphy_liteethphygmiimiirx_converter_source_payload_data[7:4] <= ethphy_liteethphygmiimiirx_converter_source_source_payload_data[7:4];
// synthesis translate_off
	dummy_d_64 <= dummy_s;
// synthesis translate_on
end
assign ethphy_liteethphygmiimiirx_converter_source_source_valid = ethphy_liteethphygmiimiirx_converter_converter_source_valid;
assign ethphy_liteethphygmiimiirx_converter_converter_source_ready = ethphy_liteethphygmiimiirx_converter_source_source_ready;
assign ethphy_liteethphygmiimiirx_converter_source_source_first = ethphy_liteethphygmiimiirx_converter_converter_source_first;
assign ethphy_liteethphygmiimiirx_converter_source_source_last = ethphy_liteethphygmiimiirx_converter_converter_source_last;
assign ethphy_liteethphygmiimiirx_converter_source_source_payload_data = ethphy_liteethphygmiimiirx_converter_converter_source_payload_data;
assign ethphy_liteethphygmiimiirx_converter_converter_sink_ready = ((~ethphy_liteethphygmiimiirx_converter_converter_strobe_all) | ethphy_liteethphygmiimiirx_converter_converter_source_ready);
assign ethphy_liteethphygmiimiirx_converter_converter_source_valid = ethphy_liteethphygmiimiirx_converter_converter_strobe_all;
assign ethphy_liteethphygmiimiirx_converter_converter_load_part = (ethphy_liteethphygmiimiirx_converter_converter_sink_valid & ethphy_liteethphygmiimiirx_converter_converter_sink_ready);

// synthesis translate_off
reg dummy_d_65;
// synthesis translate_on
always @(*) begin
	ethphy_liteethphygmiimiirx_mux_source_valid <= 1'd0;
	ethphy_liteethphygmiimiirx_mux_source_first <= 1'd0;
	ethphy_liteethphygmiimiirx_mux_source_last <= 1'd0;
	ethphy_liteethphygmiimiirx_mux_source_payload_data <= 8'd0;
	ethphy_liteethphygmiimiirx_mux_source_payload_last_be <= 1'd0;
	ethphy_liteethphygmiimiirx_mux_source_payload_error <= 1'd0;
	ethphy_liteethphygmiimiirx_mux_endpoint0_sink_ready <= 1'd0;
	ethphy_liteethphygmiimiirx_mux_endpoint1_sink_ready <= 1'd0;
	case (ethphy_liteethphygmiimiirx_mux_sel)
		1'd0: begin
			ethphy_liteethphygmiimiirx_mux_source_valid <= ethphy_liteethphygmiimiirx_mux_endpoint0_sink_valid;
			ethphy_liteethphygmiimiirx_mux_endpoint0_sink_ready <= ethphy_liteethphygmiimiirx_mux_source_ready;
			ethphy_liteethphygmiimiirx_mux_source_first <= ethphy_liteethphygmiimiirx_mux_endpoint0_sink_first;
			ethphy_liteethphygmiimiirx_mux_source_last <= ethphy_liteethphygmiimiirx_mux_endpoint0_sink_last;
			ethphy_liteethphygmiimiirx_mux_source_payload_data <= ethphy_liteethphygmiimiirx_mux_endpoint0_sink_payload_data;
			ethphy_liteethphygmiimiirx_mux_source_payload_last_be <= ethphy_liteethphygmiimiirx_mux_endpoint0_sink_payload_last_be;
			ethphy_liteethphygmiimiirx_mux_source_payload_error <= ethphy_liteethphygmiimiirx_mux_endpoint0_sink_payload_error;
		end
		1'd1: begin
			ethphy_liteethphygmiimiirx_mux_source_valid <= ethphy_liteethphygmiimiirx_mux_endpoint1_sink_valid;
			ethphy_liteethphygmiimiirx_mux_endpoint1_sink_ready <= ethphy_liteethphygmiimiirx_mux_source_ready;
			ethphy_liteethphygmiimiirx_mux_source_first <= ethphy_liteethphygmiimiirx_mux_endpoint1_sink_first;
			ethphy_liteethphygmiimiirx_mux_source_last <= ethphy_liteethphygmiimiirx_mux_endpoint1_sink_last;
			ethphy_liteethphygmiimiirx_mux_source_payload_data <= ethphy_liteethphygmiimiirx_mux_endpoint1_sink_payload_data;
			ethphy_liteethphygmiimiirx_mux_source_payload_last_be <= ethphy_liteethphygmiimiirx_mux_endpoint1_sink_payload_last_be;
			ethphy_liteethphygmiimiirx_mux_source_payload_error <= ethphy_liteethphygmiimiirx_mux_endpoint1_sink_payload_error;
		end
	endcase
// synthesis translate_off
	dummy_d_65 <= dummy_s;
// synthesis translate_on
end
assign eth_mdc = ethphy_storage[0];
assign ethphy_data_oe = ethphy_storage[1];
assign ethphy_data_w = ethphy_storage[2];
assign ethmac_tx_cdc_sink_valid = ethmac_source_valid;
assign ethmac_source_ready = ethmac_tx_cdc_sink_ready;
assign ethmac_tx_cdc_sink_first = ethmac_source_first;
assign ethmac_tx_cdc_sink_last = ethmac_source_last;
assign ethmac_tx_cdc_sink_payload_data = ethmac_source_payload_data;
assign ethmac_tx_cdc_sink_payload_last_be = ethmac_source_payload_last_be;
assign ethmac_tx_cdc_sink_payload_error = ethmac_source_payload_error;
assign ethmac_sink_valid = ethmac_rx_cdc_source_valid;
assign ethmac_rx_cdc_source_ready = ethmac_sink_ready;
assign ethmac_sink_first = ethmac_rx_cdc_source_first;
assign ethmac_sink_last = ethmac_rx_cdc_source_last;
assign ethmac_sink_payload_data = ethmac_rx_cdc_source_payload_data;
assign ethmac_sink_payload_last_be = ethmac_rx_cdc_source_payload_last_be;
assign ethmac_sink_payload_error = ethmac_rx_cdc_source_payload_error;
assign ethmac_ps_preamble_error_i = ethmac_preamble_checker_error;
assign ethmac_ps_crc_error_i = ethmac_crc32_checker_error;

// synthesis translate_off
reg dummy_d_66;
// synthesis translate_on
always @(*) begin
	ethmac_tx_gap_inserter_sink_ready <= 1'd0;
	ethmac_tx_gap_inserter_source_valid <= 1'd0;
	ethmac_tx_gap_inserter_source_first <= 1'd0;
	ethmac_tx_gap_inserter_source_last <= 1'd0;
	ethmac_tx_gap_inserter_source_payload_data <= 8'd0;
	ethmac_tx_gap_inserter_source_payload_last_be <= 1'd0;
	ethmac_tx_gap_inserter_source_payload_error <= 1'd0;
	ethmac_tx_gap_inserter_counter_reset <= 1'd0;
	ethmac_tx_gap_inserter_counter_ce <= 1'd0;
	liteethmacgap_next_state <= 1'd0;
	liteethmacgap_next_state <= liteethmacgap_state;
	case (liteethmacgap_state)
		1'd1: begin
			ethmac_tx_gap_inserter_counter_ce <= 1'd1;
			if ((ethmac_tx_gap_inserter_counter == 4'd11)) begin
				liteethmacgap_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_tx_gap_inserter_counter_reset <= 1'd1;
			ethmac_tx_gap_inserter_source_valid <= ethmac_tx_gap_inserter_sink_valid;
			ethmac_tx_gap_inserter_sink_ready <= ethmac_tx_gap_inserter_source_ready;
			ethmac_tx_gap_inserter_source_first <= ethmac_tx_gap_inserter_sink_first;
			ethmac_tx_gap_inserter_source_last <= ethmac_tx_gap_inserter_sink_last;
			ethmac_tx_gap_inserter_source_payload_data <= ethmac_tx_gap_inserter_sink_payload_data;
			ethmac_tx_gap_inserter_source_payload_last_be <= ethmac_tx_gap_inserter_sink_payload_last_be;
			ethmac_tx_gap_inserter_source_payload_error <= ethmac_tx_gap_inserter_sink_payload_error;
			if (((ethmac_tx_gap_inserter_sink_valid & ethmac_tx_gap_inserter_sink_last) & ethmac_tx_gap_inserter_sink_ready)) begin
				liteethmacgap_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_66 <= dummy_s;
// synthesis translate_on
end
assign ethmac_preamble_inserter_source_payload_last_be = ethmac_preamble_inserter_sink_payload_last_be;

// synthesis translate_off
reg dummy_d_67;
// synthesis translate_on
always @(*) begin
	ethmac_preamble_inserter_sink_ready <= 1'd0;
	liteethmacpreambleinserter_next_state <= 2'd0;
	ethmac_preamble_inserter_source_valid <= 1'd0;
	ethmac_preamble_inserter_source_first <= 1'd0;
	ethmac_preamble_inserter_source_last <= 1'd0;
	ethmac_preamble_inserter_source_payload_data <= 8'd0;
	ethmac_preamble_inserter_source_payload_error <= 1'd0;
	ethmac_preamble_inserter_clr_cnt <= 1'd0;
	ethmac_preamble_inserter_inc_cnt <= 1'd0;
	ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_sink_payload_data;
	liteethmacpreambleinserter_next_state <= liteethmacpreambleinserter_state;
	case (liteethmacpreambleinserter_state)
		1'd1: begin
			ethmac_preamble_inserter_source_valid <= 1'd1;
			case (ethmac_preamble_inserter_cnt)
				1'd0: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[7:0];
				end
				1'd1: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[15:8];
				end
				2'd2: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[23:16];
				end
				2'd3: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[31:24];
				end
				3'd4: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[39:32];
				end
				3'd5: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[47:40];
				end
				3'd6: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[55:48];
				end
				default: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[63:56];
				end
			endcase
			if ((ethmac_preamble_inserter_cnt == 3'd7)) begin
				if (ethmac_preamble_inserter_source_ready) begin
					liteethmacpreambleinserter_next_state <= 2'd2;
				end
			end else begin
				ethmac_preamble_inserter_inc_cnt <= ethmac_preamble_inserter_source_ready;
			end
		end
		2'd2: begin
			ethmac_preamble_inserter_source_valid <= ethmac_preamble_inserter_sink_valid;
			ethmac_preamble_inserter_sink_ready <= ethmac_preamble_inserter_source_ready;
			ethmac_preamble_inserter_source_first <= ethmac_preamble_inserter_sink_first;
			ethmac_preamble_inserter_source_last <= ethmac_preamble_inserter_sink_last;
			ethmac_preamble_inserter_source_payload_error <= ethmac_preamble_inserter_sink_payload_error;
			if (((ethmac_preamble_inserter_sink_valid & ethmac_preamble_inserter_sink_last) & ethmac_preamble_inserter_source_ready)) begin
				liteethmacpreambleinserter_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_preamble_inserter_sink_ready <= 1'd1;
			ethmac_preamble_inserter_clr_cnt <= 1'd1;
			if (ethmac_preamble_inserter_sink_valid) begin
				ethmac_preamble_inserter_sink_ready <= 1'd0;
				liteethmacpreambleinserter_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_67 <= dummy_s;
// synthesis translate_on
end
assign ethmac_preamble_checker_source_payload_data = ethmac_preamble_checker_sink_payload_data;
assign ethmac_preamble_checker_source_payload_last_be = ethmac_preamble_checker_sink_payload_last_be;

// synthesis translate_off
reg dummy_d_68;
// synthesis translate_on
always @(*) begin
	ethmac_preamble_checker_source_payload_error <= 1'd0;
	liteethmacpreamblechecker_next_state <= 1'd0;
	ethmac_preamble_checker_error <= 1'd0;
	ethmac_preamble_checker_sink_ready <= 1'd0;
	ethmac_preamble_checker_source_valid <= 1'd0;
	ethmac_preamble_checker_source_first <= 1'd0;
	ethmac_preamble_checker_source_last <= 1'd0;
	liteethmacpreamblechecker_next_state <= liteethmacpreamblechecker_state;
	case (liteethmacpreamblechecker_state)
		1'd1: begin
			ethmac_preamble_checker_source_valid <= ethmac_preamble_checker_sink_valid;
			ethmac_preamble_checker_sink_ready <= ethmac_preamble_checker_source_ready;
			ethmac_preamble_checker_source_first <= ethmac_preamble_checker_sink_first;
			ethmac_preamble_checker_source_last <= ethmac_preamble_checker_sink_last;
			ethmac_preamble_checker_source_payload_error <= ethmac_preamble_checker_sink_payload_error;
			if (((ethmac_preamble_checker_source_valid & ethmac_preamble_checker_source_last) & ethmac_preamble_checker_source_ready)) begin
				liteethmacpreamblechecker_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_preamble_checker_sink_ready <= 1'd1;
			if (((ethmac_preamble_checker_sink_valid & (~ethmac_preamble_checker_sink_last)) & (ethmac_preamble_checker_sink_payload_data == 8'd213))) begin
				liteethmacpreamblechecker_next_state <= 1'd1;
			end
			if ((ethmac_preamble_checker_sink_valid & ethmac_preamble_checker_sink_last)) begin
				ethmac_preamble_checker_error <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_68 <= dummy_s;
// synthesis translate_on
end
assign ethmac_crc32_inserter_cnt_done = (ethmac_crc32_inserter_cnt == 1'd0);
assign ethmac_crc32_inserter_data1 = ethmac_crc32_inserter_data0;
assign ethmac_crc32_inserter_last = ethmac_crc32_inserter_reg;
assign ethmac_crc32_inserter_value = (~{ethmac_crc32_inserter_reg[0], ethmac_crc32_inserter_reg[1], ethmac_crc32_inserter_reg[2], ethmac_crc32_inserter_reg[3], ethmac_crc32_inserter_reg[4], ethmac_crc32_inserter_reg[5], ethmac_crc32_inserter_reg[6], ethmac_crc32_inserter_reg[7], ethmac_crc32_inserter_reg[8], ethmac_crc32_inserter_reg[9], ethmac_crc32_inserter_reg[10], ethmac_crc32_inserter_reg[11], ethmac_crc32_inserter_reg[12], ethmac_crc32_inserter_reg[13], ethmac_crc32_inserter_reg[14], ethmac_crc32_inserter_reg[15], ethmac_crc32_inserter_reg[16], ethmac_crc32_inserter_reg[17], ethmac_crc32_inserter_reg[18], ethmac_crc32_inserter_reg[19], ethmac_crc32_inserter_reg[20], ethmac_crc32_inserter_reg[21], ethmac_crc32_inserter_reg[22], ethmac_crc32_inserter_reg[23], ethmac_crc32_inserter_reg[24], ethmac_crc32_inserter_reg[25], ethmac_crc32_inserter_reg[26], ethmac_crc32_inserter_reg[27], ethmac_crc32_inserter_reg[28], ethmac_crc32_inserter_reg[29], ethmac_crc32_inserter_reg[30], ethmac_crc32_inserter_reg[31]});
assign ethmac_crc32_inserter_error = (ethmac_crc32_inserter_next != 32'd3338984827);

// synthesis translate_off
reg dummy_d_69;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_inserter_next <= 32'd0;
	ethmac_crc32_inserter_next[0] <= (((ethmac_crc32_inserter_last[24] ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[1] <= (((((((ethmac_crc32_inserter_last[25] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[2] <= (((((((((ethmac_crc32_inserter_last[26] ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[3] <= (((((((ethmac_crc32_inserter_last[27] ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[4] <= (((((((((ethmac_crc32_inserter_last[28] ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[5] <= (((((((((((((ethmac_crc32_inserter_last[29] ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[6] <= (((((((((((ethmac_crc32_inserter_last[30] ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[7] <= (((((((((ethmac_crc32_inserter_last[31] ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[8] <= ((((((((ethmac_crc32_inserter_last[0] ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[9] <= ((((((((ethmac_crc32_inserter_last[1] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[10] <= ((((((((ethmac_crc32_inserter_last[2] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[11] <= ((((((((ethmac_crc32_inserter_last[3] ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[12] <= ((((((((((((ethmac_crc32_inserter_last[4] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[13] <= ((((((((((((ethmac_crc32_inserter_last[5] ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[14] <= ((((((((((ethmac_crc32_inserter_last[6] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]);
	ethmac_crc32_inserter_next[15] <= ((((((((ethmac_crc32_inserter_last[7] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]);
	ethmac_crc32_inserter_next[16] <= ((((((ethmac_crc32_inserter_last[8] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[17] <= ((((((ethmac_crc32_inserter_last[9] ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[18] <= ((((((ethmac_crc32_inserter_last[10] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]);
	ethmac_crc32_inserter_next[19] <= ((((ethmac_crc32_inserter_last[11] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]);
	ethmac_crc32_inserter_next[20] <= ((ethmac_crc32_inserter_last[12] ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]);
	ethmac_crc32_inserter_next[21] <= ((ethmac_crc32_inserter_last[13] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]);
	ethmac_crc32_inserter_next[22] <= ((ethmac_crc32_inserter_last[14] ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[23] <= ((((((ethmac_crc32_inserter_last[15] ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[24] <= ((((((ethmac_crc32_inserter_last[16] ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[25] <= ((((ethmac_crc32_inserter_last[17] ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]);
	ethmac_crc32_inserter_next[26] <= ((((((((ethmac_crc32_inserter_last[18] ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[27] <= ((((((((ethmac_crc32_inserter_last[19] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[28] <= ((((((ethmac_crc32_inserter_last[20] ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]);
	ethmac_crc32_inserter_next[29] <= ((((((ethmac_crc32_inserter_last[21] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]);
	ethmac_crc32_inserter_next[30] <= ((((ethmac_crc32_inserter_last[22] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]);
	ethmac_crc32_inserter_next[31] <= ((ethmac_crc32_inserter_last[23] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]);
// synthesis translate_off
	dummy_d_69 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_70;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_inserter_source_first <= 1'd0;
	ethmac_crc32_inserter_source_last <= 1'd0;
	ethmac_crc32_inserter_source_payload_data <= 8'd0;
	ethmac_crc32_inserter_source_payload_last_be <= 1'd0;
	ethmac_crc32_inserter_source_payload_error <= 1'd0;
	ethmac_crc32_inserter_data0 <= 8'd0;
	ethmac_crc32_inserter_is_ongoing0 <= 1'd0;
	ethmac_crc32_inserter_is_ongoing1 <= 1'd0;
	liteethmaccrc32inserter_next_state <= 2'd0;
	ethmac_crc32_inserter_sink_ready <= 1'd0;
	ethmac_crc32_inserter_ce <= 1'd0;
	ethmac_crc32_inserter_reset <= 1'd0;
	ethmac_crc32_inserter_source_valid <= 1'd0;
	liteethmaccrc32inserter_next_state <= liteethmaccrc32inserter_state;
	case (liteethmaccrc32inserter_state)
		1'd1: begin
			ethmac_crc32_inserter_ce <= (ethmac_crc32_inserter_sink_valid & ethmac_crc32_inserter_source_ready);
			ethmac_crc32_inserter_data0 <= ethmac_crc32_inserter_sink_payload_data;
			ethmac_crc32_inserter_source_valid <= ethmac_crc32_inserter_sink_valid;
			ethmac_crc32_inserter_sink_ready <= ethmac_crc32_inserter_source_ready;
			ethmac_crc32_inserter_source_first <= ethmac_crc32_inserter_sink_first;
			ethmac_crc32_inserter_source_last <= ethmac_crc32_inserter_sink_last;
			ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_sink_payload_data;
			ethmac_crc32_inserter_source_payload_last_be <= ethmac_crc32_inserter_sink_payload_last_be;
			ethmac_crc32_inserter_source_payload_error <= ethmac_crc32_inserter_sink_payload_error;
			ethmac_crc32_inserter_source_last <= 1'd0;
			if (((ethmac_crc32_inserter_sink_valid & ethmac_crc32_inserter_sink_last) & ethmac_crc32_inserter_source_ready)) begin
				liteethmaccrc32inserter_next_state <= 2'd2;
			end
		end
		2'd2: begin
			ethmac_crc32_inserter_source_valid <= 1'd1;
			case (ethmac_crc32_inserter_cnt)
				1'd0: begin
					ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_value[31:24];
				end
				1'd1: begin
					ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_value[23:16];
				end
				2'd2: begin
					ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_value[15:8];
				end
				default: begin
					ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_value[7:0];
				end
			endcase
			if (ethmac_crc32_inserter_cnt_done) begin
				ethmac_crc32_inserter_source_last <= 1'd1;
				if (ethmac_crc32_inserter_source_ready) begin
					liteethmaccrc32inserter_next_state <= 1'd0;
				end
			end
			ethmac_crc32_inserter_is_ongoing1 <= 1'd1;
		end
		default: begin
			ethmac_crc32_inserter_reset <= 1'd1;
			ethmac_crc32_inserter_sink_ready <= 1'd1;
			if (ethmac_crc32_inserter_sink_valid) begin
				ethmac_crc32_inserter_sink_ready <= 1'd0;
				liteethmaccrc32inserter_next_state <= 1'd1;
			end
			ethmac_crc32_inserter_is_ongoing0 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_70 <= dummy_s;
// synthesis translate_on
end
assign ethmac_crc32_checker_fifo_full = (ethmac_crc32_checker_syncfifo_level == 3'd4);
assign ethmac_crc32_checker_fifo_in = (ethmac_crc32_checker_sink_sink_valid & ((~ethmac_crc32_checker_fifo_full) | ethmac_crc32_checker_fifo_out));
assign ethmac_crc32_checker_fifo_out = (ethmac_crc32_checker_source_source_valid & ethmac_crc32_checker_source_source_ready);
assign ethmac_crc32_checker_syncfifo_sink_first = ethmac_crc32_checker_sink_sink_first;
assign ethmac_crc32_checker_syncfifo_sink_last = ethmac_crc32_checker_sink_sink_last;
assign ethmac_crc32_checker_syncfifo_sink_payload_data = ethmac_crc32_checker_sink_sink_payload_data;
assign ethmac_crc32_checker_syncfifo_sink_payload_last_be = ethmac_crc32_checker_sink_sink_payload_last_be;
assign ethmac_crc32_checker_syncfifo_sink_payload_error = ethmac_crc32_checker_sink_sink_payload_error;

// synthesis translate_off
reg dummy_d_71;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_checker_syncfifo_sink_valid <= 1'd0;
	ethmac_crc32_checker_syncfifo_sink_valid <= ethmac_crc32_checker_sink_sink_valid;
	ethmac_crc32_checker_syncfifo_sink_valid <= ethmac_crc32_checker_fifo_in;
// synthesis translate_off
	dummy_d_71 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_72;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_checker_sink_sink_ready <= 1'd0;
	ethmac_crc32_checker_sink_sink_ready <= ethmac_crc32_checker_syncfifo_sink_ready;
	ethmac_crc32_checker_sink_sink_ready <= ethmac_crc32_checker_fifo_in;
// synthesis translate_off
	dummy_d_72 <= dummy_s;
// synthesis translate_on
end
assign ethmac_crc32_checker_source_source_valid = (ethmac_crc32_checker_sink_sink_valid & ethmac_crc32_checker_fifo_full);
assign ethmac_crc32_checker_source_source_last = ethmac_crc32_checker_sink_sink_last;
assign ethmac_crc32_checker_syncfifo_source_ready = ethmac_crc32_checker_fifo_out;
assign ethmac_crc32_checker_source_source_payload_data = ethmac_crc32_checker_syncfifo_source_payload_data;
assign ethmac_crc32_checker_source_source_payload_last_be = ethmac_crc32_checker_syncfifo_source_payload_last_be;

// synthesis translate_off
reg dummy_d_73;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_checker_source_source_payload_error <= 1'd0;
	ethmac_crc32_checker_source_source_payload_error <= ethmac_crc32_checker_syncfifo_source_payload_error;
	ethmac_crc32_checker_source_source_payload_error <= (ethmac_crc32_checker_sink_sink_payload_error | ethmac_crc32_checker_crc_error);
// synthesis translate_off
	dummy_d_73 <= dummy_s;
// synthesis translate_on
end
assign ethmac_crc32_checker_error = ((ethmac_crc32_checker_source_source_valid & ethmac_crc32_checker_source_source_last) & ethmac_crc32_checker_crc_error);
assign ethmac_crc32_checker_crc_data0 = ethmac_crc32_checker_sink_sink_payload_data;
assign ethmac_crc32_checker_crc_data1 = ethmac_crc32_checker_crc_data0;
assign ethmac_crc32_checker_crc_last = ethmac_crc32_checker_crc_reg;
assign ethmac_crc32_checker_crc_value = (~{ethmac_crc32_checker_crc_reg[0], ethmac_crc32_checker_crc_reg[1], ethmac_crc32_checker_crc_reg[2], ethmac_crc32_checker_crc_reg[3], ethmac_crc32_checker_crc_reg[4], ethmac_crc32_checker_crc_reg[5], ethmac_crc32_checker_crc_reg[6], ethmac_crc32_checker_crc_reg[7], ethmac_crc32_checker_crc_reg[8], ethmac_crc32_checker_crc_reg[9], ethmac_crc32_checker_crc_reg[10], ethmac_crc32_checker_crc_reg[11], ethmac_crc32_checker_crc_reg[12], ethmac_crc32_checker_crc_reg[13], ethmac_crc32_checker_crc_reg[14], ethmac_crc32_checker_crc_reg[15], ethmac_crc32_checker_crc_reg[16], ethmac_crc32_checker_crc_reg[17], ethmac_crc32_checker_crc_reg[18], ethmac_crc32_checker_crc_reg[19], ethmac_crc32_checker_crc_reg[20], ethmac_crc32_checker_crc_reg[21], ethmac_crc32_checker_crc_reg[22], ethmac_crc32_checker_crc_reg[23], ethmac_crc32_checker_crc_reg[24], ethmac_crc32_checker_crc_reg[25], ethmac_crc32_checker_crc_reg[26], ethmac_crc32_checker_crc_reg[27], ethmac_crc32_checker_crc_reg[28], ethmac_crc32_checker_crc_reg[29], ethmac_crc32_checker_crc_reg[30], ethmac_crc32_checker_crc_reg[31]});
assign ethmac_crc32_checker_crc_error = (ethmac_crc32_checker_crc_next != 32'd3338984827);

// synthesis translate_off
reg dummy_d_74;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_checker_crc_next <= 32'd0;
	ethmac_crc32_checker_crc_next[0] <= (((ethmac_crc32_checker_crc_last[24] ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[1] <= (((((((ethmac_crc32_checker_crc_last[25] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[2] <= (((((((((ethmac_crc32_checker_crc_last[26] ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[3] <= (((((((ethmac_crc32_checker_crc_last[27] ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[4] <= (((((((((ethmac_crc32_checker_crc_last[28] ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[5] <= (((((((((((((ethmac_crc32_checker_crc_last[29] ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[6] <= (((((((((((ethmac_crc32_checker_crc_last[30] ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[7] <= (((((((((ethmac_crc32_checker_crc_last[31] ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[8] <= ((((((((ethmac_crc32_checker_crc_last[0] ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[9] <= ((((((((ethmac_crc32_checker_crc_last[1] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[10] <= ((((((((ethmac_crc32_checker_crc_last[2] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[11] <= ((((((((ethmac_crc32_checker_crc_last[3] ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[12] <= ((((((((((((ethmac_crc32_checker_crc_last[4] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[13] <= ((((((((((((ethmac_crc32_checker_crc_last[5] ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[14] <= ((((((((((ethmac_crc32_checker_crc_last[6] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]);
	ethmac_crc32_checker_crc_next[15] <= ((((((((ethmac_crc32_checker_crc_last[7] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]);
	ethmac_crc32_checker_crc_next[16] <= ((((((ethmac_crc32_checker_crc_last[8] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[17] <= ((((((ethmac_crc32_checker_crc_last[9] ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[18] <= ((((((ethmac_crc32_checker_crc_last[10] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]);
	ethmac_crc32_checker_crc_next[19] <= ((((ethmac_crc32_checker_crc_last[11] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]);
	ethmac_crc32_checker_crc_next[20] <= ((ethmac_crc32_checker_crc_last[12] ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]);
	ethmac_crc32_checker_crc_next[21] <= ((ethmac_crc32_checker_crc_last[13] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]);
	ethmac_crc32_checker_crc_next[22] <= ((ethmac_crc32_checker_crc_last[14] ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[23] <= ((((((ethmac_crc32_checker_crc_last[15] ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[24] <= ((((((ethmac_crc32_checker_crc_last[16] ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[25] <= ((((ethmac_crc32_checker_crc_last[17] ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]);
	ethmac_crc32_checker_crc_next[26] <= ((((((((ethmac_crc32_checker_crc_last[18] ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[27] <= ((((((((ethmac_crc32_checker_crc_last[19] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[28] <= ((((((ethmac_crc32_checker_crc_last[20] ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]);
	ethmac_crc32_checker_crc_next[29] <= ((((((ethmac_crc32_checker_crc_last[21] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]);
	ethmac_crc32_checker_crc_next[30] <= ((((ethmac_crc32_checker_crc_last[22] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]);
	ethmac_crc32_checker_crc_next[31] <= ((ethmac_crc32_checker_crc_last[23] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]);
// synthesis translate_off
	dummy_d_74 <= dummy_s;
// synthesis translate_on
end
assign ethmac_crc32_checker_syncfifo_syncfifo_din = {ethmac_crc32_checker_syncfifo_fifo_in_last, ethmac_crc32_checker_syncfifo_fifo_in_first, ethmac_crc32_checker_syncfifo_fifo_in_payload_error, ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be, ethmac_crc32_checker_syncfifo_fifo_in_payload_data};
assign {ethmac_crc32_checker_syncfifo_fifo_out_last, ethmac_crc32_checker_syncfifo_fifo_out_first, ethmac_crc32_checker_syncfifo_fifo_out_payload_error, ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be, ethmac_crc32_checker_syncfifo_fifo_out_payload_data} = ethmac_crc32_checker_syncfifo_syncfifo_dout;
assign ethmac_crc32_checker_syncfifo_sink_ready = ethmac_crc32_checker_syncfifo_syncfifo_writable;
assign ethmac_crc32_checker_syncfifo_syncfifo_we = ethmac_crc32_checker_syncfifo_sink_valid;
assign ethmac_crc32_checker_syncfifo_fifo_in_first = ethmac_crc32_checker_syncfifo_sink_first;
assign ethmac_crc32_checker_syncfifo_fifo_in_last = ethmac_crc32_checker_syncfifo_sink_last;
assign ethmac_crc32_checker_syncfifo_fifo_in_payload_data = ethmac_crc32_checker_syncfifo_sink_payload_data;
assign ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be = ethmac_crc32_checker_syncfifo_sink_payload_last_be;
assign ethmac_crc32_checker_syncfifo_fifo_in_payload_error = ethmac_crc32_checker_syncfifo_sink_payload_error;
assign ethmac_crc32_checker_syncfifo_source_valid = ethmac_crc32_checker_syncfifo_syncfifo_readable;
assign ethmac_crc32_checker_syncfifo_source_first = ethmac_crc32_checker_syncfifo_fifo_out_first;
assign ethmac_crc32_checker_syncfifo_source_last = ethmac_crc32_checker_syncfifo_fifo_out_last;
assign ethmac_crc32_checker_syncfifo_source_payload_data = ethmac_crc32_checker_syncfifo_fifo_out_payload_data;
assign ethmac_crc32_checker_syncfifo_source_payload_last_be = ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be;
assign ethmac_crc32_checker_syncfifo_source_payload_error = ethmac_crc32_checker_syncfifo_fifo_out_payload_error;
assign ethmac_crc32_checker_syncfifo_syncfifo_re = ethmac_crc32_checker_syncfifo_source_ready;

// synthesis translate_off
reg dummy_d_75;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_checker_syncfifo_wrport_adr <= 3'd0;
	if (ethmac_crc32_checker_syncfifo_replace) begin
		ethmac_crc32_checker_syncfifo_wrport_adr <= (ethmac_crc32_checker_syncfifo_produce - 1'd1);
	end else begin
		ethmac_crc32_checker_syncfifo_wrport_adr <= ethmac_crc32_checker_syncfifo_produce;
	end
// synthesis translate_off
	dummy_d_75 <= dummy_s;
// synthesis translate_on
end
assign ethmac_crc32_checker_syncfifo_wrport_dat_w = ethmac_crc32_checker_syncfifo_syncfifo_din;
assign ethmac_crc32_checker_syncfifo_wrport_we = (ethmac_crc32_checker_syncfifo_syncfifo_we & (ethmac_crc32_checker_syncfifo_syncfifo_writable | ethmac_crc32_checker_syncfifo_replace));
assign ethmac_crc32_checker_syncfifo_do_read = (ethmac_crc32_checker_syncfifo_syncfifo_readable & ethmac_crc32_checker_syncfifo_syncfifo_re);
assign ethmac_crc32_checker_syncfifo_rdport_adr = ethmac_crc32_checker_syncfifo_consume;
assign ethmac_crc32_checker_syncfifo_syncfifo_dout = ethmac_crc32_checker_syncfifo_rdport_dat_r;
assign ethmac_crc32_checker_syncfifo_syncfifo_writable = (ethmac_crc32_checker_syncfifo_level != 3'd5);
assign ethmac_crc32_checker_syncfifo_syncfifo_readable = (ethmac_crc32_checker_syncfifo_level != 1'd0);

// synthesis translate_off
reg dummy_d_76;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_checker_crc_ce <= 1'd0;
	ethmac_crc32_checker_crc_reset <= 1'd0;
	liteethmaccrc32checker_next_state <= 2'd0;
	ethmac_crc32_checker_fifo_reset <= 1'd0;
	liteethmaccrc32checker_next_state <= liteethmaccrc32checker_state;
	case (liteethmaccrc32checker_state)
		1'd1: begin
			if ((ethmac_crc32_checker_sink_sink_valid & ethmac_crc32_checker_sink_sink_ready)) begin
				ethmac_crc32_checker_crc_ce <= 1'd1;
				liteethmaccrc32checker_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if ((ethmac_crc32_checker_sink_sink_valid & ethmac_crc32_checker_sink_sink_ready)) begin
				ethmac_crc32_checker_crc_ce <= 1'd1;
				if (ethmac_crc32_checker_sink_sink_last) begin
					liteethmaccrc32checker_next_state <= 1'd0;
				end
			end
		end
		default: begin
			ethmac_crc32_checker_crc_reset <= 1'd1;
			ethmac_crc32_checker_fifo_reset <= 1'd1;
			liteethmaccrc32checker_next_state <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_76 <= dummy_s;
// synthesis translate_on
end
assign ethmac_ps_preamble_error_o = (ethmac_ps_preamble_error_toggle_o ^ ethmac_ps_preamble_error_toggle_o_r);
assign ethmac_ps_crc_error_o = (ethmac_ps_crc_error_toggle_o ^ ethmac_ps_crc_error_toggle_o_r);
assign ethmac_padding_inserter_counter_done = (ethmac_padding_inserter_counter >= 6'd59);

// synthesis translate_off
reg dummy_d_77;
// synthesis translate_on
always @(*) begin
	ethmac_padding_inserter_sink_ready <= 1'd0;
	liteethmacpaddinginserter_next_state <= 1'd0;
	ethmac_padding_inserter_source_valid <= 1'd0;
	ethmac_padding_inserter_source_first <= 1'd0;
	ethmac_padding_inserter_source_last <= 1'd0;
	ethmac_padding_inserter_source_payload_data <= 8'd0;
	ethmac_padding_inserter_source_payload_last_be <= 1'd0;
	ethmac_padding_inserter_source_payload_error <= 1'd0;
	ethmac_padding_inserter_counter_reset <= 1'd0;
	ethmac_padding_inserter_counter_ce <= 1'd0;
	liteethmacpaddinginserter_next_state <= liteethmacpaddinginserter_state;
	case (liteethmacpaddinginserter_state)
		1'd1: begin
			ethmac_padding_inserter_source_valid <= 1'd1;
			ethmac_padding_inserter_source_last <= ethmac_padding_inserter_counter_done;
			ethmac_padding_inserter_source_payload_data <= 1'd0;
			if ((ethmac_padding_inserter_source_valid & ethmac_padding_inserter_source_ready)) begin
				ethmac_padding_inserter_counter_ce <= 1'd1;
				if (ethmac_padding_inserter_counter_done) begin
					ethmac_padding_inserter_counter_reset <= 1'd1;
					liteethmacpaddinginserter_next_state <= 1'd0;
				end
			end
		end
		default: begin
			ethmac_padding_inserter_source_valid <= ethmac_padding_inserter_sink_valid;
			ethmac_padding_inserter_sink_ready <= ethmac_padding_inserter_source_ready;
			ethmac_padding_inserter_source_first <= ethmac_padding_inserter_sink_first;
			ethmac_padding_inserter_source_last <= ethmac_padding_inserter_sink_last;
			ethmac_padding_inserter_source_payload_data <= ethmac_padding_inserter_sink_payload_data;
			ethmac_padding_inserter_source_payload_last_be <= ethmac_padding_inserter_sink_payload_last_be;
			ethmac_padding_inserter_source_payload_error <= ethmac_padding_inserter_sink_payload_error;
			if ((ethmac_padding_inserter_source_valid & ethmac_padding_inserter_source_ready)) begin
				ethmac_padding_inserter_counter_ce <= 1'd1;
				if (ethmac_padding_inserter_sink_last) begin
					if ((~ethmac_padding_inserter_counter_done)) begin
						ethmac_padding_inserter_source_last <= 1'd0;
						liteethmacpaddinginserter_next_state <= 1'd1;
					end else begin
						ethmac_padding_inserter_counter_reset <= 1'd1;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_77 <= dummy_s;
// synthesis translate_on
end
assign ethmac_padding_checker_source_valid = ethmac_padding_checker_sink_valid;
assign ethmac_padding_checker_sink_ready = ethmac_padding_checker_source_ready;
assign ethmac_padding_checker_source_first = ethmac_padding_checker_sink_first;
assign ethmac_padding_checker_source_last = ethmac_padding_checker_sink_last;
assign ethmac_padding_checker_source_payload_data = ethmac_padding_checker_sink_payload_data;
assign ethmac_padding_checker_source_payload_last_be = ethmac_padding_checker_sink_payload_last_be;
assign ethmac_padding_checker_source_payload_error = ethmac_padding_checker_sink_payload_error;
assign ethmac_tx_last_be_source_valid = (ethmac_tx_last_be_sink_valid & ethmac_tx_last_be_ongoing);
assign ethmac_tx_last_be_source_last = ethmac_tx_last_be_sink_payload_last_be;
assign ethmac_tx_last_be_source_payload_data = ethmac_tx_last_be_sink_payload_data;
assign ethmac_tx_last_be_sink_ready = ethmac_tx_last_be_source_ready;
assign ethmac_rx_last_be_source_valid = ethmac_rx_last_be_sink_valid;
assign ethmac_rx_last_be_sink_ready = ethmac_rx_last_be_source_ready;
assign ethmac_rx_last_be_source_first = ethmac_rx_last_be_sink_first;
assign ethmac_rx_last_be_source_last = ethmac_rx_last_be_sink_last;
assign ethmac_rx_last_be_source_payload_data = ethmac_rx_last_be_sink_payload_data;
assign ethmac_rx_last_be_source_payload_error = ethmac_rx_last_be_sink_payload_error;

// synthesis translate_off
reg dummy_d_78;
// synthesis translate_on
always @(*) begin
	ethmac_rx_last_be_source_payload_last_be <= 1'd0;
	ethmac_rx_last_be_source_payload_last_be <= ethmac_rx_last_be_sink_payload_last_be;
	ethmac_rx_last_be_source_payload_last_be <= ethmac_rx_last_be_sink_last;
// synthesis translate_off
	dummy_d_78 <= dummy_s;
// synthesis translate_on
end
assign ethmac_tx_converter_converter_sink_valid = ethmac_tx_converter_sink_valid;
assign ethmac_tx_converter_converter_sink_first = ethmac_tx_converter_sink_first;
assign ethmac_tx_converter_converter_sink_last = ethmac_tx_converter_sink_last;
assign ethmac_tx_converter_sink_ready = ethmac_tx_converter_converter_sink_ready;

// synthesis translate_off
reg dummy_d_79;
// synthesis translate_on
always @(*) begin
	ethmac_tx_converter_converter_sink_payload_data <= 40'd0;
	ethmac_tx_converter_converter_sink_payload_data[7:0] <= ethmac_tx_converter_sink_payload_data[7:0];
	ethmac_tx_converter_converter_sink_payload_data[8] <= ethmac_tx_converter_sink_payload_last_be[0];
	ethmac_tx_converter_converter_sink_payload_data[9] <= ethmac_tx_converter_sink_payload_error[0];
	ethmac_tx_converter_converter_sink_payload_data[17:10] <= ethmac_tx_converter_sink_payload_data[15:8];
	ethmac_tx_converter_converter_sink_payload_data[18] <= ethmac_tx_converter_sink_payload_last_be[1];
	ethmac_tx_converter_converter_sink_payload_data[19] <= ethmac_tx_converter_sink_payload_error[1];
	ethmac_tx_converter_converter_sink_payload_data[27:20] <= ethmac_tx_converter_sink_payload_data[23:16];
	ethmac_tx_converter_converter_sink_payload_data[28] <= ethmac_tx_converter_sink_payload_last_be[2];
	ethmac_tx_converter_converter_sink_payload_data[29] <= ethmac_tx_converter_sink_payload_error[2];
	ethmac_tx_converter_converter_sink_payload_data[37:30] <= ethmac_tx_converter_sink_payload_data[31:24];
	ethmac_tx_converter_converter_sink_payload_data[38] <= ethmac_tx_converter_sink_payload_last_be[3];
	ethmac_tx_converter_converter_sink_payload_data[39] <= ethmac_tx_converter_sink_payload_error[3];
// synthesis translate_off
	dummy_d_79 <= dummy_s;
// synthesis translate_on
end
assign ethmac_tx_converter_source_valid = ethmac_tx_converter_source_source_valid;
assign ethmac_tx_converter_source_first = ethmac_tx_converter_source_source_first;
assign ethmac_tx_converter_source_last = ethmac_tx_converter_source_source_last;
assign ethmac_tx_converter_source_source_ready = ethmac_tx_converter_source_ready;
assign {ethmac_tx_converter_source_payload_error, ethmac_tx_converter_source_payload_last_be, ethmac_tx_converter_source_payload_data} = ethmac_tx_converter_source_source_payload_data;
assign ethmac_tx_converter_source_source_valid = ethmac_tx_converter_converter_source_valid;
assign ethmac_tx_converter_converter_source_ready = ethmac_tx_converter_source_source_ready;
assign ethmac_tx_converter_source_source_first = ethmac_tx_converter_converter_source_first;
assign ethmac_tx_converter_source_source_last = ethmac_tx_converter_converter_source_last;
assign ethmac_tx_converter_source_source_payload_data = ethmac_tx_converter_converter_source_payload_data;
assign ethmac_tx_converter_converter_first = (ethmac_tx_converter_converter_mux == 1'd0);
assign ethmac_tx_converter_converter_last = (ethmac_tx_converter_converter_mux == 2'd3);
assign ethmac_tx_converter_converter_source_valid = ethmac_tx_converter_converter_sink_valid;
assign ethmac_tx_converter_converter_source_first = (ethmac_tx_converter_converter_sink_first & ethmac_tx_converter_converter_first);
assign ethmac_tx_converter_converter_source_last = (ethmac_tx_converter_converter_sink_last & ethmac_tx_converter_converter_last);
assign ethmac_tx_converter_converter_sink_ready = (ethmac_tx_converter_converter_last & ethmac_tx_converter_converter_source_ready);

// synthesis translate_off
reg dummy_d_80;
// synthesis translate_on
always @(*) begin
	ethmac_tx_converter_converter_source_payload_data <= 10'd0;
	case (ethmac_tx_converter_converter_mux)
		1'd0: begin
			ethmac_tx_converter_converter_source_payload_data <= ethmac_tx_converter_converter_sink_payload_data[39:30];
		end
		1'd1: begin
			ethmac_tx_converter_converter_source_payload_data <= ethmac_tx_converter_converter_sink_payload_data[29:20];
		end
		2'd2: begin
			ethmac_tx_converter_converter_source_payload_data <= ethmac_tx_converter_converter_sink_payload_data[19:10];
		end
		default: begin
			ethmac_tx_converter_converter_source_payload_data <= ethmac_tx_converter_converter_sink_payload_data[9:0];
		end
	endcase
// synthesis translate_off
	dummy_d_80 <= dummy_s;
// synthesis translate_on
end
assign ethmac_tx_converter_converter_source_payload_valid_token_count = ethmac_tx_converter_converter_last;
assign ethmac_rx_converter_converter_sink_valid = ethmac_rx_converter_sink_valid;
assign ethmac_rx_converter_converter_sink_first = ethmac_rx_converter_sink_first;
assign ethmac_rx_converter_converter_sink_last = ethmac_rx_converter_sink_last;
assign ethmac_rx_converter_sink_ready = ethmac_rx_converter_converter_sink_ready;
assign ethmac_rx_converter_converter_sink_payload_data = {ethmac_rx_converter_sink_payload_error, ethmac_rx_converter_sink_payload_last_be, ethmac_rx_converter_sink_payload_data};
assign ethmac_rx_converter_source_valid = ethmac_rx_converter_source_source_valid;
assign ethmac_rx_converter_source_first = ethmac_rx_converter_source_source_first;
assign ethmac_rx_converter_source_last = ethmac_rx_converter_source_source_last;
assign ethmac_rx_converter_source_source_ready = ethmac_rx_converter_source_ready;

// synthesis translate_off
reg dummy_d_81;
// synthesis translate_on
always @(*) begin
	ethmac_rx_converter_source_payload_data <= 32'd0;
	ethmac_rx_converter_source_payload_data[7:0] <= ethmac_rx_converter_source_source_payload_data[7:0];
	ethmac_rx_converter_source_payload_data[15:8] <= ethmac_rx_converter_source_source_payload_data[17:10];
	ethmac_rx_converter_source_payload_data[23:16] <= ethmac_rx_converter_source_source_payload_data[27:20];
	ethmac_rx_converter_source_payload_data[31:24] <= ethmac_rx_converter_source_source_payload_data[37:30];
// synthesis translate_off
	dummy_d_81 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_82;
// synthesis translate_on
always @(*) begin
	ethmac_rx_converter_source_payload_last_be <= 4'd0;
	ethmac_rx_converter_source_payload_last_be[0] <= ethmac_rx_converter_source_source_payload_data[8];
	ethmac_rx_converter_source_payload_last_be[1] <= ethmac_rx_converter_source_source_payload_data[18];
	ethmac_rx_converter_source_payload_last_be[2] <= ethmac_rx_converter_source_source_payload_data[28];
	ethmac_rx_converter_source_payload_last_be[3] <= ethmac_rx_converter_source_source_payload_data[38];
// synthesis translate_off
	dummy_d_82 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_83;
// synthesis translate_on
always @(*) begin
	ethmac_rx_converter_source_payload_error <= 4'd0;
	ethmac_rx_converter_source_payload_error[0] <= ethmac_rx_converter_source_source_payload_data[9];
	ethmac_rx_converter_source_payload_error[1] <= ethmac_rx_converter_source_source_payload_data[19];
	ethmac_rx_converter_source_payload_error[2] <= ethmac_rx_converter_source_source_payload_data[29];
	ethmac_rx_converter_source_payload_error[3] <= ethmac_rx_converter_source_source_payload_data[39];
// synthesis translate_off
	dummy_d_83 <= dummy_s;
// synthesis translate_on
end
assign ethmac_rx_converter_source_source_valid = ethmac_rx_converter_converter_source_valid;
assign ethmac_rx_converter_converter_source_ready = ethmac_rx_converter_source_source_ready;
assign ethmac_rx_converter_source_source_first = ethmac_rx_converter_converter_source_first;
assign ethmac_rx_converter_source_source_last = ethmac_rx_converter_converter_source_last;
assign ethmac_rx_converter_source_source_payload_data = ethmac_rx_converter_converter_source_payload_data;
assign ethmac_rx_converter_converter_sink_ready = ((~ethmac_rx_converter_converter_strobe_all) | ethmac_rx_converter_converter_source_ready);
assign ethmac_rx_converter_converter_source_valid = ethmac_rx_converter_converter_strobe_all;
assign ethmac_rx_converter_converter_load_part = (ethmac_rx_converter_converter_sink_valid & ethmac_rx_converter_converter_sink_ready);
assign ethmac_tx_cdc_asyncfifo_din = {ethmac_tx_cdc_fifo_in_last, ethmac_tx_cdc_fifo_in_first, ethmac_tx_cdc_fifo_in_payload_error, ethmac_tx_cdc_fifo_in_payload_last_be, ethmac_tx_cdc_fifo_in_payload_data};
assign {ethmac_tx_cdc_fifo_out_last, ethmac_tx_cdc_fifo_out_first, ethmac_tx_cdc_fifo_out_payload_error, ethmac_tx_cdc_fifo_out_payload_last_be, ethmac_tx_cdc_fifo_out_payload_data} = ethmac_tx_cdc_asyncfifo_dout;
assign ethmac_tx_cdc_sink_ready = ethmac_tx_cdc_asyncfifo_writable;
assign ethmac_tx_cdc_asyncfifo_we = ethmac_tx_cdc_sink_valid;
assign ethmac_tx_cdc_fifo_in_first = ethmac_tx_cdc_sink_first;
assign ethmac_tx_cdc_fifo_in_last = ethmac_tx_cdc_sink_last;
assign ethmac_tx_cdc_fifo_in_payload_data = ethmac_tx_cdc_sink_payload_data;
assign ethmac_tx_cdc_fifo_in_payload_last_be = ethmac_tx_cdc_sink_payload_last_be;
assign ethmac_tx_cdc_fifo_in_payload_error = ethmac_tx_cdc_sink_payload_error;
assign ethmac_tx_cdc_source_valid = ethmac_tx_cdc_asyncfifo_readable;
assign ethmac_tx_cdc_source_first = ethmac_tx_cdc_fifo_out_first;
assign ethmac_tx_cdc_source_last = ethmac_tx_cdc_fifo_out_last;
assign ethmac_tx_cdc_source_payload_data = ethmac_tx_cdc_fifo_out_payload_data;
assign ethmac_tx_cdc_source_payload_last_be = ethmac_tx_cdc_fifo_out_payload_last_be;
assign ethmac_tx_cdc_source_payload_error = ethmac_tx_cdc_fifo_out_payload_error;
assign ethmac_tx_cdc_asyncfifo_re = ethmac_tx_cdc_source_ready;
assign ethmac_tx_cdc_graycounter0_ce = (ethmac_tx_cdc_asyncfifo_writable & ethmac_tx_cdc_asyncfifo_we);
assign ethmac_tx_cdc_graycounter1_ce = (ethmac_tx_cdc_asyncfifo_readable & ethmac_tx_cdc_asyncfifo_re);
assign ethmac_tx_cdc_asyncfifo_writable = (((ethmac_tx_cdc_graycounter0_q[6] == ethmac_tx_cdc_consume_wdomain[6]) | (ethmac_tx_cdc_graycounter0_q[5] == ethmac_tx_cdc_consume_wdomain[5])) | (ethmac_tx_cdc_graycounter0_q[4:0] != ethmac_tx_cdc_consume_wdomain[4:0]));
assign ethmac_tx_cdc_asyncfifo_readable = (ethmac_tx_cdc_graycounter1_q != ethmac_tx_cdc_produce_rdomain);
assign ethmac_tx_cdc_wrport_adr = ethmac_tx_cdc_graycounter0_q_binary[5:0];
assign ethmac_tx_cdc_wrport_dat_w = ethmac_tx_cdc_asyncfifo_din;
assign ethmac_tx_cdc_wrport_we = ethmac_tx_cdc_graycounter0_ce;
assign ethmac_tx_cdc_rdport_adr = ethmac_tx_cdc_graycounter1_q_next_binary[5:0];
assign ethmac_tx_cdc_asyncfifo_dout = ethmac_tx_cdc_rdport_dat_r;

// synthesis translate_off
reg dummy_d_84;
// synthesis translate_on
always @(*) begin
	ethmac_tx_cdc_graycounter0_q_next_binary <= 7'd0;
	if (ethmac_tx_cdc_graycounter0_ce) begin
		ethmac_tx_cdc_graycounter0_q_next_binary <= (ethmac_tx_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		ethmac_tx_cdc_graycounter0_q_next_binary <= ethmac_tx_cdc_graycounter0_q_binary;
	end
// synthesis translate_off
	dummy_d_84 <= dummy_s;
// synthesis translate_on
end
assign ethmac_tx_cdc_graycounter0_q_next = (ethmac_tx_cdc_graycounter0_q_next_binary ^ ethmac_tx_cdc_graycounter0_q_next_binary[6:1]);

// synthesis translate_off
reg dummy_d_85;
// synthesis translate_on
always @(*) begin
	ethmac_tx_cdc_graycounter1_q_next_binary <= 7'd0;
	if (ethmac_tx_cdc_graycounter1_ce) begin
		ethmac_tx_cdc_graycounter1_q_next_binary <= (ethmac_tx_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		ethmac_tx_cdc_graycounter1_q_next_binary <= ethmac_tx_cdc_graycounter1_q_binary;
	end
// synthesis translate_off
	dummy_d_85 <= dummy_s;
// synthesis translate_on
end
assign ethmac_tx_cdc_graycounter1_q_next = (ethmac_tx_cdc_graycounter1_q_next_binary ^ ethmac_tx_cdc_graycounter1_q_next_binary[6:1]);
assign ethmac_rx_cdc_asyncfifo_din = {ethmac_rx_cdc_fifo_in_last, ethmac_rx_cdc_fifo_in_first, ethmac_rx_cdc_fifo_in_payload_error, ethmac_rx_cdc_fifo_in_payload_last_be, ethmac_rx_cdc_fifo_in_payload_data};
assign {ethmac_rx_cdc_fifo_out_last, ethmac_rx_cdc_fifo_out_first, ethmac_rx_cdc_fifo_out_payload_error, ethmac_rx_cdc_fifo_out_payload_last_be, ethmac_rx_cdc_fifo_out_payload_data} = ethmac_rx_cdc_asyncfifo_dout;
assign ethmac_rx_cdc_sink_ready = ethmac_rx_cdc_asyncfifo_writable;
assign ethmac_rx_cdc_asyncfifo_we = ethmac_rx_cdc_sink_valid;
assign ethmac_rx_cdc_fifo_in_first = ethmac_rx_cdc_sink_first;
assign ethmac_rx_cdc_fifo_in_last = ethmac_rx_cdc_sink_last;
assign ethmac_rx_cdc_fifo_in_payload_data = ethmac_rx_cdc_sink_payload_data;
assign ethmac_rx_cdc_fifo_in_payload_last_be = ethmac_rx_cdc_sink_payload_last_be;
assign ethmac_rx_cdc_fifo_in_payload_error = ethmac_rx_cdc_sink_payload_error;
assign ethmac_rx_cdc_source_valid = ethmac_rx_cdc_asyncfifo_readable;
assign ethmac_rx_cdc_source_first = ethmac_rx_cdc_fifo_out_first;
assign ethmac_rx_cdc_source_last = ethmac_rx_cdc_fifo_out_last;
assign ethmac_rx_cdc_source_payload_data = ethmac_rx_cdc_fifo_out_payload_data;
assign ethmac_rx_cdc_source_payload_last_be = ethmac_rx_cdc_fifo_out_payload_last_be;
assign ethmac_rx_cdc_source_payload_error = ethmac_rx_cdc_fifo_out_payload_error;
assign ethmac_rx_cdc_asyncfifo_re = ethmac_rx_cdc_source_ready;
assign ethmac_rx_cdc_graycounter0_ce = (ethmac_rx_cdc_asyncfifo_writable & ethmac_rx_cdc_asyncfifo_we);
assign ethmac_rx_cdc_graycounter1_ce = (ethmac_rx_cdc_asyncfifo_readable & ethmac_rx_cdc_asyncfifo_re);
assign ethmac_rx_cdc_asyncfifo_writable = (((ethmac_rx_cdc_graycounter0_q[6] == ethmac_rx_cdc_consume_wdomain[6]) | (ethmac_rx_cdc_graycounter0_q[5] == ethmac_rx_cdc_consume_wdomain[5])) | (ethmac_rx_cdc_graycounter0_q[4:0] != ethmac_rx_cdc_consume_wdomain[4:0]));
assign ethmac_rx_cdc_asyncfifo_readable = (ethmac_rx_cdc_graycounter1_q != ethmac_rx_cdc_produce_rdomain);
assign ethmac_rx_cdc_wrport_adr = ethmac_rx_cdc_graycounter0_q_binary[5:0];
assign ethmac_rx_cdc_wrport_dat_w = ethmac_rx_cdc_asyncfifo_din;
assign ethmac_rx_cdc_wrport_we = ethmac_rx_cdc_graycounter0_ce;
assign ethmac_rx_cdc_rdport_adr = ethmac_rx_cdc_graycounter1_q_next_binary[5:0];
assign ethmac_rx_cdc_asyncfifo_dout = ethmac_rx_cdc_rdport_dat_r;

// synthesis translate_off
reg dummy_d_86;
// synthesis translate_on
always @(*) begin
	ethmac_rx_cdc_graycounter0_q_next_binary <= 7'd0;
	if (ethmac_rx_cdc_graycounter0_ce) begin
		ethmac_rx_cdc_graycounter0_q_next_binary <= (ethmac_rx_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		ethmac_rx_cdc_graycounter0_q_next_binary <= ethmac_rx_cdc_graycounter0_q_binary;
	end
// synthesis translate_off
	dummy_d_86 <= dummy_s;
// synthesis translate_on
end
assign ethmac_rx_cdc_graycounter0_q_next = (ethmac_rx_cdc_graycounter0_q_next_binary ^ ethmac_rx_cdc_graycounter0_q_next_binary[6:1]);

// synthesis translate_off
reg dummy_d_87;
// synthesis translate_on
always @(*) begin
	ethmac_rx_cdc_graycounter1_q_next_binary <= 7'd0;
	if (ethmac_rx_cdc_graycounter1_ce) begin
		ethmac_rx_cdc_graycounter1_q_next_binary <= (ethmac_rx_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		ethmac_rx_cdc_graycounter1_q_next_binary <= ethmac_rx_cdc_graycounter1_q_binary;
	end
// synthesis translate_off
	dummy_d_87 <= dummy_s;
// synthesis translate_on
end
assign ethmac_rx_cdc_graycounter1_q_next = (ethmac_rx_cdc_graycounter1_q_next_binary ^ ethmac_rx_cdc_graycounter1_q_next_binary[6:1]);
assign ethmac_tx_converter_sink_valid = ethmac_tx_cdc_source_valid;
assign ethmac_tx_cdc_source_ready = ethmac_tx_converter_sink_ready;
assign ethmac_tx_converter_sink_first = ethmac_tx_cdc_source_first;
assign ethmac_tx_converter_sink_last = ethmac_tx_cdc_source_last;
assign ethmac_tx_converter_sink_payload_data = ethmac_tx_cdc_source_payload_data;
assign ethmac_tx_converter_sink_payload_last_be = ethmac_tx_cdc_source_payload_last_be;
assign ethmac_tx_converter_sink_payload_error = ethmac_tx_cdc_source_payload_error;
assign ethmac_tx_last_be_sink_valid = ethmac_tx_converter_source_valid;
assign ethmac_tx_converter_source_ready = ethmac_tx_last_be_sink_ready;
assign ethmac_tx_last_be_sink_first = ethmac_tx_converter_source_first;
assign ethmac_tx_last_be_sink_last = ethmac_tx_converter_source_last;
assign ethmac_tx_last_be_sink_payload_data = ethmac_tx_converter_source_payload_data;
assign ethmac_tx_last_be_sink_payload_last_be = ethmac_tx_converter_source_payload_last_be;
assign ethmac_tx_last_be_sink_payload_error = ethmac_tx_converter_source_payload_error;
assign ethmac_padding_inserter_sink_valid = ethmac_tx_last_be_source_valid;
assign ethmac_tx_last_be_source_ready = ethmac_padding_inserter_sink_ready;
assign ethmac_padding_inserter_sink_first = ethmac_tx_last_be_source_first;
assign ethmac_padding_inserter_sink_last = ethmac_tx_last_be_source_last;
assign ethmac_padding_inserter_sink_payload_data = ethmac_tx_last_be_source_payload_data;
assign ethmac_padding_inserter_sink_payload_last_be = ethmac_tx_last_be_source_payload_last_be;
assign ethmac_padding_inserter_sink_payload_error = ethmac_tx_last_be_source_payload_error;
assign ethmac_crc32_inserter_sink_valid = ethmac_padding_inserter_source_valid;
assign ethmac_padding_inserter_source_ready = ethmac_crc32_inserter_sink_ready;
assign ethmac_crc32_inserter_sink_first = ethmac_padding_inserter_source_first;
assign ethmac_crc32_inserter_sink_last = ethmac_padding_inserter_source_last;
assign ethmac_crc32_inserter_sink_payload_data = ethmac_padding_inserter_source_payload_data;
assign ethmac_crc32_inserter_sink_payload_last_be = ethmac_padding_inserter_source_payload_last_be;
assign ethmac_crc32_inserter_sink_payload_error = ethmac_padding_inserter_source_payload_error;
assign ethmac_preamble_inserter_sink_valid = ethmac_crc32_inserter_source_valid;
assign ethmac_crc32_inserter_source_ready = ethmac_preamble_inserter_sink_ready;
assign ethmac_preamble_inserter_sink_first = ethmac_crc32_inserter_source_first;
assign ethmac_preamble_inserter_sink_last = ethmac_crc32_inserter_source_last;
assign ethmac_preamble_inserter_sink_payload_data = ethmac_crc32_inserter_source_payload_data;
assign ethmac_preamble_inserter_sink_payload_last_be = ethmac_crc32_inserter_source_payload_last_be;
assign ethmac_preamble_inserter_sink_payload_error = ethmac_crc32_inserter_source_payload_error;
assign ethmac_tx_gap_inserter_sink_valid = ethmac_preamble_inserter_source_valid;
assign ethmac_preamble_inserter_source_ready = ethmac_tx_gap_inserter_sink_ready;
assign ethmac_tx_gap_inserter_sink_first = ethmac_preamble_inserter_source_first;
assign ethmac_tx_gap_inserter_sink_last = ethmac_preamble_inserter_source_last;
assign ethmac_tx_gap_inserter_sink_payload_data = ethmac_preamble_inserter_source_payload_data;
assign ethmac_tx_gap_inserter_sink_payload_last_be = ethmac_preamble_inserter_source_payload_last_be;
assign ethmac_tx_gap_inserter_sink_payload_error = ethmac_preamble_inserter_source_payload_error;
assign ethphy_liteethphygmiimiitx_sink_sink_valid0 = ethmac_tx_gap_inserter_source_valid;
assign ethmac_tx_gap_inserter_source_ready = ethphy_liteethphygmiimiitx_sink_sink_ready0;
assign ethphy_liteethphygmiimiitx_sink_sink_first0 = ethmac_tx_gap_inserter_source_first;
assign ethphy_liteethphygmiimiitx_sink_sink_last0 = ethmac_tx_gap_inserter_source_last;
assign ethphy_liteethphygmiimiitx_sink_sink_payload_data0 = ethmac_tx_gap_inserter_source_payload_data;
assign ethphy_liteethphygmiimiitx_sink_sink_payload_last_be0 = ethmac_tx_gap_inserter_source_payload_last_be;
assign ethphy_liteethphygmiimiitx_sink_sink_payload_error0 = ethmac_tx_gap_inserter_source_payload_error;
assign ethmac_preamble_checker_sink_valid = ethphy_liteethphygmiimiirx_source_source_valid0;
assign ethphy_liteethphygmiimiirx_source_source_ready0 = ethmac_preamble_checker_sink_ready;
assign ethmac_preamble_checker_sink_first = ethphy_liteethphygmiimiirx_source_source_first0;
assign ethmac_preamble_checker_sink_last = ethphy_liteethphygmiimiirx_source_source_last0;
assign ethmac_preamble_checker_sink_payload_data = ethphy_liteethphygmiimiirx_source_source_payload_data0;
assign ethmac_preamble_checker_sink_payload_last_be = ethphy_liteethphygmiimiirx_source_source_payload_last_be0;
assign ethmac_preamble_checker_sink_payload_error = ethphy_liteethphygmiimiirx_source_source_payload_error0;
assign ethmac_crc32_checker_sink_sink_valid = ethmac_preamble_checker_source_valid;
assign ethmac_preamble_checker_source_ready = ethmac_crc32_checker_sink_sink_ready;
assign ethmac_crc32_checker_sink_sink_first = ethmac_preamble_checker_source_first;
assign ethmac_crc32_checker_sink_sink_last = ethmac_preamble_checker_source_last;
assign ethmac_crc32_checker_sink_sink_payload_data = ethmac_preamble_checker_source_payload_data;
assign ethmac_crc32_checker_sink_sink_payload_last_be = ethmac_preamble_checker_source_payload_last_be;
assign ethmac_crc32_checker_sink_sink_payload_error = ethmac_preamble_checker_source_payload_error;
assign ethmac_padding_checker_sink_valid = ethmac_crc32_checker_source_source_valid;
assign ethmac_crc32_checker_source_source_ready = ethmac_padding_checker_sink_ready;
assign ethmac_padding_checker_sink_first = ethmac_crc32_checker_source_source_first;
assign ethmac_padding_checker_sink_last = ethmac_crc32_checker_source_source_last;
assign ethmac_padding_checker_sink_payload_data = ethmac_crc32_checker_source_source_payload_data;
assign ethmac_padding_checker_sink_payload_last_be = ethmac_crc32_checker_source_source_payload_last_be;
assign ethmac_padding_checker_sink_payload_error = ethmac_crc32_checker_source_source_payload_error;
assign ethmac_rx_last_be_sink_valid = ethmac_padding_checker_source_valid;
assign ethmac_padding_checker_source_ready = ethmac_rx_last_be_sink_ready;
assign ethmac_rx_last_be_sink_first = ethmac_padding_checker_source_first;
assign ethmac_rx_last_be_sink_last = ethmac_padding_checker_source_last;
assign ethmac_rx_last_be_sink_payload_data = ethmac_padding_checker_source_payload_data;
assign ethmac_rx_last_be_sink_payload_last_be = ethmac_padding_checker_source_payload_last_be;
assign ethmac_rx_last_be_sink_payload_error = ethmac_padding_checker_source_payload_error;
assign ethmac_rx_converter_sink_valid = ethmac_rx_last_be_source_valid;
assign ethmac_rx_last_be_source_ready = ethmac_rx_converter_sink_ready;
assign ethmac_rx_converter_sink_first = ethmac_rx_last_be_source_first;
assign ethmac_rx_converter_sink_last = ethmac_rx_last_be_source_last;
assign ethmac_rx_converter_sink_payload_data = ethmac_rx_last_be_source_payload_data;
assign ethmac_rx_converter_sink_payload_last_be = ethmac_rx_last_be_source_payload_last_be;
assign ethmac_rx_converter_sink_payload_error = ethmac_rx_last_be_source_payload_error;
assign ethmac_rx_cdc_sink_valid = ethmac_rx_converter_source_valid;
assign ethmac_rx_converter_source_ready = ethmac_rx_cdc_sink_ready;
assign ethmac_rx_cdc_sink_first = ethmac_rx_converter_source_first;
assign ethmac_rx_cdc_sink_last = ethmac_rx_converter_source_last;
assign ethmac_rx_cdc_sink_payload_data = ethmac_rx_converter_source_payload_data;
assign ethmac_rx_cdc_sink_payload_last_be = ethmac_rx_converter_source_payload_last_be;
assign ethmac_rx_cdc_sink_payload_error = ethmac_rx_converter_source_payload_error;
assign ethmac_writer_sink_sink_valid = ethmac_sink_valid;
assign ethmac_sink_ready = ethmac_writer_sink_sink_ready;
assign ethmac_writer_sink_sink_first = ethmac_sink_first;
assign ethmac_writer_sink_sink_last = ethmac_sink_last;
assign ethmac_writer_sink_sink_payload_data = ethmac_sink_payload_data;
assign ethmac_writer_sink_sink_payload_last_be = ethmac_sink_payload_last_be;
assign ethmac_writer_sink_sink_payload_error = ethmac_sink_payload_error;
assign ethmac_source_valid = ethmac_reader_source_source_valid;
assign ethmac_reader_source_source_ready = ethmac_source_ready;
assign ethmac_source_first = ethmac_reader_source_source_first;
assign ethmac_source_last = ethmac_reader_source_source_last;
assign ethmac_source_payload_data = ethmac_reader_source_source_payload_data;
assign ethmac_source_payload_last_be = ethmac_reader_source_source_payload_last_be;
assign ethmac_source_payload_error = ethmac_reader_source_source_payload_error;

// synthesis translate_off
reg dummy_d_88;
// synthesis translate_on
always @(*) begin
	ethmac_writer_increment <= 3'd0;
	if (ethmac_writer_sink_sink_payload_last_be[3]) begin
		ethmac_writer_increment <= 1'd1;
	end else begin
		if (ethmac_writer_sink_sink_payload_last_be[2]) begin
			ethmac_writer_increment <= 2'd2;
		end else begin
			if (ethmac_writer_sink_sink_payload_last_be[1]) begin
				ethmac_writer_increment <= 2'd3;
			end else begin
				ethmac_writer_increment <= 3'd4;
			end
		end
	end
// synthesis translate_off
	dummy_d_88 <= dummy_s;
// synthesis translate_on
end
assign ethmac_writer_fifo_sink_payload_slot = ethmac_writer_slot;
assign ethmac_writer_fifo_sink_payload_length = ethmac_writer_counter;
assign ethmac_writer_fifo_source_ready = ethmac_writer_available_clear;
assign ethmac_writer_available_trigger = ethmac_writer_fifo_source_valid;
assign ethmac_writer_slot_status = ethmac_writer_fifo_source_payload_slot;
assign ethmac_writer_length_status = ethmac_writer_fifo_source_payload_length;

// synthesis translate_off
reg dummy_d_89;
// synthesis translate_on
always @(*) begin
	ethmac_writer_memory0_dat_w <= 32'd0;
	ethmac_writer_memory1_adr <= 9'd0;
	ethmac_writer_memory1_we <= 1'd0;
	ethmac_writer_memory1_dat_w <= 32'd0;
	ethmac_writer_memory0_adr <= 9'd0;
	ethmac_writer_memory0_we <= 1'd0;
	case (ethmac_writer_slot)
		1'd0: begin
			ethmac_writer_memory0_adr <= ethmac_writer_counter[31:2];
			ethmac_writer_memory0_dat_w <= ethmac_writer_sink_sink_payload_data;
			if ((ethmac_writer_sink_sink_valid & ethmac_writer_ongoing)) begin
				ethmac_writer_memory0_we <= 4'd15;
			end
		end
		1'd1: begin
			ethmac_writer_memory1_adr <= ethmac_writer_counter[31:2];
			ethmac_writer_memory1_dat_w <= ethmac_writer_sink_sink_payload_data;
			if ((ethmac_writer_sink_sink_valid & ethmac_writer_ongoing)) begin
				ethmac_writer_memory1_we <= 4'd15;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_89 <= dummy_s;
// synthesis translate_on
end
assign ethmac_writer_status_w = ethmac_writer_available_status;

// synthesis translate_off
reg dummy_d_90;
// synthesis translate_on
always @(*) begin
	ethmac_writer_available_clear <= 1'd0;
	if ((ethmac_writer_pending_re & ethmac_writer_pending_r)) begin
		ethmac_writer_available_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_90 <= dummy_s;
// synthesis translate_on
end
assign ethmac_writer_pending_w = ethmac_writer_available_pending;
assign ethmac_writer_irq = (ethmac_writer_pending_w & ethmac_writer_storage);
assign ethmac_writer_available_status = ethmac_writer_available_trigger;
assign ethmac_writer_available_pending = ethmac_writer_available_trigger;
assign ethmac_writer_fifo_syncfifo_din = {ethmac_writer_fifo_fifo_in_last, ethmac_writer_fifo_fifo_in_first, ethmac_writer_fifo_fifo_in_payload_length, ethmac_writer_fifo_fifo_in_payload_slot};
assign {ethmac_writer_fifo_fifo_out_last, ethmac_writer_fifo_fifo_out_first, ethmac_writer_fifo_fifo_out_payload_length, ethmac_writer_fifo_fifo_out_payload_slot} = ethmac_writer_fifo_syncfifo_dout;
assign ethmac_writer_fifo_sink_ready = ethmac_writer_fifo_syncfifo_writable;
assign ethmac_writer_fifo_syncfifo_we = ethmac_writer_fifo_sink_valid;
assign ethmac_writer_fifo_fifo_in_first = ethmac_writer_fifo_sink_first;
assign ethmac_writer_fifo_fifo_in_last = ethmac_writer_fifo_sink_last;
assign ethmac_writer_fifo_fifo_in_payload_slot = ethmac_writer_fifo_sink_payload_slot;
assign ethmac_writer_fifo_fifo_in_payload_length = ethmac_writer_fifo_sink_payload_length;
assign ethmac_writer_fifo_source_valid = ethmac_writer_fifo_syncfifo_readable;
assign ethmac_writer_fifo_source_first = ethmac_writer_fifo_fifo_out_first;
assign ethmac_writer_fifo_source_last = ethmac_writer_fifo_fifo_out_last;
assign ethmac_writer_fifo_source_payload_slot = ethmac_writer_fifo_fifo_out_payload_slot;
assign ethmac_writer_fifo_source_payload_length = ethmac_writer_fifo_fifo_out_payload_length;
assign ethmac_writer_fifo_syncfifo_re = ethmac_writer_fifo_source_ready;

// synthesis translate_off
reg dummy_d_91;
// synthesis translate_on
always @(*) begin
	ethmac_writer_fifo_wrport_adr <= 1'd0;
	if (ethmac_writer_fifo_replace) begin
		ethmac_writer_fifo_wrport_adr <= (ethmac_writer_fifo_produce - 1'd1);
	end else begin
		ethmac_writer_fifo_wrport_adr <= ethmac_writer_fifo_produce;
	end
// synthesis translate_off
	dummy_d_91 <= dummy_s;
// synthesis translate_on
end
assign ethmac_writer_fifo_wrport_dat_w = ethmac_writer_fifo_syncfifo_din;
assign ethmac_writer_fifo_wrport_we = (ethmac_writer_fifo_syncfifo_we & (ethmac_writer_fifo_syncfifo_writable | ethmac_writer_fifo_replace));
assign ethmac_writer_fifo_do_read = (ethmac_writer_fifo_syncfifo_readable & ethmac_writer_fifo_syncfifo_re);
assign ethmac_writer_fifo_rdport_adr = ethmac_writer_fifo_consume;
assign ethmac_writer_fifo_syncfifo_dout = ethmac_writer_fifo_rdport_dat_r;
assign ethmac_writer_fifo_syncfifo_writable = (ethmac_writer_fifo_level != 2'd2);
assign ethmac_writer_fifo_syncfifo_readable = (ethmac_writer_fifo_level != 1'd0);

// synthesis translate_off
reg dummy_d_92;
// synthesis translate_on
always @(*) begin
	ethmac_writer_counter_reset <= 1'd0;
	ethmac_writer_counter_ce <= 1'd0;
	ethmac_writer_slot_ce <= 1'd0;
	ethmac_writer_ongoing <= 1'd0;
	ethmac_writer_fifo_sink_valid <= 1'd0;
	liteethmacsramwriter_next_state <= 3'd0;
	ethmac_writer_errors_status_next_value <= 32'd0;
	ethmac_writer_errors_status_next_value_ce <= 1'd0;
	liteethmacsramwriter_next_state <= liteethmacsramwriter_state;
	case (liteethmacsramwriter_state)
		1'd1: begin
			if (ethmac_writer_sink_sink_valid) begin
				if ((ethmac_writer_counter == 11'd1530)) begin
					liteethmacsramwriter_next_state <= 2'd3;
				end else begin
					ethmac_writer_counter_ce <= 1'd1;
					ethmac_writer_ongoing <= 1'd1;
				end
				if (ethmac_writer_sink_sink_last) begin
					if (((ethmac_writer_sink_sink_payload_error & ethmac_writer_sink_sink_payload_last_be) != 1'd0)) begin
						liteethmacsramwriter_next_state <= 2'd2;
					end else begin
						liteethmacsramwriter_next_state <= 3'd4;
					end
				end
			end
		end
		2'd2: begin
			ethmac_writer_counter_reset <= 1'd1;
			liteethmacsramwriter_next_state <= 1'd0;
		end
		2'd3: begin
			if ((ethmac_writer_sink_sink_valid & ethmac_writer_sink_sink_last)) begin
				liteethmacsramwriter_next_state <= 3'd4;
			end
		end
		3'd4: begin
			ethmac_writer_counter_reset <= 1'd1;
			ethmac_writer_slot_ce <= 1'd1;
			ethmac_writer_fifo_sink_valid <= 1'd1;
			liteethmacsramwriter_next_state <= 1'd0;
		end
		default: begin
			if (ethmac_writer_sink_sink_valid) begin
				if (ethmac_writer_fifo_sink_ready) begin
					ethmac_writer_ongoing <= 1'd1;
					ethmac_writer_counter_ce <= 1'd1;
					liteethmacsramwriter_next_state <= 1'd1;
				end else begin
					ethmac_writer_errors_status_next_value <= (ethmac_writer_errors_status + 1'd1);
					ethmac_writer_errors_status_next_value_ce <= 1'd1;
					liteethmacsramwriter_next_state <= 2'd3;
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_92 <= dummy_s;
// synthesis translate_on
end
assign ethmac_reader_fifo_sink_valid = ethmac_reader_start_re;
assign ethmac_reader_fifo_sink_payload_slot = ethmac_reader_slot_storage;
assign ethmac_reader_fifo_sink_payload_length = ethmac_reader_length_storage;
assign ethmac_reader_ready_status = ethmac_reader_fifo_sink_ready;
assign ethmac_reader_level_status = ethmac_reader_fifo_level;

// synthesis translate_off
reg dummy_d_93;
// synthesis translate_on
always @(*) begin
	ethmac_reader_source_source_payload_last_be <= 4'd0;
	if (ethmac_reader_last) begin
		if ((ethmac_reader_fifo_source_payload_length[1:0] == 2'd3)) begin
			ethmac_reader_source_source_payload_last_be <= 2'd2;
		end else begin
			if ((ethmac_reader_fifo_source_payload_length[1:0] == 2'd2)) begin
				ethmac_reader_source_source_payload_last_be <= 3'd4;
			end else begin
				if ((ethmac_reader_fifo_source_payload_length[1:0] == 1'd1)) begin
					ethmac_reader_source_source_payload_last_be <= 4'd8;
				end else begin
					ethmac_reader_source_source_payload_last_be <= 1'd1;
				end
			end
		end
	end
// synthesis translate_off
	dummy_d_93 <= dummy_s;
// synthesis translate_on
end
assign ethmac_reader_last = ((ethmac_reader_counter + 3'd4) >= ethmac_reader_fifo_source_payload_length);
assign ethmac_reader_memory0_adr = ethmac_reader_counter[10:2];
assign ethmac_reader_memory1_adr = ethmac_reader_counter[10:2];

// synthesis translate_off
reg dummy_d_94;
// synthesis translate_on
always @(*) begin
	ethmac_reader_source_source_payload_data <= 32'd0;
	case (ethmac_reader_fifo_source_payload_slot)
		1'd0: begin
			ethmac_reader_source_source_payload_data <= ethmac_reader_memory0_dat_r;
		end
		1'd1: begin
			ethmac_reader_source_source_payload_data <= ethmac_reader_memory1_dat_r;
		end
	endcase
// synthesis translate_off
	dummy_d_94 <= dummy_s;
// synthesis translate_on
end
assign ethmac_reader_eventmanager_status_w = ethmac_reader_done_status;

// synthesis translate_off
reg dummy_d_95;
// synthesis translate_on
always @(*) begin
	ethmac_reader_done_clear <= 1'd0;
	if ((ethmac_reader_eventmanager_pending_re & ethmac_reader_eventmanager_pending_r)) begin
		ethmac_reader_done_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_95 <= dummy_s;
// synthesis translate_on
end
assign ethmac_reader_eventmanager_pending_w = ethmac_reader_done_pending;
assign ethmac_reader_irq = (ethmac_reader_eventmanager_pending_w & ethmac_reader_eventmanager_storage);
assign ethmac_reader_done_status = 1'd0;
assign ethmac_reader_fifo_syncfifo_din = {ethmac_reader_fifo_fifo_in_last, ethmac_reader_fifo_fifo_in_first, ethmac_reader_fifo_fifo_in_payload_length, ethmac_reader_fifo_fifo_in_payload_slot};
assign {ethmac_reader_fifo_fifo_out_last, ethmac_reader_fifo_fifo_out_first, ethmac_reader_fifo_fifo_out_payload_length, ethmac_reader_fifo_fifo_out_payload_slot} = ethmac_reader_fifo_syncfifo_dout;
assign ethmac_reader_fifo_sink_ready = ethmac_reader_fifo_syncfifo_writable;
assign ethmac_reader_fifo_syncfifo_we = ethmac_reader_fifo_sink_valid;
assign ethmac_reader_fifo_fifo_in_first = ethmac_reader_fifo_sink_first;
assign ethmac_reader_fifo_fifo_in_last = ethmac_reader_fifo_sink_last;
assign ethmac_reader_fifo_fifo_in_payload_slot = ethmac_reader_fifo_sink_payload_slot;
assign ethmac_reader_fifo_fifo_in_payload_length = ethmac_reader_fifo_sink_payload_length;
assign ethmac_reader_fifo_source_valid = ethmac_reader_fifo_syncfifo_readable;
assign ethmac_reader_fifo_source_first = ethmac_reader_fifo_fifo_out_first;
assign ethmac_reader_fifo_source_last = ethmac_reader_fifo_fifo_out_last;
assign ethmac_reader_fifo_source_payload_slot = ethmac_reader_fifo_fifo_out_payload_slot;
assign ethmac_reader_fifo_source_payload_length = ethmac_reader_fifo_fifo_out_payload_length;
assign ethmac_reader_fifo_syncfifo_re = ethmac_reader_fifo_source_ready;

// synthesis translate_off
reg dummy_d_96;
// synthesis translate_on
always @(*) begin
	ethmac_reader_fifo_wrport_adr <= 1'd0;
	if (ethmac_reader_fifo_replace) begin
		ethmac_reader_fifo_wrport_adr <= (ethmac_reader_fifo_produce - 1'd1);
	end else begin
		ethmac_reader_fifo_wrport_adr <= ethmac_reader_fifo_produce;
	end
// synthesis translate_off
	dummy_d_96 <= dummy_s;
// synthesis translate_on
end
assign ethmac_reader_fifo_wrport_dat_w = ethmac_reader_fifo_syncfifo_din;
assign ethmac_reader_fifo_wrport_we = (ethmac_reader_fifo_syncfifo_we & (ethmac_reader_fifo_syncfifo_writable | ethmac_reader_fifo_replace));
assign ethmac_reader_fifo_do_read = (ethmac_reader_fifo_syncfifo_readable & ethmac_reader_fifo_syncfifo_re);
assign ethmac_reader_fifo_rdport_adr = ethmac_reader_fifo_consume;
assign ethmac_reader_fifo_syncfifo_dout = ethmac_reader_fifo_rdport_dat_r;
assign ethmac_reader_fifo_syncfifo_writable = (ethmac_reader_fifo_level != 2'd2);
assign ethmac_reader_fifo_syncfifo_readable = (ethmac_reader_fifo_level != 1'd0);

// synthesis translate_off
reg dummy_d_97;
// synthesis translate_on
always @(*) begin
	liteethmacsramreader_next_state <= 2'd0;
	ethmac_reader_done_trigger <= 1'd0;
	ethmac_reader_source_source_valid <= 1'd0;
	ethmac_reader_counter_reset <= 1'd0;
	ethmac_reader_counter_ce <= 1'd0;
	ethmac_reader_fifo_source_ready <= 1'd0;
	ethmac_reader_source_source_last <= 1'd0;
	liteethmacsramreader_next_state <= liteethmacsramreader_state;
	case (liteethmacsramreader_state)
		1'd1: begin
			if ((~ethmac_reader_last_d)) begin
				liteethmacsramreader_next_state <= 2'd2;
			end else begin
				liteethmacsramreader_next_state <= 2'd3;
			end
		end
		2'd2: begin
			ethmac_reader_source_source_valid <= 1'd1;
			ethmac_reader_source_source_last <= ethmac_reader_last;
			if (ethmac_reader_source_source_ready) begin
				ethmac_reader_counter_ce <= (~ethmac_reader_last);
				liteethmacsramreader_next_state <= 1'd1;
			end
		end
		2'd3: begin
			ethmac_reader_fifo_source_ready <= 1'd1;
			ethmac_reader_done_trigger <= 1'd1;
			liteethmacsramreader_next_state <= 1'd0;
		end
		default: begin
			ethmac_reader_counter_reset <= 1'd1;
			if (ethmac_reader_fifo_source_valid) begin
				liteethmacsramreader_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_97 <= dummy_s;
// synthesis translate_on
end
assign ethmac_ev_irq = (ethmac_writer_irq | ethmac_reader_irq);
assign ethmac_sram0_adr0 = ethmac_sram0_bus_adr0[8:0];
assign ethmac_sram0_bus_dat_r0 = ethmac_sram0_dat_r0;
assign ethmac_sram1_adr0 = ethmac_sram1_bus_adr0[8:0];
assign ethmac_sram1_bus_dat_r0 = ethmac_sram1_dat_r0;

// synthesis translate_off
reg dummy_d_98;
// synthesis translate_on
always @(*) begin
	ethmac_sram0_we <= 4'd0;
	ethmac_sram0_we[0] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[0]);
	ethmac_sram0_we[1] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[1]);
	ethmac_sram0_we[2] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[2]);
	ethmac_sram0_we[3] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[3]);
// synthesis translate_off
	dummy_d_98 <= dummy_s;
// synthesis translate_on
end
assign ethmac_sram0_adr1 = ethmac_sram0_bus_adr1[8:0];
assign ethmac_sram0_bus_dat_r1 = ethmac_sram0_dat_r1;
assign ethmac_sram0_dat_w = ethmac_sram0_bus_dat_w1;

// synthesis translate_off
reg dummy_d_99;
// synthesis translate_on
always @(*) begin
	ethmac_sram1_we <= 4'd0;
	ethmac_sram1_we[0] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[0]);
	ethmac_sram1_we[1] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[1]);
	ethmac_sram1_we[2] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[2]);
	ethmac_sram1_we[3] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[3]);
// synthesis translate_off
	dummy_d_99 <= dummy_s;
// synthesis translate_on
end
assign ethmac_sram1_adr1 = ethmac_sram1_bus_adr1[8:0];
assign ethmac_sram1_bus_dat_r1 = ethmac_sram1_dat_r1;
assign ethmac_sram1_dat_w = ethmac_sram1_bus_dat_w1;

// synthesis translate_off
reg dummy_d_100;
// synthesis translate_on
always @(*) begin
	ethmac_slave_sel <= 4'd0;
	ethmac_slave_sel[0] <= (ethmac_bus_adr[10:9] == 1'd0);
	ethmac_slave_sel[1] <= (ethmac_bus_adr[10:9] == 1'd1);
	ethmac_slave_sel[2] <= (ethmac_bus_adr[10:9] == 2'd2);
	ethmac_slave_sel[3] <= (ethmac_bus_adr[10:9] == 2'd3);
// synthesis translate_off
	dummy_d_100 <= dummy_s;
// synthesis translate_on
end
assign ethmac_sram0_bus_adr0 = ethmac_bus_adr;
assign ethmac_sram0_bus_dat_w0 = ethmac_bus_dat_w;
assign ethmac_sram0_bus_sel0 = ethmac_bus_sel;
assign ethmac_sram0_bus_stb0 = ethmac_bus_stb;
assign ethmac_sram0_bus_we0 = ethmac_bus_we;
assign ethmac_sram0_bus_cti0 = ethmac_bus_cti;
assign ethmac_sram0_bus_bte0 = ethmac_bus_bte;
assign ethmac_sram1_bus_adr0 = ethmac_bus_adr;
assign ethmac_sram1_bus_dat_w0 = ethmac_bus_dat_w;
assign ethmac_sram1_bus_sel0 = ethmac_bus_sel;
assign ethmac_sram1_bus_stb0 = ethmac_bus_stb;
assign ethmac_sram1_bus_we0 = ethmac_bus_we;
assign ethmac_sram1_bus_cti0 = ethmac_bus_cti;
assign ethmac_sram1_bus_bte0 = ethmac_bus_bte;
assign ethmac_sram0_bus_adr1 = ethmac_bus_adr;
assign ethmac_sram0_bus_dat_w1 = ethmac_bus_dat_w;
assign ethmac_sram0_bus_sel1 = ethmac_bus_sel;
assign ethmac_sram0_bus_stb1 = ethmac_bus_stb;
assign ethmac_sram0_bus_we1 = ethmac_bus_we;
assign ethmac_sram0_bus_cti1 = ethmac_bus_cti;
assign ethmac_sram0_bus_bte1 = ethmac_bus_bte;
assign ethmac_sram1_bus_adr1 = ethmac_bus_adr;
assign ethmac_sram1_bus_dat_w1 = ethmac_bus_dat_w;
assign ethmac_sram1_bus_sel1 = ethmac_bus_sel;
assign ethmac_sram1_bus_stb1 = ethmac_bus_stb;
assign ethmac_sram1_bus_we1 = ethmac_bus_we;
assign ethmac_sram1_bus_cti1 = ethmac_bus_cti;
assign ethmac_sram1_bus_bte1 = ethmac_bus_bte;
assign ethmac_sram0_bus_cyc0 = (ethmac_bus_cyc & ethmac_slave_sel[0]);
assign ethmac_sram1_bus_cyc0 = (ethmac_bus_cyc & ethmac_slave_sel[1]);
assign ethmac_sram0_bus_cyc1 = (ethmac_bus_cyc & ethmac_slave_sel[2]);
assign ethmac_sram1_bus_cyc1 = (ethmac_bus_cyc & ethmac_slave_sel[3]);
assign ethmac_bus_ack = (((ethmac_sram0_bus_ack0 | ethmac_sram1_bus_ack0) | ethmac_sram0_bus_ack1) | ethmac_sram1_bus_ack1);
assign ethmac_bus_err = (((ethmac_sram0_bus_err0 | ethmac_sram1_bus_err0) | ethmac_sram0_bus_err1) | ethmac_sram1_bus_err1);
assign ethmac_bus_dat_r = (((({32{ethmac_slave_sel_r[0]}} & ethmac_sram0_bus_dat_r0) | ({32{ethmac_slave_sel_r[1]}} & ethmac_sram1_bus_dat_r0)) | ({32{ethmac_slave_sel_r[2]}} & ethmac_sram0_bus_dat_r1)) | ({32{ethmac_slave_sel_r[3]}} & ethmac_sram1_bus_dat_r1));
assign netsoc_interface0_wb_sdram_adr = rhs_array_muxed36;
assign netsoc_interface0_wb_sdram_dat_w = rhs_array_muxed37;
assign netsoc_interface0_wb_sdram_sel = rhs_array_muxed38;
assign netsoc_interface0_wb_sdram_cyc = rhs_array_muxed39;
assign netsoc_interface0_wb_sdram_stb = rhs_array_muxed40;
assign netsoc_interface0_wb_sdram_we = rhs_array_muxed41;
assign netsoc_interface0_wb_sdram_cti = rhs_array_muxed42;
assign netsoc_interface0_wb_sdram_bte = rhs_array_muxed43;
assign netsoc_interface1_wb_sdram_dat_r = netsoc_interface0_wb_sdram_dat_r;
assign netsoc_interface1_wb_sdram_ack = (netsoc_interface0_wb_sdram_ack & (wb_sdram_con_grant == 1'd0));
assign netsoc_interface1_wb_sdram_err = (netsoc_interface0_wb_sdram_err & (wb_sdram_con_grant == 1'd0));
assign wb_sdram_con_request = {netsoc_interface1_wb_sdram_cyc};
assign wb_sdram_con_grant = 1'd0;
assign netsoc_shared_adr = rhs_array_muxed44;
assign netsoc_shared_dat_w = rhs_array_muxed45;
assign netsoc_shared_sel = rhs_array_muxed46;
assign netsoc_shared_cyc = rhs_array_muxed47;
assign netsoc_shared_stb = rhs_array_muxed48;
assign netsoc_shared_we = rhs_array_muxed49;
assign netsoc_shared_cti = rhs_array_muxed50;
assign netsoc_shared_bte = rhs_array_muxed51;
assign netsoc_netsoc_ibus_dat_r = netsoc_shared_dat_r;
assign netsoc_netsoc_dbus_dat_r = netsoc_shared_dat_r;
assign netsoc_netsoc_ibus_ack = (netsoc_shared_ack & (netsoc_grant == 1'd0));
assign netsoc_netsoc_dbus_ack = (netsoc_shared_ack & (netsoc_grant == 1'd1));
assign netsoc_netsoc_ibus_err = (netsoc_shared_err & (netsoc_grant == 1'd0));
assign netsoc_netsoc_dbus_err = (netsoc_shared_err & (netsoc_grant == 1'd1));
assign netsoc_request = {netsoc_netsoc_dbus_cyc, netsoc_netsoc_ibus_cyc};

// synthesis translate_off
reg dummy_d_101;
// synthesis translate_on
always @(*) begin
	netsoc_slave_sel <= 6'd0;
	netsoc_slave_sel[0] <= (netsoc_shared_adr[28:26] == 1'd0);
	netsoc_slave_sel[1] <= (netsoc_shared_adr[28:26] == 1'd1);
	netsoc_slave_sel[2] <= (netsoc_shared_adr[28:26] == 3'd6);
	netsoc_slave_sel[3] <= (netsoc_shared_adr[28:26] == 2'd2);
	netsoc_slave_sel[4] <= (netsoc_shared_adr[28:26] == 3'd4);
	netsoc_slave_sel[5] <= (netsoc_shared_adr[28:26] == 2'd3);
// synthesis translate_off
	dummy_d_101 <= dummy_s;
// synthesis translate_on
end
assign netsoc_netsoc_rom_bus_adr = netsoc_shared_adr;
assign netsoc_netsoc_rom_bus_dat_w = netsoc_shared_dat_w;
assign netsoc_netsoc_rom_bus_sel = netsoc_shared_sel;
assign netsoc_netsoc_rom_bus_stb = netsoc_shared_stb;
assign netsoc_netsoc_rom_bus_we = netsoc_shared_we;
assign netsoc_netsoc_rom_bus_cti = netsoc_shared_cti;
assign netsoc_netsoc_rom_bus_bte = netsoc_shared_bte;
assign netsoc_netsoc_sram_bus_adr = netsoc_shared_adr;
assign netsoc_netsoc_sram_bus_dat_w = netsoc_shared_dat_w;
assign netsoc_netsoc_sram_bus_sel = netsoc_shared_sel;
assign netsoc_netsoc_sram_bus_stb = netsoc_shared_stb;
assign netsoc_netsoc_sram_bus_we = netsoc_shared_we;
assign netsoc_netsoc_sram_bus_cti = netsoc_shared_cti;
assign netsoc_netsoc_sram_bus_bte = netsoc_shared_bte;
assign netsoc_netsoc_bus_wishbone_adr = netsoc_shared_adr;
assign netsoc_netsoc_bus_wishbone_dat_w = netsoc_shared_dat_w;
assign netsoc_netsoc_bus_wishbone_sel = netsoc_shared_sel;
assign netsoc_netsoc_bus_wishbone_stb = netsoc_shared_stb;
assign netsoc_netsoc_bus_wishbone_we = netsoc_shared_we;
assign netsoc_netsoc_bus_wishbone_cti = netsoc_shared_cti;
assign netsoc_netsoc_bus_wishbone_bte = netsoc_shared_bte;
assign netsoc_bus_adr = netsoc_shared_adr;
assign netsoc_bus_dat_w = netsoc_shared_dat_w;
assign netsoc_bus_sel = netsoc_shared_sel;
assign netsoc_bus_stb = netsoc_shared_stb;
assign netsoc_bus_we = netsoc_shared_we;
assign netsoc_bus_cti = netsoc_shared_cti;
assign netsoc_bus_bte = netsoc_shared_bte;
assign netsoc_interface1_wb_sdram_adr = netsoc_shared_adr;
assign netsoc_interface1_wb_sdram_dat_w = netsoc_shared_dat_w;
assign netsoc_interface1_wb_sdram_sel = netsoc_shared_sel;
assign netsoc_interface1_wb_sdram_stb = netsoc_shared_stb;
assign netsoc_interface1_wb_sdram_we = netsoc_shared_we;
assign netsoc_interface1_wb_sdram_cti = netsoc_shared_cti;
assign netsoc_interface1_wb_sdram_bte = netsoc_shared_bte;
assign ethmac_bus_adr = netsoc_shared_adr;
assign ethmac_bus_dat_w = netsoc_shared_dat_w;
assign ethmac_bus_sel = netsoc_shared_sel;
assign ethmac_bus_stb = netsoc_shared_stb;
assign ethmac_bus_we = netsoc_shared_we;
assign ethmac_bus_cti = netsoc_shared_cti;
assign ethmac_bus_bte = netsoc_shared_bte;
assign netsoc_netsoc_rom_bus_cyc = (netsoc_shared_cyc & netsoc_slave_sel[0]);
assign netsoc_netsoc_sram_bus_cyc = (netsoc_shared_cyc & netsoc_slave_sel[1]);
assign netsoc_netsoc_bus_wishbone_cyc = (netsoc_shared_cyc & netsoc_slave_sel[2]);
assign netsoc_bus_cyc = (netsoc_shared_cyc & netsoc_slave_sel[3]);
assign netsoc_interface1_wb_sdram_cyc = (netsoc_shared_cyc & netsoc_slave_sel[4]);
assign ethmac_bus_cyc = (netsoc_shared_cyc & netsoc_slave_sel[5]);
assign netsoc_shared_ack = (((((netsoc_netsoc_rom_bus_ack | netsoc_netsoc_sram_bus_ack) | netsoc_netsoc_bus_wishbone_ack) | netsoc_bus_ack) | netsoc_interface1_wb_sdram_ack) | ethmac_bus_ack);
assign netsoc_shared_err = (((((netsoc_netsoc_rom_bus_err | netsoc_netsoc_sram_bus_err) | netsoc_netsoc_bus_wishbone_err) | netsoc_bus_err) | netsoc_interface1_wb_sdram_err) | ethmac_bus_err);
assign netsoc_shared_dat_r = (((((({32{netsoc_slave_sel_r[0]}} & netsoc_netsoc_rom_bus_dat_r) | ({32{netsoc_slave_sel_r[1]}} & netsoc_netsoc_sram_bus_dat_r)) | ({32{netsoc_slave_sel_r[2]}} & netsoc_netsoc_bus_wishbone_dat_r)) | ({32{netsoc_slave_sel_r[3]}} & netsoc_bus_dat_r)) | ({32{netsoc_slave_sel_r[4]}} & netsoc_interface1_wb_sdram_dat_r)) | ({32{netsoc_slave_sel_r[5]}} & ethmac_bus_dat_r));
assign netsoc_csrbank0_sel = (netsoc_interface0_bank_bus_adr[13:9] == 4'd14);
assign netsoc_csrbank0_sram_writer_slot_r = netsoc_interface0_bank_bus_dat_w[0];
assign netsoc_csrbank0_sram_writer_slot_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 1'd0));
assign netsoc_csrbank0_sram_writer_length3_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_sram_writer_length3_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 1'd1));
assign netsoc_csrbank0_sram_writer_length2_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_sram_writer_length2_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 2'd2));
assign netsoc_csrbank0_sram_writer_length1_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_sram_writer_length1_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 2'd3));
assign netsoc_csrbank0_sram_writer_length0_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_sram_writer_length0_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 3'd4));
assign netsoc_csrbank0_sram_writer_errors3_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_sram_writer_errors3_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 3'd5));
assign netsoc_csrbank0_sram_writer_errors2_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_sram_writer_errors2_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 3'd6));
assign netsoc_csrbank0_sram_writer_errors1_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_sram_writer_errors1_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 3'd7));
assign netsoc_csrbank0_sram_writer_errors0_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_sram_writer_errors0_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 4'd8));
assign ethmac_writer_status_r = netsoc_interface0_bank_bus_dat_w[0];
assign ethmac_writer_status_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 4'd9));
assign ethmac_writer_pending_r = netsoc_interface0_bank_bus_dat_w[0];
assign ethmac_writer_pending_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 4'd10));
assign netsoc_csrbank0_sram_writer_ev_enable0_r = netsoc_interface0_bank_bus_dat_w[0];
assign netsoc_csrbank0_sram_writer_ev_enable0_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 4'd11));
assign ethmac_reader_start_r = netsoc_interface0_bank_bus_dat_w[0];
assign ethmac_reader_start_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 4'd12));
assign netsoc_csrbank0_sram_reader_ready_r = netsoc_interface0_bank_bus_dat_w[0];
assign netsoc_csrbank0_sram_reader_ready_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 4'd13));
assign netsoc_csrbank0_sram_reader_level_r = netsoc_interface0_bank_bus_dat_w[1:0];
assign netsoc_csrbank0_sram_reader_level_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 4'd14));
assign netsoc_csrbank0_sram_reader_slot0_r = netsoc_interface0_bank_bus_dat_w[0];
assign netsoc_csrbank0_sram_reader_slot0_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 4'd15));
assign netsoc_csrbank0_sram_reader_length1_r = netsoc_interface0_bank_bus_dat_w[2:0];
assign netsoc_csrbank0_sram_reader_length1_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd16));
assign netsoc_csrbank0_sram_reader_length0_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_sram_reader_length0_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd17));
assign ethmac_reader_eventmanager_status_r = netsoc_interface0_bank_bus_dat_w[0];
assign ethmac_reader_eventmanager_status_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd18));
assign ethmac_reader_eventmanager_pending_r = netsoc_interface0_bank_bus_dat_w[0];
assign ethmac_reader_eventmanager_pending_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd19));
assign netsoc_csrbank0_sram_reader_ev_enable0_r = netsoc_interface0_bank_bus_dat_w[0];
assign netsoc_csrbank0_sram_reader_ev_enable0_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd20));
assign netsoc_csrbank0_preamble_crc_r = netsoc_interface0_bank_bus_dat_w[0];
assign netsoc_csrbank0_preamble_crc_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd21));
assign netsoc_csrbank0_preamble_errors3_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_preamble_errors3_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd22));
assign netsoc_csrbank0_preamble_errors2_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_preamble_errors2_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd23));
assign netsoc_csrbank0_preamble_errors1_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_preamble_errors1_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd24));
assign netsoc_csrbank0_preamble_errors0_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_preamble_errors0_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd25));
assign netsoc_csrbank0_crc_errors3_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_crc_errors3_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd26));
assign netsoc_csrbank0_crc_errors2_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_crc_errors2_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd27));
assign netsoc_csrbank0_crc_errors1_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_crc_errors1_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd28));
assign netsoc_csrbank0_crc_errors0_r = netsoc_interface0_bank_bus_dat_w[7:0];
assign netsoc_csrbank0_crc_errors0_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[4:0] == 5'd29));
assign netsoc_csrbank0_sram_writer_slot_w = ethmac_writer_slot_status;
assign netsoc_csrbank0_sram_writer_length3_w = ethmac_writer_length_status[31:24];
assign netsoc_csrbank0_sram_writer_length2_w = ethmac_writer_length_status[23:16];
assign netsoc_csrbank0_sram_writer_length1_w = ethmac_writer_length_status[15:8];
assign netsoc_csrbank0_sram_writer_length0_w = ethmac_writer_length_status[7:0];
assign netsoc_csrbank0_sram_writer_errors3_w = ethmac_writer_errors_status[31:24];
assign netsoc_csrbank0_sram_writer_errors2_w = ethmac_writer_errors_status[23:16];
assign netsoc_csrbank0_sram_writer_errors1_w = ethmac_writer_errors_status[15:8];
assign netsoc_csrbank0_sram_writer_errors0_w = ethmac_writer_errors_status[7:0];
assign ethmac_writer_storage = ethmac_writer_storage_full;
assign netsoc_csrbank0_sram_writer_ev_enable0_w = ethmac_writer_storage_full;
assign netsoc_csrbank0_sram_reader_ready_w = ethmac_reader_ready_status;
assign netsoc_csrbank0_sram_reader_level_w = ethmac_reader_level_status[1:0];
assign ethmac_reader_slot_storage = ethmac_reader_slot_storage_full;
assign netsoc_csrbank0_sram_reader_slot0_w = ethmac_reader_slot_storage_full;
assign ethmac_reader_length_storage = ethmac_reader_length_storage_full[10:0];
assign netsoc_csrbank0_sram_reader_length1_w = ethmac_reader_length_storage_full[10:8];
assign netsoc_csrbank0_sram_reader_length0_w = ethmac_reader_length_storage_full[7:0];
assign ethmac_reader_eventmanager_storage = ethmac_reader_eventmanager_storage_full;
assign netsoc_csrbank0_sram_reader_ev_enable0_w = ethmac_reader_eventmanager_storage_full;
assign netsoc_csrbank0_preamble_crc_w = ethmac_preamble_crc_status;
assign netsoc_csrbank0_preamble_errors3_w = ethmac_preamble_errors_status[31:24];
assign netsoc_csrbank0_preamble_errors2_w = ethmac_preamble_errors_status[23:16];
assign netsoc_csrbank0_preamble_errors1_w = ethmac_preamble_errors_status[15:8];
assign netsoc_csrbank0_preamble_errors0_w = ethmac_preamble_errors_status[7:0];
assign netsoc_csrbank0_crc_errors3_w = ethmac_crc_errors_status[31:24];
assign netsoc_csrbank0_crc_errors2_w = ethmac_crc_errors_status[23:16];
assign netsoc_csrbank0_crc_errors1_w = ethmac_crc_errors_status[15:8];
assign netsoc_csrbank0_crc_errors0_w = ethmac_crc_errors_status[7:0];
assign netsoc_csrbank1_sel = (netsoc_interface1_bank_bus_adr[13:9] == 4'd13);
assign netsoc_csrbank1_mode_detection_mode_r = netsoc_interface1_bank_bus_dat_w[0];
assign netsoc_csrbank1_mode_detection_mode_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[1:0] == 1'd0));
assign netsoc_csrbank1_crg_reset0_r = netsoc_interface1_bank_bus_dat_w[0];
assign netsoc_csrbank1_crg_reset0_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[1:0] == 1'd1));
assign netsoc_csrbank1_mdio_w0_r = netsoc_interface1_bank_bus_dat_w[2:0];
assign netsoc_csrbank1_mdio_w0_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[1:0] == 2'd2));
assign netsoc_csrbank1_mdio_r_r = netsoc_interface1_bank_bus_dat_w[0];
assign netsoc_csrbank1_mdio_r_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[1:0] == 2'd3));
assign netsoc_csrbank1_mode_detection_mode_w = ethphy_mode_status;
assign ethphy_reset_storage = ethphy_reset_storage_full;
assign netsoc_csrbank1_crg_reset0_w = ethphy_reset_storage_full;
assign ethphy_storage = ethphy_storage_full[2:0];
assign netsoc_csrbank1_mdio_w0_w = ethphy_storage_full[2:0];
assign netsoc_csrbank1_mdio_r_w = ethphy_status;
assign netsoc_sel = (netsoc_sram_bus_adr[13:9] == 2'd3);

// synthesis translate_off
reg dummy_d_102;
// synthesis translate_on
always @(*) begin
	netsoc_sram_bus_dat_r <= 8'd0;
	if (netsoc_sel_r) begin
		netsoc_sram_bus_dat_r <= netsoc_dat_r;
	end
// synthesis translate_off
	dummy_d_102 <= dummy_s;
// synthesis translate_on
end
assign netsoc_adr = netsoc_sram_bus_adr[2:0];
assign netsoc_csrbank2_sel = (netsoc_interface2_bank_bus_adr[13:9] == 4'd12);
assign netsoc_csrbank2_dna_id7_r = netsoc_interface2_bank_bus_dat_w[0];
assign netsoc_csrbank2_dna_id7_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 1'd0));
assign netsoc_csrbank2_dna_id6_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_dna_id6_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 1'd1));
assign netsoc_csrbank2_dna_id5_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_dna_id5_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 2'd2));
assign netsoc_csrbank2_dna_id4_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_dna_id4_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 2'd3));
assign netsoc_csrbank2_dna_id3_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_dna_id3_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 3'd4));
assign netsoc_csrbank2_dna_id2_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_dna_id2_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 3'd5));
assign netsoc_csrbank2_dna_id1_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_dna_id1_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 3'd6));
assign netsoc_csrbank2_dna_id0_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_dna_id0_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 3'd7));
assign netsoc_csrbank2_git_commit19_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit19_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 4'd8));
assign netsoc_csrbank2_git_commit18_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit18_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 4'd9));
assign netsoc_csrbank2_git_commit17_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit17_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 4'd10));
assign netsoc_csrbank2_git_commit16_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit16_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 4'd11));
assign netsoc_csrbank2_git_commit15_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit15_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 4'd12));
assign netsoc_csrbank2_git_commit14_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit14_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 4'd13));
assign netsoc_csrbank2_git_commit13_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit13_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 4'd14));
assign netsoc_csrbank2_git_commit12_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit12_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 4'd15));
assign netsoc_csrbank2_git_commit11_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit11_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd16));
assign netsoc_csrbank2_git_commit10_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit10_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd17));
assign netsoc_csrbank2_git_commit9_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit9_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd18));
assign netsoc_csrbank2_git_commit8_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit8_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd19));
assign netsoc_csrbank2_git_commit7_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit7_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd20));
assign netsoc_csrbank2_git_commit6_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit6_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd21));
assign netsoc_csrbank2_git_commit5_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit5_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd22));
assign netsoc_csrbank2_git_commit4_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit4_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd23));
assign netsoc_csrbank2_git_commit3_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit3_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd24));
assign netsoc_csrbank2_git_commit2_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit2_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd25));
assign netsoc_csrbank2_git_commit1_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit1_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd26));
assign netsoc_csrbank2_git_commit0_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_git_commit0_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd27));
assign netsoc_csrbank2_platform_platform7_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_platform7_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd28));
assign netsoc_csrbank2_platform_platform6_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_platform6_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd29));
assign netsoc_csrbank2_platform_platform5_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_platform5_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd30));
assign netsoc_csrbank2_platform_platform4_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_platform4_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 5'd31));
assign netsoc_csrbank2_platform_platform3_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_platform3_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 6'd32));
assign netsoc_csrbank2_platform_platform2_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_platform2_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 6'd33));
assign netsoc_csrbank2_platform_platform1_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_platform1_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 6'd34));
assign netsoc_csrbank2_platform_platform0_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_platform0_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 6'd35));
assign netsoc_csrbank2_platform_target7_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_target7_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 6'd36));
assign netsoc_csrbank2_platform_target6_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_target6_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 6'd37));
assign netsoc_csrbank2_platform_target5_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_target5_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 6'd38));
assign netsoc_csrbank2_platform_target4_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_target4_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 6'd39));
assign netsoc_csrbank2_platform_target3_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_target3_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 6'd40));
assign netsoc_csrbank2_platform_target2_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_target2_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 6'd41));
assign netsoc_csrbank2_platform_target1_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_target1_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 6'd42));
assign netsoc_csrbank2_platform_target0_r = netsoc_interface2_bank_bus_dat_w[7:0];
assign netsoc_csrbank2_platform_target0_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[5:0] == 6'd43));
assign netsoc_csrbank2_dna_id7_w = netsoc_dna_status[56];
assign netsoc_csrbank2_dna_id6_w = netsoc_dna_status[55:48];
assign netsoc_csrbank2_dna_id5_w = netsoc_dna_status[47:40];
assign netsoc_csrbank2_dna_id4_w = netsoc_dna_status[39:32];
assign netsoc_csrbank2_dna_id3_w = netsoc_dna_status[31:24];
assign netsoc_csrbank2_dna_id2_w = netsoc_dna_status[23:16];
assign netsoc_csrbank2_dna_id1_w = netsoc_dna_status[15:8];
assign netsoc_csrbank2_dna_id0_w = netsoc_dna_status[7:0];
assign netsoc_csrbank2_git_commit19_w = netsoc_git_status[159:152];
assign netsoc_csrbank2_git_commit18_w = netsoc_git_status[151:144];
assign netsoc_csrbank2_git_commit17_w = netsoc_git_status[143:136];
assign netsoc_csrbank2_git_commit16_w = netsoc_git_status[135:128];
assign netsoc_csrbank2_git_commit15_w = netsoc_git_status[127:120];
assign netsoc_csrbank2_git_commit14_w = netsoc_git_status[119:112];
assign netsoc_csrbank2_git_commit13_w = netsoc_git_status[111:104];
assign netsoc_csrbank2_git_commit12_w = netsoc_git_status[103:96];
assign netsoc_csrbank2_git_commit11_w = netsoc_git_status[95:88];
assign netsoc_csrbank2_git_commit10_w = netsoc_git_status[87:80];
assign netsoc_csrbank2_git_commit9_w = netsoc_git_status[79:72];
assign netsoc_csrbank2_git_commit8_w = netsoc_git_status[71:64];
assign netsoc_csrbank2_git_commit7_w = netsoc_git_status[63:56];
assign netsoc_csrbank2_git_commit6_w = netsoc_git_status[55:48];
assign netsoc_csrbank2_git_commit5_w = netsoc_git_status[47:40];
assign netsoc_csrbank2_git_commit4_w = netsoc_git_status[39:32];
assign netsoc_csrbank2_git_commit3_w = netsoc_git_status[31:24];
assign netsoc_csrbank2_git_commit2_w = netsoc_git_status[23:16];
assign netsoc_csrbank2_git_commit1_w = netsoc_git_status[15:8];
assign netsoc_csrbank2_git_commit0_w = netsoc_git_status[7:0];
assign netsoc_csrbank2_platform_platform7_w = netsoc_platform_status[63:56];
assign netsoc_csrbank2_platform_platform6_w = netsoc_platform_status[55:48];
assign netsoc_csrbank2_platform_platform5_w = netsoc_platform_status[47:40];
assign netsoc_csrbank2_platform_platform4_w = netsoc_platform_status[39:32];
assign netsoc_csrbank2_platform_platform3_w = netsoc_platform_status[31:24];
assign netsoc_csrbank2_platform_platform2_w = netsoc_platform_status[23:16];
assign netsoc_csrbank2_platform_platform1_w = netsoc_platform_status[15:8];
assign netsoc_csrbank2_platform_platform0_w = netsoc_platform_status[7:0];
assign netsoc_csrbank2_platform_target7_w = netsoc_target_status[63:56];
assign netsoc_csrbank2_platform_target6_w = netsoc_target_status[55:48];
assign netsoc_csrbank2_platform_target5_w = netsoc_target_status[47:40];
assign netsoc_csrbank2_platform_target4_w = netsoc_target_status[39:32];
assign netsoc_csrbank2_platform_target3_w = netsoc_target_status[31:24];
assign netsoc_csrbank2_platform_target2_w = netsoc_target_status[23:16];
assign netsoc_csrbank2_platform_target1_w = netsoc_target_status[15:8];
assign netsoc_csrbank2_platform_target0_w = netsoc_target_status[7:0];
assign netsoc_csrbank3_sel = (netsoc_interface3_bank_bus_adr[13:9] == 4'd8);
assign netsoc_csrbank3_dfii_control0_r = netsoc_interface3_bank_bus_dat_w[3:0];
assign netsoc_csrbank3_dfii_control0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 1'd0));
assign netsoc_csrbank3_dfii_pi0_command0_r = netsoc_interface3_bank_bus_dat_w[5:0];
assign netsoc_csrbank3_dfii_pi0_command0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 1'd1));
assign netsoc_sdram_phaseinjector0_command_issue_r = netsoc_interface3_bank_bus_dat_w[0];
assign netsoc_sdram_phaseinjector0_command_issue_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 2'd2));
assign netsoc_csrbank3_dfii_pi0_address1_r = netsoc_interface3_bank_bus_dat_w[4:0];
assign netsoc_csrbank3_dfii_pi0_address1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 2'd3));
assign netsoc_csrbank3_dfii_pi0_address0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi0_address0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 3'd4));
assign netsoc_csrbank3_dfii_pi0_baddress0_r = netsoc_interface3_bank_bus_dat_w[2:0];
assign netsoc_csrbank3_dfii_pi0_baddress0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 3'd5));
assign netsoc_csrbank3_dfii_pi0_wrdata3_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi0_wrdata3_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 3'd6));
assign netsoc_csrbank3_dfii_pi0_wrdata2_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi0_wrdata2_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 3'd7));
assign netsoc_csrbank3_dfii_pi0_wrdata1_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi0_wrdata1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 4'd8));
assign netsoc_csrbank3_dfii_pi0_wrdata0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi0_wrdata0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 4'd9));
assign netsoc_csrbank3_dfii_pi0_rddata3_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi0_rddata3_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 4'd10));
assign netsoc_csrbank3_dfii_pi0_rddata2_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi0_rddata2_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 4'd11));
assign netsoc_csrbank3_dfii_pi0_rddata1_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi0_rddata1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 4'd12));
assign netsoc_csrbank3_dfii_pi0_rddata0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi0_rddata0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 4'd13));
assign netsoc_csrbank3_dfii_pi1_command0_r = netsoc_interface3_bank_bus_dat_w[5:0];
assign netsoc_csrbank3_dfii_pi1_command0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 4'd14));
assign netsoc_sdram_phaseinjector1_command_issue_r = netsoc_interface3_bank_bus_dat_w[0];
assign netsoc_sdram_phaseinjector1_command_issue_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 4'd15));
assign netsoc_csrbank3_dfii_pi1_address1_r = netsoc_interface3_bank_bus_dat_w[4:0];
assign netsoc_csrbank3_dfii_pi1_address1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd16));
assign netsoc_csrbank3_dfii_pi1_address0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi1_address0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd17));
assign netsoc_csrbank3_dfii_pi1_baddress0_r = netsoc_interface3_bank_bus_dat_w[2:0];
assign netsoc_csrbank3_dfii_pi1_baddress0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd18));
assign netsoc_csrbank3_dfii_pi1_wrdata3_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi1_wrdata3_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd19));
assign netsoc_csrbank3_dfii_pi1_wrdata2_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi1_wrdata2_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd20));
assign netsoc_csrbank3_dfii_pi1_wrdata1_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi1_wrdata1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd21));
assign netsoc_csrbank3_dfii_pi1_wrdata0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi1_wrdata0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd22));
assign netsoc_csrbank3_dfii_pi1_rddata3_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi1_rddata3_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd23));
assign netsoc_csrbank3_dfii_pi1_rddata2_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi1_rddata2_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd24));
assign netsoc_csrbank3_dfii_pi1_rddata1_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi1_rddata1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd25));
assign netsoc_csrbank3_dfii_pi1_rddata0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_dfii_pi1_rddata0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd26));
assign netsoc_sdram_bandwidth_update_r = netsoc_interface3_bank_bus_dat_w[0];
assign netsoc_sdram_bandwidth_update_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd27));
assign netsoc_csrbank3_controller_bandwidth_nreads2_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_controller_bandwidth_nreads2_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd28));
assign netsoc_csrbank3_controller_bandwidth_nreads1_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_controller_bandwidth_nreads1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd29));
assign netsoc_csrbank3_controller_bandwidth_nreads0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_controller_bandwidth_nreads0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd30));
assign netsoc_csrbank3_controller_bandwidth_nwrites2_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_controller_bandwidth_nwrites2_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 5'd31));
assign netsoc_csrbank3_controller_bandwidth_nwrites1_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_controller_bandwidth_nwrites1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 6'd32));
assign netsoc_csrbank3_controller_bandwidth_nwrites0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_controller_bandwidth_nwrites0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 6'd33));
assign netsoc_csrbank3_controller_bandwidth_data_width_r = netsoc_interface3_bank_bus_dat_w[6:0];
assign netsoc_csrbank3_controller_bandwidth_data_width_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[5:0] == 6'd34));
assign netsoc_sdram_storage = netsoc_sdram_storage_full[3:0];
assign netsoc_csrbank3_dfii_control0_w = netsoc_sdram_storage_full[3:0];
assign netsoc_sdram_phaseinjector0_command_storage = netsoc_sdram_phaseinjector0_command_storage_full[5:0];
assign netsoc_csrbank3_dfii_pi0_command0_w = netsoc_sdram_phaseinjector0_command_storage_full[5:0];
assign netsoc_sdram_phaseinjector0_address_storage = netsoc_sdram_phaseinjector0_address_storage_full[12:0];
assign netsoc_csrbank3_dfii_pi0_address1_w = netsoc_sdram_phaseinjector0_address_storage_full[12:8];
assign netsoc_csrbank3_dfii_pi0_address0_w = netsoc_sdram_phaseinjector0_address_storage_full[7:0];
assign netsoc_sdram_phaseinjector0_baddress_storage = netsoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign netsoc_csrbank3_dfii_pi0_baddress0_w = netsoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign netsoc_sdram_phaseinjector0_wrdata_storage = netsoc_sdram_phaseinjector0_wrdata_storage_full[31:0];
assign netsoc_csrbank3_dfii_pi0_wrdata3_w = netsoc_sdram_phaseinjector0_wrdata_storage_full[31:24];
assign netsoc_csrbank3_dfii_pi0_wrdata2_w = netsoc_sdram_phaseinjector0_wrdata_storage_full[23:16];
assign netsoc_csrbank3_dfii_pi0_wrdata1_w = netsoc_sdram_phaseinjector0_wrdata_storage_full[15:8];
assign netsoc_csrbank3_dfii_pi0_wrdata0_w = netsoc_sdram_phaseinjector0_wrdata_storage_full[7:0];
assign netsoc_csrbank3_dfii_pi0_rddata3_w = netsoc_sdram_phaseinjector0_status[31:24];
assign netsoc_csrbank3_dfii_pi0_rddata2_w = netsoc_sdram_phaseinjector0_status[23:16];
assign netsoc_csrbank3_dfii_pi0_rddata1_w = netsoc_sdram_phaseinjector0_status[15:8];
assign netsoc_csrbank3_dfii_pi0_rddata0_w = netsoc_sdram_phaseinjector0_status[7:0];
assign netsoc_sdram_phaseinjector1_command_storage = netsoc_sdram_phaseinjector1_command_storage_full[5:0];
assign netsoc_csrbank3_dfii_pi1_command0_w = netsoc_sdram_phaseinjector1_command_storage_full[5:0];
assign netsoc_sdram_phaseinjector1_address_storage = netsoc_sdram_phaseinjector1_address_storage_full[12:0];
assign netsoc_csrbank3_dfii_pi1_address1_w = netsoc_sdram_phaseinjector1_address_storage_full[12:8];
assign netsoc_csrbank3_dfii_pi1_address0_w = netsoc_sdram_phaseinjector1_address_storage_full[7:0];
assign netsoc_sdram_phaseinjector1_baddress_storage = netsoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign netsoc_csrbank3_dfii_pi1_baddress0_w = netsoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign netsoc_sdram_phaseinjector1_wrdata_storage = netsoc_sdram_phaseinjector1_wrdata_storage_full[31:0];
assign netsoc_csrbank3_dfii_pi1_wrdata3_w = netsoc_sdram_phaseinjector1_wrdata_storage_full[31:24];
assign netsoc_csrbank3_dfii_pi1_wrdata2_w = netsoc_sdram_phaseinjector1_wrdata_storage_full[23:16];
assign netsoc_csrbank3_dfii_pi1_wrdata1_w = netsoc_sdram_phaseinjector1_wrdata_storage_full[15:8];
assign netsoc_csrbank3_dfii_pi1_wrdata0_w = netsoc_sdram_phaseinjector1_wrdata_storage_full[7:0];
assign netsoc_csrbank3_dfii_pi1_rddata3_w = netsoc_sdram_phaseinjector1_status[31:24];
assign netsoc_csrbank3_dfii_pi1_rddata2_w = netsoc_sdram_phaseinjector1_status[23:16];
assign netsoc_csrbank3_dfii_pi1_rddata1_w = netsoc_sdram_phaseinjector1_status[15:8];
assign netsoc_csrbank3_dfii_pi1_rddata0_w = netsoc_sdram_phaseinjector1_status[7:0];
assign netsoc_csrbank3_controller_bandwidth_nreads2_w = netsoc_sdram_bandwidth_nreads_status[23:16];
assign netsoc_csrbank3_controller_bandwidth_nreads1_w = netsoc_sdram_bandwidth_nreads_status[15:8];
assign netsoc_csrbank3_controller_bandwidth_nreads0_w = netsoc_sdram_bandwidth_nreads_status[7:0];
assign netsoc_csrbank3_controller_bandwidth_nwrites2_w = netsoc_sdram_bandwidth_nwrites_status[23:16];
assign netsoc_csrbank3_controller_bandwidth_nwrites1_w = netsoc_sdram_bandwidth_nwrites_status[15:8];
assign netsoc_csrbank3_controller_bandwidth_nwrites0_w = netsoc_sdram_bandwidth_nwrites_status[7:0];
assign netsoc_csrbank3_controller_bandwidth_data_width_w = netsoc_sdram_bandwidth_data_width_status[6:0];
assign netsoc_csrbank4_sel = (netsoc_interface4_bank_bus_adr[13:9] == 4'd10);
assign netsoc_csrbank4_bitbang0_r = netsoc_interface4_bank_bus_dat_w[3:0];
assign netsoc_csrbank4_bitbang0_re = ((netsoc_csrbank4_sel & netsoc_interface4_bank_bus_we) & (netsoc_interface4_bank_bus_adr[1:0] == 1'd0));
assign netsoc_csrbank4_miso_r = netsoc_interface4_bank_bus_dat_w[0];
assign netsoc_csrbank4_miso_re = ((netsoc_csrbank4_sel & netsoc_interface4_bank_bus_we) & (netsoc_interface4_bank_bus_adr[1:0] == 1'd1));
assign netsoc_csrbank4_bitbang_en0_r = netsoc_interface4_bank_bus_dat_w[0];
assign netsoc_csrbank4_bitbang_en0_re = ((netsoc_csrbank4_sel & netsoc_interface4_bank_bus_we) & (netsoc_interface4_bank_bus_adr[1:0] == 2'd2));
assign netsoc_bitbang_storage = netsoc_bitbang_storage_full[3:0];
assign netsoc_csrbank4_bitbang0_w = netsoc_bitbang_storage_full[3:0];
assign netsoc_csrbank4_miso_w = netsoc_status;
assign netsoc_bitbang_en_storage = netsoc_bitbang_en_storage_full;
assign netsoc_csrbank4_bitbang_en0_w = netsoc_bitbang_en_storage_full;
assign netsoc_csrbank5_sel = (netsoc_interface5_bank_bus_adr[13:9] == 3'd4);
assign netsoc_csrbank5_load3_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_load3_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 1'd0));
assign netsoc_csrbank5_load2_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_load2_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 1'd1));
assign netsoc_csrbank5_load1_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_load1_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 2'd2));
assign netsoc_csrbank5_load0_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_load0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 2'd3));
assign netsoc_csrbank5_reload3_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_reload3_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 3'd4));
assign netsoc_csrbank5_reload2_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_reload2_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 3'd5));
assign netsoc_csrbank5_reload1_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_reload1_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 3'd6));
assign netsoc_csrbank5_reload0_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_reload0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 3'd7));
assign netsoc_csrbank5_en0_r = netsoc_interface5_bank_bus_dat_w[0];
assign netsoc_csrbank5_en0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 4'd8));
assign netsoc_netsoc_timer0_update_value_r = netsoc_interface5_bank_bus_dat_w[0];
assign netsoc_netsoc_timer0_update_value_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 4'd9));
assign netsoc_csrbank5_value3_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_value3_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 4'd10));
assign netsoc_csrbank5_value2_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_value2_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 4'd11));
assign netsoc_csrbank5_value1_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_value1_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 4'd12));
assign netsoc_csrbank5_value0_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_value0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 4'd13));
assign netsoc_netsoc_timer0_eventmanager_status_r = netsoc_interface5_bank_bus_dat_w[0];
assign netsoc_netsoc_timer0_eventmanager_status_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 4'd14));
assign netsoc_netsoc_timer0_eventmanager_pending_r = netsoc_interface5_bank_bus_dat_w[0];
assign netsoc_netsoc_timer0_eventmanager_pending_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 4'd15));
assign netsoc_csrbank5_ev_enable0_r = netsoc_interface5_bank_bus_dat_w[0];
assign netsoc_csrbank5_ev_enable0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[4:0] == 5'd16));
assign netsoc_netsoc_timer0_load_storage = netsoc_netsoc_timer0_load_storage_full[31:0];
assign netsoc_csrbank5_load3_w = netsoc_netsoc_timer0_load_storage_full[31:24];
assign netsoc_csrbank5_load2_w = netsoc_netsoc_timer0_load_storage_full[23:16];
assign netsoc_csrbank5_load1_w = netsoc_netsoc_timer0_load_storage_full[15:8];
assign netsoc_csrbank5_load0_w = netsoc_netsoc_timer0_load_storage_full[7:0];
assign netsoc_netsoc_timer0_reload_storage = netsoc_netsoc_timer0_reload_storage_full[31:0];
assign netsoc_csrbank5_reload3_w = netsoc_netsoc_timer0_reload_storage_full[31:24];
assign netsoc_csrbank5_reload2_w = netsoc_netsoc_timer0_reload_storage_full[23:16];
assign netsoc_csrbank5_reload1_w = netsoc_netsoc_timer0_reload_storage_full[15:8];
assign netsoc_csrbank5_reload0_w = netsoc_netsoc_timer0_reload_storage_full[7:0];
assign netsoc_netsoc_timer0_en_storage = netsoc_netsoc_timer0_en_storage_full;
assign netsoc_csrbank5_en0_w = netsoc_netsoc_timer0_en_storage_full;
assign netsoc_csrbank5_value3_w = netsoc_netsoc_timer0_value_status[31:24];
assign netsoc_csrbank5_value2_w = netsoc_netsoc_timer0_value_status[23:16];
assign netsoc_csrbank5_value1_w = netsoc_netsoc_timer0_value_status[15:8];
assign netsoc_csrbank5_value0_w = netsoc_netsoc_timer0_value_status[7:0];
assign netsoc_netsoc_timer0_eventmanager_storage = netsoc_netsoc_timer0_eventmanager_storage_full;
assign netsoc_csrbank5_ev_enable0_w = netsoc_netsoc_timer0_eventmanager_storage_full;
assign netsoc_csrbank6_sel = (netsoc_interface6_bank_bus_adr[13:9] == 2'd2);
assign netsoc_netsoc_uart_rxtx_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_netsoc_uart_rxtx_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[2:0] == 1'd0));
assign netsoc_csrbank6_txfull_r = netsoc_interface6_bank_bus_dat_w[0];
assign netsoc_csrbank6_txfull_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[2:0] == 1'd1));
assign netsoc_csrbank6_rxempty_r = netsoc_interface6_bank_bus_dat_w[0];
assign netsoc_csrbank6_rxempty_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[2:0] == 2'd2));
assign netsoc_netsoc_uart_status_r = netsoc_interface6_bank_bus_dat_w[1:0];
assign netsoc_netsoc_uart_status_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[2:0] == 2'd3));
assign netsoc_netsoc_uart_pending_r = netsoc_interface6_bank_bus_dat_w[1:0];
assign netsoc_netsoc_uart_pending_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[2:0] == 3'd4));
assign netsoc_csrbank6_ev_enable0_r = netsoc_interface6_bank_bus_dat_w[1:0];
assign netsoc_csrbank6_ev_enable0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[2:0] == 3'd5));
assign netsoc_csrbank6_txfull_w = netsoc_netsoc_uart_txfull_status;
assign netsoc_csrbank6_rxempty_w = netsoc_netsoc_uart_rxempty_status;
assign netsoc_netsoc_uart_storage = netsoc_netsoc_uart_storage_full[1:0];
assign netsoc_csrbank6_ev_enable0_w = netsoc_netsoc_uart_storage_full[1:0];
assign netsoc_csrbank7_sel = (netsoc_interface7_bank_bus_adr[13:9] == 1'd1);
assign netsoc_csrbank7_tuning_word3_r = netsoc_interface7_bank_bus_dat_w[7:0];
assign netsoc_csrbank7_tuning_word3_re = ((netsoc_csrbank7_sel & netsoc_interface7_bank_bus_we) & (netsoc_interface7_bank_bus_adr[1:0] == 1'd0));
assign netsoc_csrbank7_tuning_word2_r = netsoc_interface7_bank_bus_dat_w[7:0];
assign netsoc_csrbank7_tuning_word2_re = ((netsoc_csrbank7_sel & netsoc_interface7_bank_bus_we) & (netsoc_interface7_bank_bus_adr[1:0] == 1'd1));
assign netsoc_csrbank7_tuning_word1_r = netsoc_interface7_bank_bus_dat_w[7:0];
assign netsoc_csrbank7_tuning_word1_re = ((netsoc_csrbank7_sel & netsoc_interface7_bank_bus_we) & (netsoc_interface7_bank_bus_adr[1:0] == 2'd2));
assign netsoc_csrbank7_tuning_word0_r = netsoc_interface7_bank_bus_dat_w[7:0];
assign netsoc_csrbank7_tuning_word0_re = ((netsoc_csrbank7_sel & netsoc_interface7_bank_bus_we) & (netsoc_interface7_bank_bus_adr[1:0] == 2'd3));
assign netsoc_netsoc_uart_phy_storage = netsoc_netsoc_uart_phy_storage_full[31:0];
assign netsoc_csrbank7_tuning_word3_w = netsoc_netsoc_uart_phy_storage_full[31:24];
assign netsoc_csrbank7_tuning_word2_w = netsoc_netsoc_uart_phy_storage_full[23:16];
assign netsoc_csrbank7_tuning_word1_w = netsoc_netsoc_uart_phy_storage_full[15:8];
assign netsoc_csrbank7_tuning_word0_w = netsoc_netsoc_uart_phy_storage_full[7:0];
assign netsoc_interface0_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface1_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface2_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface3_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface4_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface5_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface6_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface7_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_sram_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface0_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface1_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface2_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface3_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface4_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface5_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface6_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface7_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_sram_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface0_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface1_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface2_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface3_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface4_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface5_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface6_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface7_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_sram_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_netsoc_interface_dat_r = ((((((((netsoc_interface0_bank_bus_dat_r | netsoc_interface1_bank_bus_dat_r) | netsoc_interface2_bank_bus_dat_r) | netsoc_interface3_bank_bus_dat_r) | netsoc_interface4_bank_bus_dat_r) | netsoc_interface5_bank_bus_dat_r) | netsoc_interface6_bank_bus_dat_r) | netsoc_interface7_bank_bus_dat_r) | netsoc_sram_bus_dat_r);
assign slice_proxy0 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy1 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy2 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy3 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy4 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy5 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy6 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy7 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy8 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy9 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy10 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy11 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy12 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy13 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy14 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy15 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy16 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy17 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy18 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy19 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy20 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy21 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy22 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy23 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy24 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy25 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy26 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy27 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy28 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy29 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy30 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy31 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy32 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy33 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy34 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy35 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy36 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy37 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy38 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy39 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy40 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy41 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy42 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy43 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy44 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy45 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy46 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy47 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy48 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy49 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy50 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy51 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy52 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy53 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy54 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy55 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy56 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy57 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy58 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy59 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy60 = netsoc_ddrphy_record2_wrdata[31:16];
assign slice_proxy61 = netsoc_ddrphy_record2_wrdata[15:0];
assign slice_proxy62 = netsoc_ddrphy_record3_wrdata[31:16];
assign slice_proxy63 = netsoc_ddrphy_record3_wrdata[15:0];
assign slice_proxy64 = netsoc_ddrphy_record2_wrdata_mask[3:2];
assign slice_proxy65 = netsoc_ddrphy_record2_wrdata_mask[1:0];
assign slice_proxy66 = netsoc_ddrphy_record3_wrdata_mask[3:2];
assign slice_proxy67 = netsoc_ddrphy_record3_wrdata_mask[1:0];
assign slice_proxy68 = netsoc_ddrphy_record2_wrdata_mask[3:2];
assign slice_proxy69 = netsoc_ddrphy_record2_wrdata_mask[1:0];
assign slice_proxy70 = netsoc_ddrphy_record3_wrdata_mask[3:2];
assign slice_proxy71 = netsoc_ddrphy_record3_wrdata_mask[1:0];

// synthesis translate_off
reg dummy_d_103;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed0 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[0];
		end
		1'd1: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[1];
		end
		2'd2: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[2];
		end
		2'd3: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[3];
		end
		3'd4: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[4];
		end
		3'd5: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[5];
		end
		3'd6: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[6];
		end
		default: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[7];
		end
	endcase
// synthesis translate_off
	dummy_d_103 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_104;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed1 <= 13'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine7_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_104 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_105;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed2 <= 3'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_105 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_106;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed3 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
// synthesis translate_off
	dummy_d_106 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_107;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed4 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
// synthesis translate_off
	dummy_d_107 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_108;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed5 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
// synthesis translate_off
	dummy_d_108 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_109;
// synthesis translate_on
always @(*) begin
	t_array_muxed0 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_109 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_110;
// synthesis translate_on
always @(*) begin
	t_array_muxed1 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_110 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_111;
// synthesis translate_on
always @(*) begin
	t_array_muxed2 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine7_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_111 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_112;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed6 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[0];
		end
		1'd1: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[1];
		end
		2'd2: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[2];
		end
		2'd3: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[3];
		end
		3'd4: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[4];
		end
		3'd5: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[5];
		end
		3'd6: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[6];
		end
		default: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[7];
		end
	endcase
// synthesis translate_off
	dummy_d_112 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_113;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed7 <= 13'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine7_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_113 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_114;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed8 <= 3'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_114 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_115;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed9 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
// synthesis translate_off
	dummy_d_115 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_116;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed10 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
// synthesis translate_off
	dummy_d_116 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_117;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed11 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
// synthesis translate_off
	dummy_d_117 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_118;
// synthesis translate_on
always @(*) begin
	t_array_muxed3 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_118 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_119;
// synthesis translate_on
always @(*) begin
	t_array_muxed4 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_119 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_120;
// synthesis translate_on
always @(*) begin
	t_array_muxed5 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine7_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_120 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_121;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed12 <= 21'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed12 <= rca;
		end
	endcase
// synthesis translate_off
	dummy_d_121 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_122;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed13 <= 1'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed13 <= netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_122 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_123;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed14 <= 1'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed14 <= (((cba == 1'd0) & (~(((((((1'd0 | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_123 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_124;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed15 <= 21'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed15 <= rca;
		end
	endcase
// synthesis translate_off
	dummy_d_124 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_125;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed16 <= 1'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed16 <= netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_125 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_126;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed17 <= 1'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed17 <= (((cba == 1'd1) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_126 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_127;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed18 <= 21'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed18 <= rca;
		end
	endcase
// synthesis translate_off
	dummy_d_127 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_128;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed19 <= 1'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed19 <= netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_128 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_129;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed20 <= 1'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed20 <= (((cba == 2'd2) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_129 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_130;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed21 <= 21'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed21 <= rca;
		end
	endcase
// synthesis translate_off
	dummy_d_130 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_131;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed22 <= 1'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed22 <= netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_131 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_132;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed23 <= 1'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed23 <= (((cba == 2'd3) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_132 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_133;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed24 <= 21'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed24 <= rca;
		end
	endcase
// synthesis translate_off
	dummy_d_133 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_134;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed25 <= 1'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed25 <= netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_134 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_135;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed26 <= 1'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed26 <= (((cba == 3'd4) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_135 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_136;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed27 <= 21'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed27 <= rca;
		end
	endcase
// synthesis translate_off
	dummy_d_136 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_137;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed28 <= 1'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed28 <= netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_137 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_138;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed29 <= 1'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed29 <= (((cba == 3'd5) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_138 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_139;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed30 <= 21'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed30 <= rca;
		end
	endcase
// synthesis translate_off
	dummy_d_139 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_140;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed31 <= 1'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed31 <= netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_140 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_141;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed32 <= 1'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed32 <= (((cba == 3'd6) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_141 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_142;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed33 <= 21'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed33 <= rca;
		end
	endcase
// synthesis translate_off
	dummy_d_142 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_143;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed34 <= 1'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed34 <= netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_143 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_144;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed35 <= 1'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed35 <= (((cba == 3'd7) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_144 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_145;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed36 <= 30'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed36 <= netsoc_interface1_wb_sdram_adr;
		end
	endcase
// synthesis translate_off
	dummy_d_145 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_146;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed37 <= 32'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed37 <= netsoc_interface1_wb_sdram_dat_w;
		end
	endcase
// synthesis translate_off
	dummy_d_146 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_147;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed38 <= 4'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed38 <= netsoc_interface1_wb_sdram_sel;
		end
	endcase
// synthesis translate_off
	dummy_d_147 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_148;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed39 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed39 <= netsoc_interface1_wb_sdram_cyc;
		end
	endcase
// synthesis translate_off
	dummy_d_148 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_149;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed40 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed40 <= netsoc_interface1_wb_sdram_stb;
		end
	endcase
// synthesis translate_off
	dummy_d_149 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_150;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed41 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed41 <= netsoc_interface1_wb_sdram_we;
		end
	endcase
// synthesis translate_off
	dummy_d_150 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_151;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed42 <= 3'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed42 <= netsoc_interface1_wb_sdram_cti;
		end
	endcase
// synthesis translate_off
	dummy_d_151 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_152;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed43 <= 2'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed43 <= netsoc_interface1_wb_sdram_bte;
		end
	endcase
// synthesis translate_off
	dummy_d_152 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_153;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed44 <= 30'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed44 <= netsoc_netsoc_ibus_adr;
		end
		default: begin
			rhs_array_muxed44 <= netsoc_netsoc_dbus_adr;
		end
	endcase
// synthesis translate_off
	dummy_d_153 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_154;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed45 <= 32'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed45 <= netsoc_netsoc_ibus_dat_w;
		end
		default: begin
			rhs_array_muxed45 <= netsoc_netsoc_dbus_dat_w;
		end
	endcase
// synthesis translate_off
	dummy_d_154 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_155;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed46 <= 4'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed46 <= netsoc_netsoc_ibus_sel;
		end
		default: begin
			rhs_array_muxed46 <= netsoc_netsoc_dbus_sel;
		end
	endcase
// synthesis translate_off
	dummy_d_155 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_156;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed47 <= 1'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed47 <= netsoc_netsoc_ibus_cyc;
		end
		default: begin
			rhs_array_muxed47 <= netsoc_netsoc_dbus_cyc;
		end
	endcase
// synthesis translate_off
	dummy_d_156 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_157;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed48 <= 1'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed48 <= netsoc_netsoc_ibus_stb;
		end
		default: begin
			rhs_array_muxed48 <= netsoc_netsoc_dbus_stb;
		end
	endcase
// synthesis translate_off
	dummy_d_157 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_158;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed49 <= 1'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed49 <= netsoc_netsoc_ibus_we;
		end
		default: begin
			rhs_array_muxed49 <= netsoc_netsoc_dbus_we;
		end
	endcase
// synthesis translate_off
	dummy_d_158 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_159;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed50 <= 3'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed50 <= netsoc_netsoc_ibus_cti;
		end
		default: begin
			rhs_array_muxed50 <= netsoc_netsoc_dbus_cti;
		end
	endcase
// synthesis translate_off
	dummy_d_159 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_160;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed51 <= 2'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed51 <= netsoc_netsoc_ibus_bte;
		end
		default: begin
			rhs_array_muxed51 <= netsoc_netsoc_dbus_bte;
		end
	endcase
// synthesis translate_off
	dummy_d_160 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_161;
// synthesis translate_on
always @(*) begin
	array_muxed0 <= 13'd0;
	case (netsoc_ddrphy_phase_sel)
		1'd0: begin
			array_muxed0 <= netsoc_ddrphy_record0_address;
		end
		default: begin
			array_muxed0 <= netsoc_ddrphy_record1_address;
		end
	endcase
// synthesis translate_off
	dummy_d_161 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_162;
// synthesis translate_on
always @(*) begin
	array_muxed1 <= 3'd0;
	case (netsoc_ddrphy_phase_sel)
		1'd0: begin
			array_muxed1 <= netsoc_ddrphy_record0_bank;
		end
		default: begin
			array_muxed1 <= netsoc_ddrphy_record1_bank;
		end
	endcase
// synthesis translate_off
	dummy_d_162 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_163;
// synthesis translate_on
always @(*) begin
	array_muxed2 <= 1'd0;
	case (netsoc_ddrphy_phase_sel)
		1'd0: begin
			array_muxed2 <= netsoc_ddrphy_record0_cke;
		end
		default: begin
			array_muxed2 <= netsoc_ddrphy_record1_cke;
		end
	endcase
// synthesis translate_off
	dummy_d_163 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_164;
// synthesis translate_on
always @(*) begin
	array_muxed3 <= 1'd0;
	case (netsoc_ddrphy_phase_sel)
		1'd0: begin
			array_muxed3 <= netsoc_ddrphy_record0_ras_n;
		end
		default: begin
			array_muxed3 <= netsoc_ddrphy_record1_ras_n;
		end
	endcase
// synthesis translate_off
	dummy_d_164 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_165;
// synthesis translate_on
always @(*) begin
	array_muxed4 <= 1'd0;
	case (netsoc_ddrphy_phase_sel)
		1'd0: begin
			array_muxed4 <= netsoc_ddrphy_record0_cas_n;
		end
		default: begin
			array_muxed4 <= netsoc_ddrphy_record1_cas_n;
		end
	endcase
// synthesis translate_off
	dummy_d_165 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_166;
// synthesis translate_on
always @(*) begin
	array_muxed5 <= 1'd0;
	case (netsoc_ddrphy_phase_sel)
		1'd0: begin
			array_muxed5 <= netsoc_ddrphy_record0_we_n;
		end
		default: begin
			array_muxed5 <= netsoc_ddrphy_record1_we_n;
		end
	endcase
// synthesis translate_off
	dummy_d_166 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_167;
// synthesis translate_on
always @(*) begin
	array_muxed6 <= 1'd0;
	case (netsoc_ddrphy_phase_sel)
		1'd0: begin
			array_muxed6 <= netsoc_ddrphy_record0_odt;
		end
		default: begin
			array_muxed6 <= netsoc_ddrphy_record1_odt;
		end
	endcase
// synthesis translate_off
	dummy_d_167 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_168;
// synthesis translate_on
always @(*) begin
	array_muxed7 <= 13'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed7 <= netsoc_sdram_nop_a;
		end
		1'd1: begin
			array_muxed7 <= netsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed7 <= netsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed7 <= netsoc_sdram_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_168 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_169;
// synthesis translate_on
always @(*) begin
	array_muxed8 <= 3'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed8 <= netsoc_sdram_nop_ba;
		end
		1'd1: begin
			array_muxed8 <= netsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed8 <= netsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed8 <= netsoc_sdram_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_169 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_170;
// synthesis translate_on
always @(*) begin
	array_muxed9 <= 1'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed9 <= netsoc_sdram_nop_cas;
		end
		1'd1: begin
			array_muxed9 <= netsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed9 <= netsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed9 <= netsoc_sdram_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_170 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_171;
// synthesis translate_on
always @(*) begin
	array_muxed10 <= 1'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed10 <= netsoc_sdram_nop_ras;
		end
		1'd1: begin
			array_muxed10 <= netsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed10 <= netsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed10 <= netsoc_sdram_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_171 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_172;
// synthesis translate_on
always @(*) begin
	array_muxed11 <= 1'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed11 <= netsoc_sdram_nop_we;
		end
		1'd1: begin
			array_muxed11 <= netsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed11 <= netsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed11 <= netsoc_sdram_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_172 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_173;
// synthesis translate_on
always @(*) begin
	array_muxed12 <= 1'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed12 <= 1'd0;
		end
		1'd1: begin
			array_muxed12 <= (netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed12 <= (netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed12 <= (netsoc_sdram_cmd_valid & netsoc_sdram_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_173 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_174;
// synthesis translate_on
always @(*) begin
	array_muxed13 <= 1'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed13 <= 1'd0;
		end
		1'd1: begin
			array_muxed13 <= (netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed13 <= (netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed13 <= (netsoc_sdram_cmd_valid & netsoc_sdram_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_174 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_175;
// synthesis translate_on
always @(*) begin
	array_muxed14 <= 13'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed14 <= netsoc_sdram_nop_a;
		end
		1'd1: begin
			array_muxed14 <= netsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed14 <= netsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed14 <= netsoc_sdram_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_175 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_176;
// synthesis translate_on
always @(*) begin
	array_muxed15 <= 3'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed15 <= netsoc_sdram_nop_ba;
		end
		1'd1: begin
			array_muxed15 <= netsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed15 <= netsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed15 <= netsoc_sdram_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_176 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_177;
// synthesis translate_on
always @(*) begin
	array_muxed16 <= 1'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed16 <= netsoc_sdram_nop_cas;
		end
		1'd1: begin
			array_muxed16 <= netsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed16 <= netsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed16 <= netsoc_sdram_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_177 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_178;
// synthesis translate_on
always @(*) begin
	array_muxed17 <= 1'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed17 <= netsoc_sdram_nop_ras;
		end
		1'd1: begin
			array_muxed17 <= netsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed17 <= netsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed17 <= netsoc_sdram_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_178 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_179;
// synthesis translate_on
always @(*) begin
	array_muxed18 <= 1'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed18 <= netsoc_sdram_nop_we;
		end
		1'd1: begin
			array_muxed18 <= netsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed18 <= netsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed18 <= netsoc_sdram_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_179 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_180;
// synthesis translate_on
always @(*) begin
	array_muxed19 <= 1'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed19 <= 1'd0;
		end
		1'd1: begin
			array_muxed19 <= (netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed19 <= (netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed19 <= (netsoc_sdram_cmd_valid & netsoc_sdram_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_180 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_181;
// synthesis translate_on
always @(*) begin
	array_muxed20 <= 1'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed20 <= 1'd0;
		end
		1'd1: begin
			array_muxed20 <= (netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed20 <= (netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed20 <= (netsoc_sdram_cmd_valid & netsoc_sdram_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_181 <= dummy_s;
// synthesis translate_on
end
assign netsoc_netsoc_uart_phy_rx = xilinxmultiregimpl0_regs1;
assign xilinxasyncresetsynchronizerimpl0 = ((~cpu_reset) | netsoc_crg_reset);
assign xilinxasyncresetsynchronizerimpl1 = ((~netsoc_crg_pll_lckd) | (netsoc_crg_por > 1'd0));
assign xilinxasyncresetsynchronizerimpl2 = (sys_rst | (~netsoc_crg_dcm_base50_locked));
assign ethphy_toggle_o = xilinxmultiregimpl1_regs1;
assign ethphy_status = xilinxmultiregimpl2_regs1;
assign ethmac_ps_preamble_error_toggle_o = xilinxmultiregimpl3_regs1;
assign ethmac_ps_crc_error_toggle_o = xilinxmultiregimpl4_regs1;
assign ethmac_tx_cdc_produce_rdomain = xilinxmultiregimpl5_regs1;
assign ethmac_tx_cdc_consume_wdomain = xilinxmultiregimpl6_regs1;
assign ethmac_rx_cdc_produce_rdomain = xilinxmultiregimpl7_regs1;
assign ethmac_rx_cdc_consume_wdomain = xilinxmultiregimpl8_regs1;

always @(posedge eth_rx_clk) begin
	ethphy_eth_counter <= (ethphy_eth_counter + 1'd1);
	if (ethphy_i) begin
		ethphy_toggle_i <= (~ethphy_toggle_i);
	end
	ethphy_liteethphygmiimiirx_pads_d_dv <= eth_dv;
	ethphy_liteethphygmiimiirx_pads_d_rx_data <= eth_rx_data;
	ethphy_liteethphygmiimiirx_gmii_rx_dv_d <= ethphy_liteethphygmiimiirx_pads_d_dv;
	ethphy_liteethphygmiimiirx_gmii_rx_source_valid <= ethphy_liteethphygmiimiirx_pads_d_dv;
	ethphy_liteethphygmiimiirx_gmii_rx_source_payload_data <= ethphy_liteethphygmiimiirx_pads_d_rx_data;
	ethphy_liteethphygmiimiirx_converter_reset <= (~ethphy_liteethphygmiimiirx_pads_d_dv);
	ethphy_liteethphygmiimiirx_converter_sink_valid <= 1'd1;
	ethphy_liteethphygmiimiirx_converter_sink_payload_data <= ethphy_liteethphygmiimiirx_pads_d_rx_data;
	if (ethphy_liteethphygmiimiirx_converter_converter_source_ready) begin
		ethphy_liteethphygmiimiirx_converter_converter_strobe_all <= 1'd0;
	end
	if (ethphy_liteethphygmiimiirx_converter_converter_load_part) begin
		if (((ethphy_liteethphygmiimiirx_converter_converter_demux == 1'd1) | ethphy_liteethphygmiimiirx_converter_converter_sink_last)) begin
			ethphy_liteethphygmiimiirx_converter_converter_demux <= 1'd0;
			ethphy_liteethphygmiimiirx_converter_converter_strobe_all <= 1'd1;
		end else begin
			ethphy_liteethphygmiimiirx_converter_converter_demux <= (ethphy_liteethphygmiimiirx_converter_converter_demux + 1'd1);
		end
	end
	if ((ethphy_liteethphygmiimiirx_converter_converter_source_valid & ethphy_liteethphygmiimiirx_converter_converter_source_ready)) begin
		if ((ethphy_liteethphygmiimiirx_converter_converter_sink_valid & ethphy_liteethphygmiimiirx_converter_converter_sink_ready)) begin
			ethphy_liteethphygmiimiirx_converter_converter_source_first <= ethphy_liteethphygmiimiirx_converter_converter_sink_first;
			ethphy_liteethphygmiimiirx_converter_converter_source_last <= ethphy_liteethphygmiimiirx_converter_converter_sink_last;
		end else begin
			ethphy_liteethphygmiimiirx_converter_converter_source_first <= 1'd0;
			ethphy_liteethphygmiimiirx_converter_converter_source_last <= 1'd0;
		end
	end else begin
		if ((ethphy_liteethphygmiimiirx_converter_converter_sink_valid & ethphy_liteethphygmiimiirx_converter_converter_sink_ready)) begin
			ethphy_liteethphygmiimiirx_converter_converter_source_first <= (ethphy_liteethphygmiimiirx_converter_converter_sink_first | ethphy_liteethphygmiimiirx_converter_converter_source_first);
			ethphy_liteethphygmiimiirx_converter_converter_source_last <= (ethphy_liteethphygmiimiirx_converter_converter_sink_last | ethphy_liteethphygmiimiirx_converter_converter_source_last);
		end
	end
	if (ethphy_liteethphygmiimiirx_converter_converter_load_part) begin
		case (ethphy_liteethphygmiimiirx_converter_converter_demux)
			1'd0: begin
				ethphy_liteethphygmiimiirx_converter_converter_source_payload_data[3:0] <= ethphy_liteethphygmiimiirx_converter_converter_sink_payload_data;
			end
			1'd1: begin
				ethphy_liteethphygmiimiirx_converter_converter_source_payload_data[7:4] <= ethphy_liteethphygmiimiirx_converter_converter_sink_payload_data;
			end
		endcase
	end
	if (ethphy_liteethphygmiimiirx_converter_converter_load_part) begin
		ethphy_liteethphygmiimiirx_converter_converter_source_payload_valid_token_count <= (ethphy_liteethphygmiimiirx_converter_converter_demux + 1'd1);
	end
	if (ethphy_liteethphygmiimiirx_converter_reset) begin
		ethphy_liteethphygmiimiirx_converter_converter_source_first <= 1'd0;
		ethphy_liteethphygmiimiirx_converter_converter_source_last <= 1'd0;
		ethphy_liteethphygmiimiirx_converter_converter_source_payload_data <= 8'd0;
		ethphy_liteethphygmiimiirx_converter_converter_source_payload_valid_token_count <= 2'd0;
		ethphy_liteethphygmiimiirx_converter_converter_demux <= 1'd0;
		ethphy_liteethphygmiimiirx_converter_converter_strobe_all <= 1'd0;
	end
	liteethmacpreamblechecker_state <= liteethmacpreamblechecker_next_state;
	if (ethmac_crc32_checker_crc_ce) begin
		ethmac_crc32_checker_crc_reg <= ethmac_crc32_checker_crc_next;
	end
	if (ethmac_crc32_checker_crc_reset) begin
		ethmac_crc32_checker_crc_reg <= 32'd4294967295;
	end
	if (((ethmac_crc32_checker_syncfifo_syncfifo_we & ethmac_crc32_checker_syncfifo_syncfifo_writable) & (~ethmac_crc32_checker_syncfifo_replace))) begin
		if ((ethmac_crc32_checker_syncfifo_produce == 3'd4)) begin
			ethmac_crc32_checker_syncfifo_produce <= 1'd0;
		end else begin
			ethmac_crc32_checker_syncfifo_produce <= (ethmac_crc32_checker_syncfifo_produce + 1'd1);
		end
	end
	if (ethmac_crc32_checker_syncfifo_do_read) begin
		if ((ethmac_crc32_checker_syncfifo_consume == 3'd4)) begin
			ethmac_crc32_checker_syncfifo_consume <= 1'd0;
		end else begin
			ethmac_crc32_checker_syncfifo_consume <= (ethmac_crc32_checker_syncfifo_consume + 1'd1);
		end
	end
	if (((ethmac_crc32_checker_syncfifo_syncfifo_we & ethmac_crc32_checker_syncfifo_syncfifo_writable) & (~ethmac_crc32_checker_syncfifo_replace))) begin
		if ((~ethmac_crc32_checker_syncfifo_do_read)) begin
			ethmac_crc32_checker_syncfifo_level <= (ethmac_crc32_checker_syncfifo_level + 1'd1);
		end
	end else begin
		if (ethmac_crc32_checker_syncfifo_do_read) begin
			ethmac_crc32_checker_syncfifo_level <= (ethmac_crc32_checker_syncfifo_level - 1'd1);
		end
	end
	if (ethmac_crc32_checker_fifo_reset) begin
		ethmac_crc32_checker_syncfifo_level <= 3'd0;
		ethmac_crc32_checker_syncfifo_produce <= 3'd0;
		ethmac_crc32_checker_syncfifo_consume <= 3'd0;
	end
	liteethmaccrc32checker_state <= liteethmaccrc32checker_next_state;
	if (ethmac_ps_preamble_error_i) begin
		ethmac_ps_preamble_error_toggle_i <= (~ethmac_ps_preamble_error_toggle_i);
	end
	if (ethmac_ps_crc_error_i) begin
		ethmac_ps_crc_error_toggle_i <= (~ethmac_ps_crc_error_toggle_i);
	end
	if (ethmac_rx_converter_converter_source_ready) begin
		ethmac_rx_converter_converter_strobe_all <= 1'd0;
	end
	if (ethmac_rx_converter_converter_load_part) begin
		if (((ethmac_rx_converter_converter_demux == 2'd3) | ethmac_rx_converter_converter_sink_last)) begin
			ethmac_rx_converter_converter_demux <= 1'd0;
			ethmac_rx_converter_converter_strobe_all <= 1'd1;
		end else begin
			ethmac_rx_converter_converter_demux <= (ethmac_rx_converter_converter_demux + 1'd1);
		end
	end
	if ((ethmac_rx_converter_converter_source_valid & ethmac_rx_converter_converter_source_ready)) begin
		if ((ethmac_rx_converter_converter_sink_valid & ethmac_rx_converter_converter_sink_ready)) begin
			ethmac_rx_converter_converter_source_first <= ethmac_rx_converter_converter_sink_first;
			ethmac_rx_converter_converter_source_last <= ethmac_rx_converter_converter_sink_last;
		end else begin
			ethmac_rx_converter_converter_source_first <= 1'd0;
			ethmac_rx_converter_converter_source_last <= 1'd0;
		end
	end else begin
		if ((ethmac_rx_converter_converter_sink_valid & ethmac_rx_converter_converter_sink_ready)) begin
			ethmac_rx_converter_converter_source_first <= (ethmac_rx_converter_converter_sink_first | ethmac_rx_converter_converter_source_first);
			ethmac_rx_converter_converter_source_last <= (ethmac_rx_converter_converter_sink_last | ethmac_rx_converter_converter_source_last);
		end
	end
	if (ethmac_rx_converter_converter_load_part) begin
		case (ethmac_rx_converter_converter_demux)
			1'd0: begin
				ethmac_rx_converter_converter_source_payload_data[39:30] <= ethmac_rx_converter_converter_sink_payload_data;
			end
			1'd1: begin
				ethmac_rx_converter_converter_source_payload_data[29:20] <= ethmac_rx_converter_converter_sink_payload_data;
			end
			2'd2: begin
				ethmac_rx_converter_converter_source_payload_data[19:10] <= ethmac_rx_converter_converter_sink_payload_data;
			end
			2'd3: begin
				ethmac_rx_converter_converter_source_payload_data[9:0] <= ethmac_rx_converter_converter_sink_payload_data;
			end
		endcase
	end
	if (ethmac_rx_converter_converter_load_part) begin
		ethmac_rx_converter_converter_source_payload_valid_token_count <= (ethmac_rx_converter_converter_demux + 1'd1);
	end
	ethmac_rx_cdc_graycounter0_q_binary <= ethmac_rx_cdc_graycounter0_q_next_binary;
	ethmac_rx_cdc_graycounter0_q <= ethmac_rx_cdc_graycounter0_q_next;
	if (eth_rx_rst) begin
		ethphy_liteethphygmiimiirx_gmii_rx_source_valid <= 1'd0;
		ethphy_liteethphygmiimiirx_gmii_rx_source_payload_data <= 8'd0;
		ethphy_liteethphygmiimiirx_gmii_rx_dv_d <= 1'd0;
		ethphy_liteethphygmiimiirx_converter_sink_valid <= 1'd0;
		ethphy_liteethphygmiimiirx_converter_sink_payload_data <= 4'd0;
		ethphy_liteethphygmiimiirx_converter_converter_source_first <= 1'd0;
		ethphy_liteethphygmiimiirx_converter_converter_source_last <= 1'd0;
		ethphy_liteethphygmiimiirx_converter_converter_source_payload_data <= 8'd0;
		ethphy_liteethphygmiimiirx_converter_converter_source_payload_valid_token_count <= 2'd0;
		ethphy_liteethphygmiimiirx_converter_converter_demux <= 1'd0;
		ethphy_liteethphygmiimiirx_converter_converter_strobe_all <= 1'd0;
		ethphy_liteethphygmiimiirx_converter_reset <= 1'd0;
		ethmac_crc32_checker_crc_reg <= 32'd4294967295;
		ethmac_crc32_checker_syncfifo_level <= 3'd0;
		ethmac_crc32_checker_syncfifo_produce <= 3'd0;
		ethmac_crc32_checker_syncfifo_consume <= 3'd0;
		ethmac_rx_converter_converter_source_first <= 1'd0;
		ethmac_rx_converter_converter_source_last <= 1'd0;
		ethmac_rx_converter_converter_source_payload_data <= 40'd0;
		ethmac_rx_converter_converter_source_payload_valid_token_count <= 3'd0;
		ethmac_rx_converter_converter_demux <= 2'd0;
		ethmac_rx_converter_converter_strobe_all <= 1'd0;
		ethmac_rx_cdc_graycounter0_q <= 7'd0;
		ethmac_rx_cdc_graycounter0_q_binary <= 7'd0;
		liteethmacpreamblechecker_state <= 1'd0;
		liteethmaccrc32checker_state <= 2'd0;
	end
	xilinxmultiregimpl8_regs0 <= ethmac_rx_cdc_graycounter1_q;
	xilinxmultiregimpl8_regs1 <= xilinxmultiregimpl8_regs0;
end

always @(posedge eth_tx_clk) begin
	if ((ethphy_mode0 == 1'd1)) begin
		eth_tx_en <= ethphy_liteethphygmiimiitx_mii_tx_pads_tx_en;
		eth_tx_data <= ethphy_liteethphygmiimiitx_mii_tx_pads_tx_data;
	end else begin
		eth_tx_en <= ethphy_liteethphygmiimiitx_gmii_tx_pads_tx_en;
		eth_tx_data <= ethphy_liteethphygmiimiitx_gmii_tx_pads_tx_data;
	end
	ethphy_liteethphygmiimiitx_gmii_tx_pads_tx_er <= 1'd0;
	ethphy_liteethphygmiimiitx_gmii_tx_pads_tx_en <= ethphy_liteethphygmiimiitx_gmii_tx_sink_valid;
	ethphy_liteethphygmiimiitx_gmii_tx_pads_tx_data <= ethphy_liteethphygmiimiitx_gmii_tx_sink_payload_data;
	ethphy_liteethphygmiimiitx_gmii_tx_sink_ready <= 1'd1;
	ethphy_liteethphygmiimiitx_mii_tx_pads_tx_er <= 1'd0;
	ethphy_liteethphygmiimiitx_mii_tx_pads_tx_en <= ethphy_liteethphygmiimiitx_converter_source_valid;
	ethphy_liteethphygmiimiitx_mii_tx_pads_tx_data <= ethphy_liteethphygmiimiitx_converter_source_payload_data;
	if ((ethphy_liteethphygmiimiitx_converter_converter_source_valid & ethphy_liteethphygmiimiitx_converter_converter_source_ready)) begin
		if (ethphy_liteethphygmiimiitx_converter_converter_last) begin
			ethphy_liteethphygmiimiitx_converter_converter_mux <= 1'd0;
		end else begin
			ethphy_liteethphygmiimiitx_converter_converter_mux <= (ethphy_liteethphygmiimiitx_converter_converter_mux + 1'd1);
		end
	end
	if (ethmac_tx_gap_inserter_counter_reset) begin
		ethmac_tx_gap_inserter_counter <= 1'd0;
	end else begin
		if (ethmac_tx_gap_inserter_counter_ce) begin
			ethmac_tx_gap_inserter_counter <= (ethmac_tx_gap_inserter_counter + 1'd1);
		end
	end
	liteethmacgap_state <= liteethmacgap_next_state;
	if (ethmac_preamble_inserter_clr_cnt) begin
		ethmac_preamble_inserter_cnt <= 1'd0;
	end else begin
		if (ethmac_preamble_inserter_inc_cnt) begin
			ethmac_preamble_inserter_cnt <= (ethmac_preamble_inserter_cnt + 1'd1);
		end
	end
	liteethmacpreambleinserter_state <= liteethmacpreambleinserter_next_state;
	if (ethmac_crc32_inserter_is_ongoing0) begin
		ethmac_crc32_inserter_cnt <= 2'd3;
	end else begin
		if ((ethmac_crc32_inserter_is_ongoing1 & (~ethmac_crc32_inserter_cnt_done))) begin
			ethmac_crc32_inserter_cnt <= (ethmac_crc32_inserter_cnt - ethmac_crc32_inserter_source_ready);
		end
	end
	if (ethmac_crc32_inserter_ce) begin
		ethmac_crc32_inserter_reg <= ethmac_crc32_inserter_next;
	end
	if (ethmac_crc32_inserter_reset) begin
		ethmac_crc32_inserter_reg <= 32'd4294967295;
	end
	liteethmaccrc32inserter_state <= liteethmaccrc32inserter_next_state;
	if (ethmac_padding_inserter_counter_reset) begin
		ethmac_padding_inserter_counter <= 1'd0;
	end else begin
		if (ethmac_padding_inserter_counter_ce) begin
			ethmac_padding_inserter_counter <= (ethmac_padding_inserter_counter + 1'd1);
		end
	end
	liteethmacpaddinginserter_state <= liteethmacpaddinginserter_next_state;
	if ((ethmac_tx_last_be_sink_valid & ethmac_tx_last_be_sink_ready)) begin
		if (ethmac_tx_last_be_sink_last) begin
			ethmac_tx_last_be_ongoing <= 1'd1;
		end else begin
			if (ethmac_tx_last_be_sink_payload_last_be) begin
				ethmac_tx_last_be_ongoing <= 1'd0;
			end
		end
	end
	if ((ethmac_tx_converter_converter_source_valid & ethmac_tx_converter_converter_source_ready)) begin
		if (ethmac_tx_converter_converter_last) begin
			ethmac_tx_converter_converter_mux <= 1'd0;
		end else begin
			ethmac_tx_converter_converter_mux <= (ethmac_tx_converter_converter_mux + 1'd1);
		end
	end
	ethmac_tx_cdc_graycounter1_q_binary <= ethmac_tx_cdc_graycounter1_q_next_binary;
	ethmac_tx_cdc_graycounter1_q <= ethmac_tx_cdc_graycounter1_q_next;
	if (eth_tx_rst) begin
		ethphy_liteethphygmiimiitx_gmii_tx_sink_ready <= 1'd0;
		ethphy_liteethphygmiimiitx_converter_converter_mux <= 1'd0;
		ethmac_crc32_inserter_reg <= 32'd4294967295;
		ethmac_crc32_inserter_cnt <= 2'd3;
		ethmac_padding_inserter_counter <= 16'd1;
		ethmac_tx_last_be_ongoing <= 1'd1;
		ethmac_tx_converter_converter_mux <= 2'd0;
		ethmac_tx_cdc_graycounter1_q <= 7'd0;
		ethmac_tx_cdc_graycounter1_q_binary <= 7'd0;
		liteethmacgap_state <= 1'd0;
		liteethmacpreambleinserter_state <= 2'd0;
		liteethmaccrc32inserter_state <= 2'd0;
		liteethmacpaddinginserter_state <= 1'd0;
	end
	xilinxmultiregimpl5_regs0 <= ethmac_tx_cdc_graycounter0_q;
	xilinxmultiregimpl5_regs1 <= xilinxmultiregimpl5_regs0;
end

always @(posedge por_clk) begin
	if ((netsoc_crg_por != 1'd0)) begin
		netsoc_crg_por <= (netsoc_crg_por - 1'd1);
	end
	if (por_rst) begin
		netsoc_crg_por <= 11'd2047;
	end
end

always @(posedge sdram_half_clk) begin
	if ((netsoc_ddrphy_phase_half == netsoc_ddrphy_phase_sys)) begin
		netsoc_ddrphy_phase_sel <= 1'd0;
	end else begin
		netsoc_ddrphy_phase_sel <= (netsoc_ddrphy_phase_sel + 1'd1);
	end
	netsoc_ddrphy_phase_half <= (netsoc_ddrphy_phase_half + 1'd1);
	netsoc_ddrphy_record0_reset_n <= netsoc_ddrphy_dfi_p0_reset_n;
	netsoc_ddrphy_record0_odt <= netsoc_ddrphy_dfi_p0_odt;
	netsoc_ddrphy_record0_address <= netsoc_ddrphy_dfi_p0_address;
	netsoc_ddrphy_record0_bank <= netsoc_ddrphy_dfi_p0_bank;
	netsoc_ddrphy_record0_cs_n <= netsoc_ddrphy_dfi_p0_cs_n;
	netsoc_ddrphy_record0_cke <= netsoc_ddrphy_dfi_p0_cke;
	netsoc_ddrphy_record0_cas_n <= netsoc_ddrphy_dfi_p0_cas_n;
	netsoc_ddrphy_record0_ras_n <= netsoc_ddrphy_dfi_p0_ras_n;
	netsoc_ddrphy_record0_we_n <= netsoc_ddrphy_dfi_p0_we_n;
	netsoc_ddrphy_record1_reset_n <= netsoc_ddrphy_dfi_p1_reset_n;
	netsoc_ddrphy_record1_odt <= netsoc_ddrphy_dfi_p1_odt;
	netsoc_ddrphy_record1_address <= netsoc_ddrphy_dfi_p1_address;
	netsoc_ddrphy_record1_bank <= netsoc_ddrphy_dfi_p1_bank;
	netsoc_ddrphy_record1_cs_n <= netsoc_ddrphy_dfi_p1_cs_n;
	netsoc_ddrphy_record1_cke <= netsoc_ddrphy_dfi_p1_cke;
	netsoc_ddrphy_record1_cas_n <= netsoc_ddrphy_dfi_p1_cas_n;
	netsoc_ddrphy_record1_ras_n <= netsoc_ddrphy_dfi_p1_ras_n;
	netsoc_ddrphy_record1_we_n <= netsoc_ddrphy_dfi_p1_we_n;
	ddram_a <= array_muxed0;
	ddram_ba <= array_muxed1;
	ddram_cke <= array_muxed2;
	ddram_ras_n <= array_muxed3;
	ddram_cas_n <= array_muxed4;
	ddram_we_n <= array_muxed5;
	ddram_odt <= array_muxed6;
	netsoc_ddrphy_postamble <= netsoc_ddrphy_drive_dqs;
	netsoc_ddrphy_r_dfi_wrdata_en <= {netsoc_ddrphy_r_dfi_wrdata_en, netsoc_ddrphy_wrdata_en_d};
	if (sdram_half_rst) begin
		ddram_cke <= 1'd0;
		ddram_ras_n <= 1'd0;
		ddram_cas_n <= 1'd0;
		ddram_we_n <= 1'd0;
		ddram_ba <= 3'd0;
		ddram_a <= 13'd0;
		ddram_odt <= 1'd0;
		netsoc_ddrphy_phase_sel <= 1'd0;
		netsoc_ddrphy_phase_half <= 1'd0;
		netsoc_ddrphy_record0_address <= 13'd0;
		netsoc_ddrphy_record0_bank <= 3'd0;
		netsoc_ddrphy_record0_cas_n <= 1'd0;
		netsoc_ddrphy_record0_cs_n <= 1'd0;
		netsoc_ddrphy_record0_ras_n <= 1'd0;
		netsoc_ddrphy_record0_we_n <= 1'd0;
		netsoc_ddrphy_record0_cke <= 1'd0;
		netsoc_ddrphy_record0_odt <= 1'd0;
		netsoc_ddrphy_record0_reset_n <= 1'd0;
		netsoc_ddrphy_record1_address <= 13'd0;
		netsoc_ddrphy_record1_bank <= 3'd0;
		netsoc_ddrphy_record1_cas_n <= 1'd0;
		netsoc_ddrphy_record1_cs_n <= 1'd0;
		netsoc_ddrphy_record1_ras_n <= 1'd0;
		netsoc_ddrphy_record1_we_n <= 1'd0;
		netsoc_ddrphy_record1_cke <= 1'd0;
		netsoc_ddrphy_record1_odt <= 1'd0;
		netsoc_ddrphy_record1_reset_n <= 1'd0;
		netsoc_ddrphy_postamble <= 1'd0;
		netsoc_ddrphy_r_dfi_wrdata_en <= 3'd0;
	end
end

always @(posedge sys_clk) begin
	netsoc_netsoc_rom_bus_ack <= 1'd0;
	if (((netsoc_netsoc_rom_bus_cyc & netsoc_netsoc_rom_bus_stb) & (~netsoc_netsoc_rom_bus_ack))) begin
		netsoc_netsoc_rom_bus_ack <= 1'd1;
	end
	netsoc_netsoc_sram_bus_ack <= 1'd0;
	if (((netsoc_netsoc_sram_bus_cyc & netsoc_netsoc_sram_bus_stb) & (~netsoc_netsoc_sram_bus_ack))) begin
		netsoc_netsoc_sram_bus_ack <= 1'd1;
	end
	netsoc_netsoc_interface_we <= 1'd0;
	netsoc_netsoc_interface_dat_w <= netsoc_netsoc_bus_wishbone_dat_w;
	netsoc_netsoc_interface_adr <= netsoc_netsoc_bus_wishbone_adr;
	netsoc_netsoc_bus_wishbone_dat_r <= netsoc_netsoc_interface_dat_r;
	if ((netsoc_netsoc_counter == 1'd1)) begin
		netsoc_netsoc_interface_we <= netsoc_netsoc_bus_wishbone_we;
	end
	if ((netsoc_netsoc_counter == 2'd2)) begin
		netsoc_netsoc_bus_wishbone_ack <= 1'd1;
	end
	if ((netsoc_netsoc_counter == 2'd3)) begin
		netsoc_netsoc_bus_wishbone_ack <= 1'd0;
	end
	if ((netsoc_netsoc_counter != 1'd0)) begin
		netsoc_netsoc_counter <= (netsoc_netsoc_counter + 1'd1);
	end else begin
		if ((netsoc_netsoc_bus_wishbone_cyc & netsoc_netsoc_bus_wishbone_stb)) begin
			netsoc_netsoc_counter <= 1'd1;
		end
	end
	netsoc_netsoc_uart_phy_sink_ready <= 1'd0;
	if (((netsoc_netsoc_uart_phy_sink_valid & (~netsoc_netsoc_uart_phy_tx_busy)) & (~netsoc_netsoc_uart_phy_sink_ready))) begin
		netsoc_netsoc_uart_phy_tx_reg <= netsoc_netsoc_uart_phy_sink_payload_data;
		netsoc_netsoc_uart_phy_tx_bitcount <= 1'd0;
		netsoc_netsoc_uart_phy_tx_busy <= 1'd1;
		serial_tx <= 1'd0;
	end else begin
		if ((netsoc_netsoc_uart_phy_uart_clk_txen & netsoc_netsoc_uart_phy_tx_busy)) begin
			netsoc_netsoc_uart_phy_tx_bitcount <= (netsoc_netsoc_uart_phy_tx_bitcount + 1'd1);
			if ((netsoc_netsoc_uart_phy_tx_bitcount == 4'd8)) begin
				serial_tx <= 1'd1;
			end else begin
				if ((netsoc_netsoc_uart_phy_tx_bitcount == 4'd9)) begin
					serial_tx <= 1'd1;
					netsoc_netsoc_uart_phy_tx_busy <= 1'd0;
					netsoc_netsoc_uart_phy_sink_ready <= 1'd1;
				end else begin
					serial_tx <= netsoc_netsoc_uart_phy_tx_reg[0];
					netsoc_netsoc_uart_phy_tx_reg <= {1'd0, netsoc_netsoc_uart_phy_tx_reg[7:1]};
				end
			end
		end
	end
	if (netsoc_netsoc_uart_phy_tx_busy) begin
		{netsoc_netsoc_uart_phy_uart_clk_txen, netsoc_netsoc_uart_phy_phase_accumulator_tx} <= (netsoc_netsoc_uart_phy_phase_accumulator_tx + netsoc_netsoc_uart_phy_storage);
	end else begin
		{netsoc_netsoc_uart_phy_uart_clk_txen, netsoc_netsoc_uart_phy_phase_accumulator_tx} <= 1'd0;
	end
	netsoc_netsoc_uart_phy_source_valid <= 1'd0;
	netsoc_netsoc_uart_phy_rx_r <= netsoc_netsoc_uart_phy_rx;
	if ((~netsoc_netsoc_uart_phy_rx_busy)) begin
		if (((~netsoc_netsoc_uart_phy_rx) & netsoc_netsoc_uart_phy_rx_r)) begin
			netsoc_netsoc_uart_phy_rx_busy <= 1'd1;
			netsoc_netsoc_uart_phy_rx_bitcount <= 1'd0;
		end
	end else begin
		if (netsoc_netsoc_uart_phy_uart_clk_rxen) begin
			netsoc_netsoc_uart_phy_rx_bitcount <= (netsoc_netsoc_uart_phy_rx_bitcount + 1'd1);
			if ((netsoc_netsoc_uart_phy_rx_bitcount == 1'd0)) begin
				if (netsoc_netsoc_uart_phy_rx) begin
					netsoc_netsoc_uart_phy_rx_busy <= 1'd0;
				end
			end else begin
				if ((netsoc_netsoc_uart_phy_rx_bitcount == 4'd9)) begin
					netsoc_netsoc_uart_phy_rx_busy <= 1'd0;
					if (netsoc_netsoc_uart_phy_rx) begin
						netsoc_netsoc_uart_phy_source_payload_data <= netsoc_netsoc_uart_phy_rx_reg;
						netsoc_netsoc_uart_phy_source_valid <= 1'd1;
					end
				end else begin
					netsoc_netsoc_uart_phy_rx_reg <= {netsoc_netsoc_uart_phy_rx, netsoc_netsoc_uart_phy_rx_reg[7:1]};
				end
			end
		end
	end
	if (netsoc_netsoc_uart_phy_rx_busy) begin
		{netsoc_netsoc_uart_phy_uart_clk_rxen, netsoc_netsoc_uart_phy_phase_accumulator_rx} <= (netsoc_netsoc_uart_phy_phase_accumulator_rx + netsoc_netsoc_uart_phy_storage);
	end else begin
		{netsoc_netsoc_uart_phy_uart_clk_rxen, netsoc_netsoc_uart_phy_phase_accumulator_rx} <= 32'd2147483648;
	end
	if (netsoc_netsoc_uart_tx_clear) begin
		netsoc_netsoc_uart_tx_pending <= 1'd0;
	end
	netsoc_netsoc_uart_tx_old_trigger <= netsoc_netsoc_uart_tx_trigger;
	if (((~netsoc_netsoc_uart_tx_trigger) & netsoc_netsoc_uart_tx_old_trigger)) begin
		netsoc_netsoc_uart_tx_pending <= 1'd1;
	end
	if (netsoc_netsoc_uart_rx_clear) begin
		netsoc_netsoc_uart_rx_pending <= 1'd0;
	end
	netsoc_netsoc_uart_rx_old_trigger <= netsoc_netsoc_uart_rx_trigger;
	if (((~netsoc_netsoc_uart_rx_trigger) & netsoc_netsoc_uart_rx_old_trigger)) begin
		netsoc_netsoc_uart_rx_pending <= 1'd1;
	end
	if (((netsoc_netsoc_uart_tx_fifo_syncfifo_we & netsoc_netsoc_uart_tx_fifo_syncfifo_writable) & (~netsoc_netsoc_uart_tx_fifo_replace))) begin
		netsoc_netsoc_uart_tx_fifo_produce <= (netsoc_netsoc_uart_tx_fifo_produce + 1'd1);
	end
	if (netsoc_netsoc_uart_tx_fifo_do_read) begin
		netsoc_netsoc_uart_tx_fifo_consume <= (netsoc_netsoc_uart_tx_fifo_consume + 1'd1);
	end
	if (((netsoc_netsoc_uart_tx_fifo_syncfifo_we & netsoc_netsoc_uart_tx_fifo_syncfifo_writable) & (~netsoc_netsoc_uart_tx_fifo_replace))) begin
		if ((~netsoc_netsoc_uart_tx_fifo_do_read)) begin
			netsoc_netsoc_uart_tx_fifo_level <= (netsoc_netsoc_uart_tx_fifo_level + 1'd1);
		end
	end else begin
		if (netsoc_netsoc_uart_tx_fifo_do_read) begin
			netsoc_netsoc_uart_tx_fifo_level <= (netsoc_netsoc_uart_tx_fifo_level - 1'd1);
		end
	end
	if (((netsoc_netsoc_uart_rx_fifo_syncfifo_we & netsoc_netsoc_uart_rx_fifo_syncfifo_writable) & (~netsoc_netsoc_uart_rx_fifo_replace))) begin
		netsoc_netsoc_uart_rx_fifo_produce <= (netsoc_netsoc_uart_rx_fifo_produce + 1'd1);
	end
	if (netsoc_netsoc_uart_rx_fifo_do_read) begin
		netsoc_netsoc_uart_rx_fifo_consume <= (netsoc_netsoc_uart_rx_fifo_consume + 1'd1);
	end
	if (((netsoc_netsoc_uart_rx_fifo_syncfifo_we & netsoc_netsoc_uart_rx_fifo_syncfifo_writable) & (~netsoc_netsoc_uart_rx_fifo_replace))) begin
		if ((~netsoc_netsoc_uart_rx_fifo_do_read)) begin
			netsoc_netsoc_uart_rx_fifo_level <= (netsoc_netsoc_uart_rx_fifo_level + 1'd1);
		end
	end else begin
		if (netsoc_netsoc_uart_rx_fifo_do_read) begin
			netsoc_netsoc_uart_rx_fifo_level <= (netsoc_netsoc_uart_rx_fifo_level - 1'd1);
		end
	end
	if (netsoc_netsoc_timer0_en_storage) begin
		if ((netsoc_netsoc_timer0_value == 1'd0)) begin
			netsoc_netsoc_timer0_value <= netsoc_netsoc_timer0_reload_storage;
		end else begin
			netsoc_netsoc_timer0_value <= (netsoc_netsoc_timer0_value - 1'd1);
		end
	end else begin
		netsoc_netsoc_timer0_value <= netsoc_netsoc_timer0_load_storage;
	end
	if (netsoc_netsoc_timer0_update_value_re) begin
		netsoc_netsoc_timer0_value_status <= netsoc_netsoc_timer0_value;
	end
	if (netsoc_netsoc_timer0_zero_clear) begin
		netsoc_netsoc_timer0_zero_pending <= 1'd0;
	end
	netsoc_netsoc_timer0_zero_old_trigger <= netsoc_netsoc_timer0_zero_trigger;
	if (((~netsoc_netsoc_timer0_zero_trigger) & netsoc_netsoc_timer0_zero_old_trigger)) begin
		netsoc_netsoc_timer0_zero_pending <= 1'd1;
	end
	if ((netsoc_dna_cnt < 7'd114)) begin
		netsoc_dna_cnt <= (netsoc_dna_cnt + 1'd1);
		if (netsoc_dna_cnt[0]) begin
			netsoc_dna_status <= {netsoc_dna_status, netsoc_dna_do};
		end
	end
	if ((netsoc_i1 == 1'd1)) begin
		netsoc_clk <= 1'd1;
		netsoc_dqi <= netsoc_i0;
	end
	if ((netsoc_i1 == 2'd3)) begin
		netsoc_i1 <= 1'd0;
		netsoc_clk <= 1'd0;
		netsoc_sr <= {netsoc_sr[27:0], netsoc_dqi};
	end else begin
		netsoc_i1 <= (netsoc_i1 + 1'd1);
	end
	if ((((netsoc_bus_cyc & netsoc_bus_stb) & (netsoc_i1 == 2'd3)) & (netsoc_counter == 1'd0))) begin
		netsoc_dq_oe <= 1'd1;
		netsoc_cs_n <= 1'd0;
		netsoc_sr[31:0] <= 32'd4294901503;
	end
	if ((netsoc_counter == 6'd32)) begin
		netsoc_sr[31:8] <= {netsoc_bus_adr, {2{1'd0}}};
	end
	if ((netsoc_counter == 6'd56)) begin
		netsoc_dq_oe <= 1'd0;
	end
	if ((netsoc_counter == 8'd128)) begin
		netsoc_bus_ack <= 1'd1;
		netsoc_cs_n <= 1'd1;
	end
	if ((netsoc_counter == 8'd129)) begin
		netsoc_bus_ack <= 1'd0;
	end
	if ((netsoc_counter == 8'd133)) begin
	end
	if ((netsoc_counter == 8'd133)) begin
		netsoc_counter <= 1'd0;
	end else begin
		if ((netsoc_counter != 1'd0)) begin
			netsoc_counter <= (netsoc_counter + 1'd1);
		end else begin
			if (((netsoc_bus_cyc & netsoc_bus_stb) & (netsoc_i1 == 2'd3))) begin
				netsoc_counter <= 1'd1;
			end
		end
	end
	netsoc_ddrphy_phase_sys <= netsoc_ddrphy_phase_half;
	if ((netsoc_ddrphy_bitslip_cnt == 1'd0)) begin
		netsoc_ddrphy_bitslip_inc <= 1'd0;
	end else begin
		netsoc_ddrphy_bitslip_cnt <= (netsoc_ddrphy_bitslip_cnt + 1'd1);
		netsoc_ddrphy_bitslip_inc <= 1'd1;
	end
	netsoc_ddrphy_record2_wrdata <= netsoc_ddrphy_dfi_p0_wrdata;
	netsoc_ddrphy_record2_wrdata_mask <= netsoc_ddrphy_dfi_p0_wrdata_mask;
	netsoc_ddrphy_record3_wrdata <= netsoc_ddrphy_dfi_p1_wrdata;
	netsoc_ddrphy_record3_wrdata_mask <= netsoc_ddrphy_dfi_p1_wrdata_mask;
	netsoc_ddrphy_drive_dq_n1 <= netsoc_ddrphy_drive_dq_n0;
	netsoc_ddrphy_wrdata_en_d <= netsoc_ddrphy_wrdata_en;
	netsoc_ddrphy_rddata_sr <= {netsoc_ddrphy_rddata_en, netsoc_ddrphy_rddata_sr[4:1]};
	if (netsoc_sdram_inti_p0_rddata_valid) begin
		netsoc_sdram_phaseinjector0_status <= netsoc_sdram_inti_p0_rddata;
	end
	if (netsoc_sdram_inti_p1_rddata_valid) begin
		netsoc_sdram_phaseinjector1_status <= netsoc_sdram_inti_p1_rddata;
	end
	netsoc_sdram_cmd_payload_a <= 11'd1024;
	netsoc_sdram_cmd_payload_ba <= 1'd0;
	netsoc_sdram_cmd_payload_cas <= 1'd0;
	netsoc_sdram_cmd_payload_ras <= 1'd0;
	netsoc_sdram_cmd_payload_we <= 1'd0;
	netsoc_sdram_seq_done <= 1'd0;
	if ((netsoc_sdram_counter == 1'd1)) begin
		netsoc_sdram_cmd_payload_ras <= 1'd1;
		netsoc_sdram_cmd_payload_we <= 1'd1;
	end
	if ((netsoc_sdram_counter == 2'd3)) begin
		netsoc_sdram_cmd_payload_cas <= 1'd1;
		netsoc_sdram_cmd_payload_ras <= 1'd1;
	end
	if ((netsoc_sdram_counter == 4'd14)) begin
		netsoc_sdram_seq_done <= 1'd1;
	end
	if ((netsoc_sdram_counter == 4'd14)) begin
		netsoc_sdram_counter <= 1'd0;
	end else begin
		if ((netsoc_sdram_counter != 1'd0)) begin
			netsoc_sdram_counter <= (netsoc_sdram_counter + 1'd1);
		end else begin
			if (netsoc_sdram_seq_start) begin
				netsoc_sdram_counter <= 1'd1;
			end
		end
	end
	if (netsoc_sdram_wait) begin
		if ((~netsoc_sdram_done)) begin
			netsoc_sdram_count <= (netsoc_sdram_count - 1'd1);
		end
	end else begin
		netsoc_sdram_count <= 10'd585;
	end
	refresher_state <= refresher_next_state;
	if (netsoc_sdram_bankmachine0_track_close) begin
		netsoc_sdram_bankmachine0_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine0_track_open) begin
			netsoc_sdram_bankmachine0_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine0_openrow <= netsoc_sdram_bankmachine0_source_payload_adr[20:8];
		end
	end
	if (((netsoc_sdram_bankmachine0_syncfifo0_we & netsoc_sdram_bankmachine0_syncfifo0_writable) & (~netsoc_sdram_bankmachine0_replace))) begin
		netsoc_sdram_bankmachine0_produce <= (netsoc_sdram_bankmachine0_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine0_do_read) begin
		netsoc_sdram_bankmachine0_consume <= (netsoc_sdram_bankmachine0_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine0_syncfifo0_we & netsoc_sdram_bankmachine0_syncfifo0_writable) & (~netsoc_sdram_bankmachine0_replace))) begin
		if ((~netsoc_sdram_bankmachine0_do_read)) begin
			netsoc_sdram_bankmachine0_level <= (netsoc_sdram_bankmachine0_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine0_do_read) begin
			netsoc_sdram_bankmachine0_level <= (netsoc_sdram_bankmachine0_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine0_wait) begin
		if ((~netsoc_sdram_bankmachine0_done)) begin
			netsoc_sdram_bankmachine0_count <= (netsoc_sdram_bankmachine0_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine0_count <= 3'd4;
	end
	bankmachine0_state <= bankmachine0_next_state;
	if (netsoc_sdram_bankmachine1_track_close) begin
		netsoc_sdram_bankmachine1_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine1_track_open) begin
			netsoc_sdram_bankmachine1_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine1_openrow <= netsoc_sdram_bankmachine1_source_payload_adr[20:8];
		end
	end
	if (((netsoc_sdram_bankmachine1_syncfifo1_we & netsoc_sdram_bankmachine1_syncfifo1_writable) & (~netsoc_sdram_bankmachine1_replace))) begin
		netsoc_sdram_bankmachine1_produce <= (netsoc_sdram_bankmachine1_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine1_do_read) begin
		netsoc_sdram_bankmachine1_consume <= (netsoc_sdram_bankmachine1_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine1_syncfifo1_we & netsoc_sdram_bankmachine1_syncfifo1_writable) & (~netsoc_sdram_bankmachine1_replace))) begin
		if ((~netsoc_sdram_bankmachine1_do_read)) begin
			netsoc_sdram_bankmachine1_level <= (netsoc_sdram_bankmachine1_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine1_do_read) begin
			netsoc_sdram_bankmachine1_level <= (netsoc_sdram_bankmachine1_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine1_wait) begin
		if ((~netsoc_sdram_bankmachine1_done)) begin
			netsoc_sdram_bankmachine1_count <= (netsoc_sdram_bankmachine1_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine1_count <= 3'd4;
	end
	bankmachine1_state <= bankmachine1_next_state;
	if (netsoc_sdram_bankmachine2_track_close) begin
		netsoc_sdram_bankmachine2_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine2_track_open) begin
			netsoc_sdram_bankmachine2_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine2_openrow <= netsoc_sdram_bankmachine2_source_payload_adr[20:8];
		end
	end
	if (((netsoc_sdram_bankmachine2_syncfifo2_we & netsoc_sdram_bankmachine2_syncfifo2_writable) & (~netsoc_sdram_bankmachine2_replace))) begin
		netsoc_sdram_bankmachine2_produce <= (netsoc_sdram_bankmachine2_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine2_do_read) begin
		netsoc_sdram_bankmachine2_consume <= (netsoc_sdram_bankmachine2_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine2_syncfifo2_we & netsoc_sdram_bankmachine2_syncfifo2_writable) & (~netsoc_sdram_bankmachine2_replace))) begin
		if ((~netsoc_sdram_bankmachine2_do_read)) begin
			netsoc_sdram_bankmachine2_level <= (netsoc_sdram_bankmachine2_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine2_do_read) begin
			netsoc_sdram_bankmachine2_level <= (netsoc_sdram_bankmachine2_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine2_wait) begin
		if ((~netsoc_sdram_bankmachine2_done)) begin
			netsoc_sdram_bankmachine2_count <= (netsoc_sdram_bankmachine2_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine2_count <= 3'd4;
	end
	bankmachine2_state <= bankmachine2_next_state;
	if (netsoc_sdram_bankmachine3_track_close) begin
		netsoc_sdram_bankmachine3_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine3_track_open) begin
			netsoc_sdram_bankmachine3_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine3_openrow <= netsoc_sdram_bankmachine3_source_payload_adr[20:8];
		end
	end
	if (((netsoc_sdram_bankmachine3_syncfifo3_we & netsoc_sdram_bankmachine3_syncfifo3_writable) & (~netsoc_sdram_bankmachine3_replace))) begin
		netsoc_sdram_bankmachine3_produce <= (netsoc_sdram_bankmachine3_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine3_do_read) begin
		netsoc_sdram_bankmachine3_consume <= (netsoc_sdram_bankmachine3_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine3_syncfifo3_we & netsoc_sdram_bankmachine3_syncfifo3_writable) & (~netsoc_sdram_bankmachine3_replace))) begin
		if ((~netsoc_sdram_bankmachine3_do_read)) begin
			netsoc_sdram_bankmachine3_level <= (netsoc_sdram_bankmachine3_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine3_do_read) begin
			netsoc_sdram_bankmachine3_level <= (netsoc_sdram_bankmachine3_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine3_wait) begin
		if ((~netsoc_sdram_bankmachine3_done)) begin
			netsoc_sdram_bankmachine3_count <= (netsoc_sdram_bankmachine3_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine3_count <= 3'd4;
	end
	bankmachine3_state <= bankmachine3_next_state;
	if (netsoc_sdram_bankmachine4_track_close) begin
		netsoc_sdram_bankmachine4_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine4_track_open) begin
			netsoc_sdram_bankmachine4_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine4_openrow <= netsoc_sdram_bankmachine4_source_payload_adr[20:8];
		end
	end
	if (((netsoc_sdram_bankmachine4_syncfifo4_we & netsoc_sdram_bankmachine4_syncfifo4_writable) & (~netsoc_sdram_bankmachine4_replace))) begin
		netsoc_sdram_bankmachine4_produce <= (netsoc_sdram_bankmachine4_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine4_do_read) begin
		netsoc_sdram_bankmachine4_consume <= (netsoc_sdram_bankmachine4_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine4_syncfifo4_we & netsoc_sdram_bankmachine4_syncfifo4_writable) & (~netsoc_sdram_bankmachine4_replace))) begin
		if ((~netsoc_sdram_bankmachine4_do_read)) begin
			netsoc_sdram_bankmachine4_level <= (netsoc_sdram_bankmachine4_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine4_do_read) begin
			netsoc_sdram_bankmachine4_level <= (netsoc_sdram_bankmachine4_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine4_wait) begin
		if ((~netsoc_sdram_bankmachine4_done)) begin
			netsoc_sdram_bankmachine4_count <= (netsoc_sdram_bankmachine4_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine4_count <= 3'd4;
	end
	bankmachine4_state <= bankmachine4_next_state;
	if (netsoc_sdram_bankmachine5_track_close) begin
		netsoc_sdram_bankmachine5_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine5_track_open) begin
			netsoc_sdram_bankmachine5_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine5_openrow <= netsoc_sdram_bankmachine5_source_payload_adr[20:8];
		end
	end
	if (((netsoc_sdram_bankmachine5_syncfifo5_we & netsoc_sdram_bankmachine5_syncfifo5_writable) & (~netsoc_sdram_bankmachine5_replace))) begin
		netsoc_sdram_bankmachine5_produce <= (netsoc_sdram_bankmachine5_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine5_do_read) begin
		netsoc_sdram_bankmachine5_consume <= (netsoc_sdram_bankmachine5_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine5_syncfifo5_we & netsoc_sdram_bankmachine5_syncfifo5_writable) & (~netsoc_sdram_bankmachine5_replace))) begin
		if ((~netsoc_sdram_bankmachine5_do_read)) begin
			netsoc_sdram_bankmachine5_level <= (netsoc_sdram_bankmachine5_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine5_do_read) begin
			netsoc_sdram_bankmachine5_level <= (netsoc_sdram_bankmachine5_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine5_wait) begin
		if ((~netsoc_sdram_bankmachine5_done)) begin
			netsoc_sdram_bankmachine5_count <= (netsoc_sdram_bankmachine5_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine5_count <= 3'd4;
	end
	bankmachine5_state <= bankmachine5_next_state;
	if (netsoc_sdram_bankmachine6_track_close) begin
		netsoc_sdram_bankmachine6_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine6_track_open) begin
			netsoc_sdram_bankmachine6_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine6_openrow <= netsoc_sdram_bankmachine6_source_payload_adr[20:8];
		end
	end
	if (((netsoc_sdram_bankmachine6_syncfifo6_we & netsoc_sdram_bankmachine6_syncfifo6_writable) & (~netsoc_sdram_bankmachine6_replace))) begin
		netsoc_sdram_bankmachine6_produce <= (netsoc_sdram_bankmachine6_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine6_do_read) begin
		netsoc_sdram_bankmachine6_consume <= (netsoc_sdram_bankmachine6_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine6_syncfifo6_we & netsoc_sdram_bankmachine6_syncfifo6_writable) & (~netsoc_sdram_bankmachine6_replace))) begin
		if ((~netsoc_sdram_bankmachine6_do_read)) begin
			netsoc_sdram_bankmachine6_level <= (netsoc_sdram_bankmachine6_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine6_do_read) begin
			netsoc_sdram_bankmachine6_level <= (netsoc_sdram_bankmachine6_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine6_wait) begin
		if ((~netsoc_sdram_bankmachine6_done)) begin
			netsoc_sdram_bankmachine6_count <= (netsoc_sdram_bankmachine6_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine6_count <= 3'd4;
	end
	bankmachine6_state <= bankmachine6_next_state;
	if (netsoc_sdram_bankmachine7_track_close) begin
		netsoc_sdram_bankmachine7_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine7_track_open) begin
			netsoc_sdram_bankmachine7_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine7_openrow <= netsoc_sdram_bankmachine7_source_payload_adr[20:8];
		end
	end
	if (((netsoc_sdram_bankmachine7_syncfifo7_we & netsoc_sdram_bankmachine7_syncfifo7_writable) & (~netsoc_sdram_bankmachine7_replace))) begin
		netsoc_sdram_bankmachine7_produce <= (netsoc_sdram_bankmachine7_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine7_do_read) begin
		netsoc_sdram_bankmachine7_consume <= (netsoc_sdram_bankmachine7_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine7_syncfifo7_we & netsoc_sdram_bankmachine7_syncfifo7_writable) & (~netsoc_sdram_bankmachine7_replace))) begin
		if ((~netsoc_sdram_bankmachine7_do_read)) begin
			netsoc_sdram_bankmachine7_level <= (netsoc_sdram_bankmachine7_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine7_do_read) begin
			netsoc_sdram_bankmachine7_level <= (netsoc_sdram_bankmachine7_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine7_wait) begin
		if ((~netsoc_sdram_bankmachine7_done)) begin
			netsoc_sdram_bankmachine7_count <= (netsoc_sdram_bankmachine7_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine7_count <= 3'd4;
	end
	bankmachine7_state <= bankmachine7_next_state;
	if ((~netsoc_sdram_en0)) begin
		netsoc_sdram_time0 <= 5'd31;
	end else begin
		if ((~netsoc_sdram_max_time0)) begin
			netsoc_sdram_time0 <= (netsoc_sdram_time0 - 1'd1);
		end
	end
	if ((~netsoc_sdram_en1)) begin
		netsoc_sdram_time1 <= 4'd15;
	end else begin
		if ((~netsoc_sdram_max_time1)) begin
			netsoc_sdram_time1 <= (netsoc_sdram_time1 - 1'd1);
		end
	end
	if (netsoc_sdram_choose_cmd_ce) begin
		case (netsoc_sdram_choose_cmd_grant)
			1'd0: begin
				if (netsoc_sdram_choose_cmd_request[1]) begin
					netsoc_sdram_choose_cmd_grant <= 1'd1;
				end else begin
					if (netsoc_sdram_choose_cmd_request[2]) begin
						netsoc_sdram_choose_cmd_grant <= 2'd2;
					end else begin
						if (netsoc_sdram_choose_cmd_request[3]) begin
							netsoc_sdram_choose_cmd_grant <= 2'd3;
						end else begin
							if (netsoc_sdram_choose_cmd_request[4]) begin
								netsoc_sdram_choose_cmd_grant <= 3'd4;
							end else begin
								if (netsoc_sdram_choose_cmd_request[5]) begin
									netsoc_sdram_choose_cmd_grant <= 3'd5;
								end else begin
									if (netsoc_sdram_choose_cmd_request[6]) begin
										netsoc_sdram_choose_cmd_grant <= 3'd6;
									end else begin
										if (netsoc_sdram_choose_cmd_request[7]) begin
											netsoc_sdram_choose_cmd_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (netsoc_sdram_choose_cmd_request[2]) begin
					netsoc_sdram_choose_cmd_grant <= 2'd2;
				end else begin
					if (netsoc_sdram_choose_cmd_request[3]) begin
						netsoc_sdram_choose_cmd_grant <= 2'd3;
					end else begin
						if (netsoc_sdram_choose_cmd_request[4]) begin
							netsoc_sdram_choose_cmd_grant <= 3'd4;
						end else begin
							if (netsoc_sdram_choose_cmd_request[5]) begin
								netsoc_sdram_choose_cmd_grant <= 3'd5;
							end else begin
								if (netsoc_sdram_choose_cmd_request[6]) begin
									netsoc_sdram_choose_cmd_grant <= 3'd6;
								end else begin
									if (netsoc_sdram_choose_cmd_request[7]) begin
										netsoc_sdram_choose_cmd_grant <= 3'd7;
									end else begin
										if (netsoc_sdram_choose_cmd_request[0]) begin
											netsoc_sdram_choose_cmd_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (netsoc_sdram_choose_cmd_request[3]) begin
					netsoc_sdram_choose_cmd_grant <= 2'd3;
				end else begin
					if (netsoc_sdram_choose_cmd_request[4]) begin
						netsoc_sdram_choose_cmd_grant <= 3'd4;
					end else begin
						if (netsoc_sdram_choose_cmd_request[5]) begin
							netsoc_sdram_choose_cmd_grant <= 3'd5;
						end else begin
							if (netsoc_sdram_choose_cmd_request[6]) begin
								netsoc_sdram_choose_cmd_grant <= 3'd6;
							end else begin
								if (netsoc_sdram_choose_cmd_request[7]) begin
									netsoc_sdram_choose_cmd_grant <= 3'd7;
								end else begin
									if (netsoc_sdram_choose_cmd_request[0]) begin
										netsoc_sdram_choose_cmd_grant <= 1'd0;
									end else begin
										if (netsoc_sdram_choose_cmd_request[1]) begin
											netsoc_sdram_choose_cmd_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (netsoc_sdram_choose_cmd_request[4]) begin
					netsoc_sdram_choose_cmd_grant <= 3'd4;
				end else begin
					if (netsoc_sdram_choose_cmd_request[5]) begin
						netsoc_sdram_choose_cmd_grant <= 3'd5;
					end else begin
						if (netsoc_sdram_choose_cmd_request[6]) begin
							netsoc_sdram_choose_cmd_grant <= 3'd6;
						end else begin
							if (netsoc_sdram_choose_cmd_request[7]) begin
								netsoc_sdram_choose_cmd_grant <= 3'd7;
							end else begin
								if (netsoc_sdram_choose_cmd_request[0]) begin
									netsoc_sdram_choose_cmd_grant <= 1'd0;
								end else begin
									if (netsoc_sdram_choose_cmd_request[1]) begin
										netsoc_sdram_choose_cmd_grant <= 1'd1;
									end else begin
										if (netsoc_sdram_choose_cmd_request[2]) begin
											netsoc_sdram_choose_cmd_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (netsoc_sdram_choose_cmd_request[5]) begin
					netsoc_sdram_choose_cmd_grant <= 3'd5;
				end else begin
					if (netsoc_sdram_choose_cmd_request[6]) begin
						netsoc_sdram_choose_cmd_grant <= 3'd6;
					end else begin
						if (netsoc_sdram_choose_cmd_request[7]) begin
							netsoc_sdram_choose_cmd_grant <= 3'd7;
						end else begin
							if (netsoc_sdram_choose_cmd_request[0]) begin
								netsoc_sdram_choose_cmd_grant <= 1'd0;
							end else begin
								if (netsoc_sdram_choose_cmd_request[1]) begin
									netsoc_sdram_choose_cmd_grant <= 1'd1;
								end else begin
									if (netsoc_sdram_choose_cmd_request[2]) begin
										netsoc_sdram_choose_cmd_grant <= 2'd2;
									end else begin
										if (netsoc_sdram_choose_cmd_request[3]) begin
											netsoc_sdram_choose_cmd_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (netsoc_sdram_choose_cmd_request[6]) begin
					netsoc_sdram_choose_cmd_grant <= 3'd6;
				end else begin
					if (netsoc_sdram_choose_cmd_request[7]) begin
						netsoc_sdram_choose_cmd_grant <= 3'd7;
					end else begin
						if (netsoc_sdram_choose_cmd_request[0]) begin
							netsoc_sdram_choose_cmd_grant <= 1'd0;
						end else begin
							if (netsoc_sdram_choose_cmd_request[1]) begin
								netsoc_sdram_choose_cmd_grant <= 1'd1;
							end else begin
								if (netsoc_sdram_choose_cmd_request[2]) begin
									netsoc_sdram_choose_cmd_grant <= 2'd2;
								end else begin
									if (netsoc_sdram_choose_cmd_request[3]) begin
										netsoc_sdram_choose_cmd_grant <= 2'd3;
									end else begin
										if (netsoc_sdram_choose_cmd_request[4]) begin
											netsoc_sdram_choose_cmd_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (netsoc_sdram_choose_cmd_request[7]) begin
					netsoc_sdram_choose_cmd_grant <= 3'd7;
				end else begin
					if (netsoc_sdram_choose_cmd_request[0]) begin
						netsoc_sdram_choose_cmd_grant <= 1'd0;
					end else begin
						if (netsoc_sdram_choose_cmd_request[1]) begin
							netsoc_sdram_choose_cmd_grant <= 1'd1;
						end else begin
							if (netsoc_sdram_choose_cmd_request[2]) begin
								netsoc_sdram_choose_cmd_grant <= 2'd2;
							end else begin
								if (netsoc_sdram_choose_cmd_request[3]) begin
									netsoc_sdram_choose_cmd_grant <= 2'd3;
								end else begin
									if (netsoc_sdram_choose_cmd_request[4]) begin
										netsoc_sdram_choose_cmd_grant <= 3'd4;
									end else begin
										if (netsoc_sdram_choose_cmd_request[5]) begin
											netsoc_sdram_choose_cmd_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (netsoc_sdram_choose_cmd_request[0]) begin
					netsoc_sdram_choose_cmd_grant <= 1'd0;
				end else begin
					if (netsoc_sdram_choose_cmd_request[1]) begin
						netsoc_sdram_choose_cmd_grant <= 1'd1;
					end else begin
						if (netsoc_sdram_choose_cmd_request[2]) begin
							netsoc_sdram_choose_cmd_grant <= 2'd2;
						end else begin
							if (netsoc_sdram_choose_cmd_request[3]) begin
								netsoc_sdram_choose_cmd_grant <= 2'd3;
							end else begin
								if (netsoc_sdram_choose_cmd_request[4]) begin
									netsoc_sdram_choose_cmd_grant <= 3'd4;
								end else begin
									if (netsoc_sdram_choose_cmd_request[5]) begin
										netsoc_sdram_choose_cmd_grant <= 3'd5;
									end else begin
										if (netsoc_sdram_choose_cmd_request[6]) begin
											netsoc_sdram_choose_cmd_grant <= 3'd6;
										end
									end
								end
							end
						end
					end
				end
			end
		endcase
	end
	if (netsoc_sdram_choose_req_ce) begin
		case (netsoc_sdram_choose_req_grant)
			1'd0: begin
				if (netsoc_sdram_choose_req_request[1]) begin
					netsoc_sdram_choose_req_grant <= 1'd1;
				end else begin
					if (netsoc_sdram_choose_req_request[2]) begin
						netsoc_sdram_choose_req_grant <= 2'd2;
					end else begin
						if (netsoc_sdram_choose_req_request[3]) begin
							netsoc_sdram_choose_req_grant <= 2'd3;
						end else begin
							if (netsoc_sdram_choose_req_request[4]) begin
								netsoc_sdram_choose_req_grant <= 3'd4;
							end else begin
								if (netsoc_sdram_choose_req_request[5]) begin
									netsoc_sdram_choose_req_grant <= 3'd5;
								end else begin
									if (netsoc_sdram_choose_req_request[6]) begin
										netsoc_sdram_choose_req_grant <= 3'd6;
									end else begin
										if (netsoc_sdram_choose_req_request[7]) begin
											netsoc_sdram_choose_req_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (netsoc_sdram_choose_req_request[2]) begin
					netsoc_sdram_choose_req_grant <= 2'd2;
				end else begin
					if (netsoc_sdram_choose_req_request[3]) begin
						netsoc_sdram_choose_req_grant <= 2'd3;
					end else begin
						if (netsoc_sdram_choose_req_request[4]) begin
							netsoc_sdram_choose_req_grant <= 3'd4;
						end else begin
							if (netsoc_sdram_choose_req_request[5]) begin
								netsoc_sdram_choose_req_grant <= 3'd5;
							end else begin
								if (netsoc_sdram_choose_req_request[6]) begin
									netsoc_sdram_choose_req_grant <= 3'd6;
								end else begin
									if (netsoc_sdram_choose_req_request[7]) begin
										netsoc_sdram_choose_req_grant <= 3'd7;
									end else begin
										if (netsoc_sdram_choose_req_request[0]) begin
											netsoc_sdram_choose_req_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (netsoc_sdram_choose_req_request[3]) begin
					netsoc_sdram_choose_req_grant <= 2'd3;
				end else begin
					if (netsoc_sdram_choose_req_request[4]) begin
						netsoc_sdram_choose_req_grant <= 3'd4;
					end else begin
						if (netsoc_sdram_choose_req_request[5]) begin
							netsoc_sdram_choose_req_grant <= 3'd5;
						end else begin
							if (netsoc_sdram_choose_req_request[6]) begin
								netsoc_sdram_choose_req_grant <= 3'd6;
							end else begin
								if (netsoc_sdram_choose_req_request[7]) begin
									netsoc_sdram_choose_req_grant <= 3'd7;
								end else begin
									if (netsoc_sdram_choose_req_request[0]) begin
										netsoc_sdram_choose_req_grant <= 1'd0;
									end else begin
										if (netsoc_sdram_choose_req_request[1]) begin
											netsoc_sdram_choose_req_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (netsoc_sdram_choose_req_request[4]) begin
					netsoc_sdram_choose_req_grant <= 3'd4;
				end else begin
					if (netsoc_sdram_choose_req_request[5]) begin
						netsoc_sdram_choose_req_grant <= 3'd5;
					end else begin
						if (netsoc_sdram_choose_req_request[6]) begin
							netsoc_sdram_choose_req_grant <= 3'd6;
						end else begin
							if (netsoc_sdram_choose_req_request[7]) begin
								netsoc_sdram_choose_req_grant <= 3'd7;
							end else begin
								if (netsoc_sdram_choose_req_request[0]) begin
									netsoc_sdram_choose_req_grant <= 1'd0;
								end else begin
									if (netsoc_sdram_choose_req_request[1]) begin
										netsoc_sdram_choose_req_grant <= 1'd1;
									end else begin
										if (netsoc_sdram_choose_req_request[2]) begin
											netsoc_sdram_choose_req_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (netsoc_sdram_choose_req_request[5]) begin
					netsoc_sdram_choose_req_grant <= 3'd5;
				end else begin
					if (netsoc_sdram_choose_req_request[6]) begin
						netsoc_sdram_choose_req_grant <= 3'd6;
					end else begin
						if (netsoc_sdram_choose_req_request[7]) begin
							netsoc_sdram_choose_req_grant <= 3'd7;
						end else begin
							if (netsoc_sdram_choose_req_request[0]) begin
								netsoc_sdram_choose_req_grant <= 1'd0;
							end else begin
								if (netsoc_sdram_choose_req_request[1]) begin
									netsoc_sdram_choose_req_grant <= 1'd1;
								end else begin
									if (netsoc_sdram_choose_req_request[2]) begin
										netsoc_sdram_choose_req_grant <= 2'd2;
									end else begin
										if (netsoc_sdram_choose_req_request[3]) begin
											netsoc_sdram_choose_req_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (netsoc_sdram_choose_req_request[6]) begin
					netsoc_sdram_choose_req_grant <= 3'd6;
				end else begin
					if (netsoc_sdram_choose_req_request[7]) begin
						netsoc_sdram_choose_req_grant <= 3'd7;
					end else begin
						if (netsoc_sdram_choose_req_request[0]) begin
							netsoc_sdram_choose_req_grant <= 1'd0;
						end else begin
							if (netsoc_sdram_choose_req_request[1]) begin
								netsoc_sdram_choose_req_grant <= 1'd1;
							end else begin
								if (netsoc_sdram_choose_req_request[2]) begin
									netsoc_sdram_choose_req_grant <= 2'd2;
								end else begin
									if (netsoc_sdram_choose_req_request[3]) begin
										netsoc_sdram_choose_req_grant <= 2'd3;
									end else begin
										if (netsoc_sdram_choose_req_request[4]) begin
											netsoc_sdram_choose_req_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (netsoc_sdram_choose_req_request[7]) begin
					netsoc_sdram_choose_req_grant <= 3'd7;
				end else begin
					if (netsoc_sdram_choose_req_request[0]) begin
						netsoc_sdram_choose_req_grant <= 1'd0;
					end else begin
						if (netsoc_sdram_choose_req_request[1]) begin
							netsoc_sdram_choose_req_grant <= 1'd1;
						end else begin
							if (netsoc_sdram_choose_req_request[2]) begin
								netsoc_sdram_choose_req_grant <= 2'd2;
							end else begin
								if (netsoc_sdram_choose_req_request[3]) begin
									netsoc_sdram_choose_req_grant <= 2'd3;
								end else begin
									if (netsoc_sdram_choose_req_request[4]) begin
										netsoc_sdram_choose_req_grant <= 3'd4;
									end else begin
										if (netsoc_sdram_choose_req_request[5]) begin
											netsoc_sdram_choose_req_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (netsoc_sdram_choose_req_request[0]) begin
					netsoc_sdram_choose_req_grant <= 1'd0;
				end else begin
					if (netsoc_sdram_choose_req_request[1]) begin
						netsoc_sdram_choose_req_grant <= 1'd1;
					end else begin
						if (netsoc_sdram_choose_req_request[2]) begin
							netsoc_sdram_choose_req_grant <= 2'd2;
						end else begin
							if (netsoc_sdram_choose_req_request[3]) begin
								netsoc_sdram_choose_req_grant <= 2'd3;
							end else begin
								if (netsoc_sdram_choose_req_request[4]) begin
									netsoc_sdram_choose_req_grant <= 3'd4;
								end else begin
									if (netsoc_sdram_choose_req_request[5]) begin
										netsoc_sdram_choose_req_grant <= 3'd5;
									end else begin
										if (netsoc_sdram_choose_req_request[6]) begin
											netsoc_sdram_choose_req_grant <= 3'd6;
										end
									end
								end
							end
						end
					end
				end
			end
		endcase
	end
	netsoc_sdram_dfi_p0_address <= array_muxed7;
	netsoc_sdram_dfi_p0_bank <= array_muxed8;
	netsoc_sdram_dfi_p0_cas_n <= (~array_muxed9);
	netsoc_sdram_dfi_p0_ras_n <= (~array_muxed10);
	netsoc_sdram_dfi_p0_we_n <= (~array_muxed11);
	netsoc_sdram_dfi_p0_rddata_en <= array_muxed12;
	netsoc_sdram_dfi_p0_wrdata_en <= array_muxed13;
	netsoc_sdram_dfi_p1_address <= array_muxed14;
	netsoc_sdram_dfi_p1_bank <= array_muxed15;
	netsoc_sdram_dfi_p1_cas_n <= (~array_muxed16);
	netsoc_sdram_dfi_p1_ras_n <= (~array_muxed17);
	netsoc_sdram_dfi_p1_we_n <= (~array_muxed18);
	netsoc_sdram_dfi_p1_rddata_en <= array_muxed19;
	netsoc_sdram_dfi_p1_wrdata_en <= array_muxed20;
	multiplexer_state <= multiplexer_next_state;
	netsoc_sdram_bandwidth_cmd_valid <= netsoc_sdram_choose_req_cmd_valid;
	netsoc_sdram_bandwidth_cmd_ready <= netsoc_sdram_choose_req_cmd_ready;
	netsoc_sdram_bandwidth_cmd_is_read <= netsoc_sdram_choose_req_cmd_payload_is_read;
	netsoc_sdram_bandwidth_cmd_is_write <= netsoc_sdram_choose_req_cmd_payload_is_write;
	{netsoc_sdram_bandwidth_period, netsoc_sdram_bandwidth_counter} <= (netsoc_sdram_bandwidth_counter + 1'd1);
	if (netsoc_sdram_bandwidth_period) begin
		netsoc_sdram_bandwidth_nreads_r <= netsoc_sdram_bandwidth_nreads;
		netsoc_sdram_bandwidth_nwrites_r <= netsoc_sdram_bandwidth_nwrites;
		netsoc_sdram_bandwidth_nreads <= 1'd0;
		netsoc_sdram_bandwidth_nwrites <= 1'd0;
	end else begin
		if ((netsoc_sdram_bandwidth_cmd_valid & netsoc_sdram_bandwidth_cmd_ready)) begin
			if (netsoc_sdram_bandwidth_cmd_is_read) begin
				netsoc_sdram_bandwidth_nreads <= (netsoc_sdram_bandwidth_nreads + 1'd1);
			end
			if (netsoc_sdram_bandwidth_cmd_is_write) begin
				netsoc_sdram_bandwidth_nwrites <= (netsoc_sdram_bandwidth_nwrites + 1'd1);
			end
		end
	end
	if (netsoc_sdram_bandwidth_update_re) begin
		netsoc_sdram_bandwidth_nreads_status <= netsoc_sdram_bandwidth_nreads_r;
		netsoc_sdram_bandwidth_nwrites_status <= netsoc_sdram_bandwidth_nwrites_r;
	end
	new_master_wdata_ready <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & netsoc_sdram_interface_bank0_wdata_ready)) | ((roundrobin1_grant == 1'd0) & netsoc_sdram_interface_bank1_wdata_ready)) | ((roundrobin2_grant == 1'd0) & netsoc_sdram_interface_bank2_wdata_ready)) | ((roundrobin3_grant == 1'd0) & netsoc_sdram_interface_bank3_wdata_ready)) | ((roundrobin4_grant == 1'd0) & netsoc_sdram_interface_bank4_wdata_ready)) | ((roundrobin5_grant == 1'd0) & netsoc_sdram_interface_bank5_wdata_ready)) | ((roundrobin6_grant == 1'd0) & netsoc_sdram_interface_bank6_wdata_ready)) | ((roundrobin7_grant == 1'd0) & netsoc_sdram_interface_bank7_wdata_ready));
	new_master_rdata_valid0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & netsoc_sdram_interface_bank0_rdata_valid)) | ((roundrobin1_grant == 1'd0) & netsoc_sdram_interface_bank1_rdata_valid)) | ((roundrobin2_grant == 1'd0) & netsoc_sdram_interface_bank2_rdata_valid)) | ((roundrobin3_grant == 1'd0) & netsoc_sdram_interface_bank3_rdata_valid)) | ((roundrobin4_grant == 1'd0) & netsoc_sdram_interface_bank4_rdata_valid)) | ((roundrobin5_grant == 1'd0) & netsoc_sdram_interface_bank5_rdata_valid)) | ((roundrobin6_grant == 1'd0) & netsoc_sdram_interface_bank6_rdata_valid)) | ((roundrobin7_grant == 1'd0) & netsoc_sdram_interface_bank7_rdata_valid));
	new_master_rdata_valid1 <= new_master_rdata_valid0;
	new_master_rdata_valid2 <= new_master_rdata_valid1;
	new_master_rdata_valid3 <= new_master_rdata_valid2;
	new_master_rdata_valid4 <= new_master_rdata_valid3;
	new_master_rdata_valid5 <= new_master_rdata_valid4;
	netsoc_adr_offset_r <= netsoc_interface0_wb_sdram_adr[0];
	cache_state <= cache_next_state;
	litedramwishbonebridge_state <= litedramwishbonebridge_next_state;
	if (ethphy_update_mode) begin
		ethphy_mode0 <= ethphy_mode1;
	end
	if (ethphy_sys_counter_reset) begin
		ethphy_sys_counter <= 1'd0;
	end else begin
		if (ethphy_sys_counter_ce) begin
			ethphy_sys_counter <= (ethphy_sys_counter + 1'd1);
		end
	end
	ethphy_toggle_o_r <= ethphy_toggle_o;
	liteethphygmiimii_state <= liteethphygmiimii_next_state;
	if (ethphy_counter_ce) begin
		ethphy_counter <= (ethphy_counter + 1'd1);
	end
	if (ethmac_ps_preamble_error_o) begin
		ethmac_preamble_errors_status <= (ethmac_preamble_errors_status + 1'd1);
	end
	if (ethmac_ps_crc_error_o) begin
		ethmac_crc_errors_status <= (ethmac_crc_errors_status + 1'd1);
	end
	ethmac_ps_preamble_error_toggle_o_r <= ethmac_ps_preamble_error_toggle_o;
	ethmac_ps_crc_error_toggle_o_r <= ethmac_ps_crc_error_toggle_o;
	ethmac_tx_cdc_graycounter0_q_binary <= ethmac_tx_cdc_graycounter0_q_next_binary;
	ethmac_tx_cdc_graycounter0_q <= ethmac_tx_cdc_graycounter0_q_next;
	ethmac_rx_cdc_graycounter1_q_binary <= ethmac_rx_cdc_graycounter1_q_next_binary;
	ethmac_rx_cdc_graycounter1_q <= ethmac_rx_cdc_graycounter1_q_next;
	if (ethmac_writer_counter_reset) begin
		ethmac_writer_counter <= 1'd0;
	end else begin
		if (ethmac_writer_counter_ce) begin
			ethmac_writer_counter <= (ethmac_writer_counter + ethmac_writer_increment);
		end
	end
	if (ethmac_writer_slot_ce) begin
		ethmac_writer_slot <= (ethmac_writer_slot + 1'd1);
	end
	if (((ethmac_writer_fifo_syncfifo_we & ethmac_writer_fifo_syncfifo_writable) & (~ethmac_writer_fifo_replace))) begin
		ethmac_writer_fifo_produce <= (ethmac_writer_fifo_produce + 1'd1);
	end
	if (ethmac_writer_fifo_do_read) begin
		ethmac_writer_fifo_consume <= (ethmac_writer_fifo_consume + 1'd1);
	end
	if (((ethmac_writer_fifo_syncfifo_we & ethmac_writer_fifo_syncfifo_writable) & (~ethmac_writer_fifo_replace))) begin
		if ((~ethmac_writer_fifo_do_read)) begin
			ethmac_writer_fifo_level <= (ethmac_writer_fifo_level + 1'd1);
		end
	end else begin
		if (ethmac_writer_fifo_do_read) begin
			ethmac_writer_fifo_level <= (ethmac_writer_fifo_level - 1'd1);
		end
	end
	liteethmacsramwriter_state <= liteethmacsramwriter_next_state;
	if (ethmac_writer_errors_status_next_value_ce) begin
		ethmac_writer_errors_status <= ethmac_writer_errors_status_next_value;
	end
	if (ethmac_reader_counter_reset) begin
		ethmac_reader_counter <= 1'd0;
	end else begin
		if (ethmac_reader_counter_ce) begin
			ethmac_reader_counter <= (ethmac_reader_counter + 3'd4);
		end
	end
	ethmac_reader_last_d <= ethmac_reader_last;
	if (ethmac_reader_done_clear) begin
		ethmac_reader_done_pending <= 1'd0;
	end
	if (ethmac_reader_done_trigger) begin
		ethmac_reader_done_pending <= 1'd1;
	end
	if (((ethmac_reader_fifo_syncfifo_we & ethmac_reader_fifo_syncfifo_writable) & (~ethmac_reader_fifo_replace))) begin
		ethmac_reader_fifo_produce <= (ethmac_reader_fifo_produce + 1'd1);
	end
	if (ethmac_reader_fifo_do_read) begin
		ethmac_reader_fifo_consume <= (ethmac_reader_fifo_consume + 1'd1);
	end
	if (((ethmac_reader_fifo_syncfifo_we & ethmac_reader_fifo_syncfifo_writable) & (~ethmac_reader_fifo_replace))) begin
		if ((~ethmac_reader_fifo_do_read)) begin
			ethmac_reader_fifo_level <= (ethmac_reader_fifo_level + 1'd1);
		end
	end else begin
		if (ethmac_reader_fifo_do_read) begin
			ethmac_reader_fifo_level <= (ethmac_reader_fifo_level - 1'd1);
		end
	end
	liteethmacsramreader_state <= liteethmacsramreader_next_state;
	ethmac_sram0_bus_ack0 <= 1'd0;
	if (((ethmac_sram0_bus_cyc0 & ethmac_sram0_bus_stb0) & (~ethmac_sram0_bus_ack0))) begin
		ethmac_sram0_bus_ack0 <= 1'd1;
	end
	ethmac_sram1_bus_ack0 <= 1'd0;
	if (((ethmac_sram1_bus_cyc0 & ethmac_sram1_bus_stb0) & (~ethmac_sram1_bus_ack0))) begin
		ethmac_sram1_bus_ack0 <= 1'd1;
	end
	ethmac_sram0_bus_ack1 <= 1'd0;
	if (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & (~ethmac_sram0_bus_ack1))) begin
		ethmac_sram0_bus_ack1 <= 1'd1;
	end
	ethmac_sram1_bus_ack1 <= 1'd0;
	if (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & (~ethmac_sram1_bus_ack1))) begin
		ethmac_sram1_bus_ack1 <= 1'd1;
	end
	ethmac_slave_sel_r <= ethmac_slave_sel;
	case (netsoc_grant)
		1'd0: begin
			if ((~netsoc_request[0])) begin
				if (netsoc_request[1]) begin
					netsoc_grant <= 1'd1;
				end
			end
		end
		1'd1: begin
			if ((~netsoc_request[1])) begin
				if (netsoc_request[0]) begin
					netsoc_grant <= 1'd0;
				end
			end
		end
	endcase
	netsoc_slave_sel_r <= netsoc_slave_sel;
	netsoc_interface0_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank0_sel) begin
		case (netsoc_interface0_bank_bus_adr[4:0])
			1'd0: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_writer_slot_w;
			end
			1'd1: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_writer_length3_w;
			end
			2'd2: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_writer_length2_w;
			end
			2'd3: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_writer_length1_w;
			end
			3'd4: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_writer_length0_w;
			end
			3'd5: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_writer_errors3_w;
			end
			3'd6: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_writer_errors2_w;
			end
			3'd7: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_writer_errors1_w;
			end
			4'd8: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_writer_errors0_w;
			end
			4'd9: begin
				netsoc_interface0_bank_bus_dat_r <= ethmac_writer_status_w;
			end
			4'd10: begin
				netsoc_interface0_bank_bus_dat_r <= ethmac_writer_pending_w;
			end
			4'd11: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_writer_ev_enable0_w;
			end
			4'd12: begin
				netsoc_interface0_bank_bus_dat_r <= ethmac_reader_start_w;
			end
			4'd13: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_reader_ready_w;
			end
			4'd14: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_reader_level_w;
			end
			4'd15: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_reader_slot0_w;
			end
			5'd16: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_reader_length1_w;
			end
			5'd17: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_reader_length0_w;
			end
			5'd18: begin
				netsoc_interface0_bank_bus_dat_r <= ethmac_reader_eventmanager_status_w;
			end
			5'd19: begin
				netsoc_interface0_bank_bus_dat_r <= ethmac_reader_eventmanager_pending_w;
			end
			5'd20: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_sram_reader_ev_enable0_w;
			end
			5'd21: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_preamble_crc_w;
			end
			5'd22: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_preamble_errors3_w;
			end
			5'd23: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_preamble_errors2_w;
			end
			5'd24: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_preamble_errors1_w;
			end
			5'd25: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_preamble_errors0_w;
			end
			5'd26: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_crc_errors3_w;
			end
			5'd27: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_crc_errors2_w;
			end
			5'd28: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_crc_errors1_w;
			end
			5'd29: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_crc_errors0_w;
			end
		endcase
	end
	if (netsoc_csrbank0_sram_writer_ev_enable0_re) begin
		ethmac_writer_storage_full <= netsoc_csrbank0_sram_writer_ev_enable0_r;
	end
	ethmac_writer_re <= netsoc_csrbank0_sram_writer_ev_enable0_re;
	if (netsoc_csrbank0_sram_reader_slot0_re) begin
		ethmac_reader_slot_storage_full <= netsoc_csrbank0_sram_reader_slot0_r;
	end
	ethmac_reader_slot_re <= netsoc_csrbank0_sram_reader_slot0_re;
	if (netsoc_csrbank0_sram_reader_length1_re) begin
		ethmac_reader_length_storage_full[10:8] <= netsoc_csrbank0_sram_reader_length1_r;
	end
	if (netsoc_csrbank0_sram_reader_length0_re) begin
		ethmac_reader_length_storage_full[7:0] <= netsoc_csrbank0_sram_reader_length0_r;
	end
	ethmac_reader_length_re <= netsoc_csrbank0_sram_reader_length0_re;
	if (netsoc_csrbank0_sram_reader_ev_enable0_re) begin
		ethmac_reader_eventmanager_storage_full <= netsoc_csrbank0_sram_reader_ev_enable0_r;
	end
	ethmac_reader_eventmanager_re <= netsoc_csrbank0_sram_reader_ev_enable0_re;
	netsoc_interface1_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank1_sel) begin
		case (netsoc_interface1_bank_bus_adr[1:0])
			1'd0: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_csrbank1_mode_detection_mode_w;
			end
			1'd1: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_csrbank1_crg_reset0_w;
			end
			2'd2: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_csrbank1_mdio_w0_w;
			end
			2'd3: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_csrbank1_mdio_r_w;
			end
		endcase
	end
	if (netsoc_csrbank1_crg_reset0_re) begin
		ethphy_reset_storage_full <= netsoc_csrbank1_crg_reset0_r;
	end
	ethphy_reset_re <= netsoc_csrbank1_crg_reset0_re;
	if (netsoc_csrbank1_mdio_w0_re) begin
		ethphy_storage_full[2:0] <= netsoc_csrbank1_mdio_w0_r;
	end
	ethphy_re <= netsoc_csrbank1_mdio_w0_re;
	netsoc_sel_r <= netsoc_sel;
	netsoc_interface2_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank2_sel) begin
		case (netsoc_interface2_bank_bus_adr[5:0])
			1'd0: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_dna_id7_w;
			end
			1'd1: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_dna_id6_w;
			end
			2'd2: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_dna_id5_w;
			end
			2'd3: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_dna_id4_w;
			end
			3'd4: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_dna_id3_w;
			end
			3'd5: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_dna_id2_w;
			end
			3'd6: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_dna_id1_w;
			end
			3'd7: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_dna_id0_w;
			end
			4'd8: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit19_w;
			end
			4'd9: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit18_w;
			end
			4'd10: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit17_w;
			end
			4'd11: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit16_w;
			end
			4'd12: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit15_w;
			end
			4'd13: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit14_w;
			end
			4'd14: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit13_w;
			end
			4'd15: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit12_w;
			end
			5'd16: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit11_w;
			end
			5'd17: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit10_w;
			end
			5'd18: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit9_w;
			end
			5'd19: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit8_w;
			end
			5'd20: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit7_w;
			end
			5'd21: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit6_w;
			end
			5'd22: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit5_w;
			end
			5'd23: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit4_w;
			end
			5'd24: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit3_w;
			end
			5'd25: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit2_w;
			end
			5'd26: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit1_w;
			end
			5'd27: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_git_commit0_w;
			end
			5'd28: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_platform7_w;
			end
			5'd29: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_platform6_w;
			end
			5'd30: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_platform5_w;
			end
			5'd31: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_platform4_w;
			end
			6'd32: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_platform3_w;
			end
			6'd33: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_platform2_w;
			end
			6'd34: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_platform1_w;
			end
			6'd35: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_platform0_w;
			end
			6'd36: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_target7_w;
			end
			6'd37: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_target6_w;
			end
			6'd38: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_target5_w;
			end
			6'd39: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_target4_w;
			end
			6'd40: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_target3_w;
			end
			6'd41: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_target2_w;
			end
			6'd42: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_target1_w;
			end
			6'd43: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_platform_target0_w;
			end
		endcase
	end
	netsoc_interface3_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank3_sel) begin
		case (netsoc_interface3_bank_bus_adr[5:0])
			1'd0: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_control0_w;
			end
			1'd1: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi0_command0_w;
			end
			2'd2: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_sdram_phaseinjector0_command_issue_w;
			end
			2'd3: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi0_address1_w;
			end
			3'd4: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi0_address0_w;
			end
			3'd5: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi0_wrdata3_w;
			end
			3'd7: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi0_wrdata2_w;
			end
			4'd8: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi0_wrdata1_w;
			end
			4'd9: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi0_wrdata0_w;
			end
			4'd10: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi0_rddata3_w;
			end
			4'd11: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi0_rddata2_w;
			end
			4'd12: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi0_rddata1_w;
			end
			4'd13: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi0_rddata0_w;
			end
			4'd14: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi1_command0_w;
			end
			4'd15: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_sdram_phaseinjector1_command_issue_w;
			end
			5'd16: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi1_address1_w;
			end
			5'd17: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi1_address0_w;
			end
			5'd18: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi1_baddress0_w;
			end
			5'd19: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi1_wrdata3_w;
			end
			5'd20: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi1_wrdata2_w;
			end
			5'd21: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi1_wrdata1_w;
			end
			5'd22: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi1_wrdata0_w;
			end
			5'd23: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi1_rddata3_w;
			end
			5'd24: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi1_rddata2_w;
			end
			5'd25: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi1_rddata1_w;
			end
			5'd26: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_dfii_pi1_rddata0_w;
			end
			5'd27: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_sdram_bandwidth_update_w;
			end
			5'd28: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_controller_bandwidth_nreads2_w;
			end
			5'd29: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_controller_bandwidth_nreads1_w;
			end
			5'd30: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_controller_bandwidth_nreads0_w;
			end
			5'd31: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_controller_bandwidth_nwrites2_w;
			end
			6'd32: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_controller_bandwidth_nwrites1_w;
			end
			6'd33: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_controller_bandwidth_nwrites0_w;
			end
			6'd34: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_controller_bandwidth_data_width_w;
			end
		endcase
	end
	if (netsoc_csrbank3_dfii_control0_re) begin
		netsoc_sdram_storage_full[3:0] <= netsoc_csrbank3_dfii_control0_r;
	end
	netsoc_sdram_re <= netsoc_csrbank3_dfii_control0_re;
	if (netsoc_csrbank3_dfii_pi0_command0_re) begin
		netsoc_sdram_phaseinjector0_command_storage_full[5:0] <= netsoc_csrbank3_dfii_pi0_command0_r;
	end
	netsoc_sdram_phaseinjector0_command_re <= netsoc_csrbank3_dfii_pi0_command0_re;
	if (netsoc_csrbank3_dfii_pi0_address1_re) begin
		netsoc_sdram_phaseinjector0_address_storage_full[12:8] <= netsoc_csrbank3_dfii_pi0_address1_r;
	end
	if (netsoc_csrbank3_dfii_pi0_address0_re) begin
		netsoc_sdram_phaseinjector0_address_storage_full[7:0] <= netsoc_csrbank3_dfii_pi0_address0_r;
	end
	netsoc_sdram_phaseinjector0_address_re <= netsoc_csrbank3_dfii_pi0_address0_re;
	if (netsoc_csrbank3_dfii_pi0_baddress0_re) begin
		netsoc_sdram_phaseinjector0_baddress_storage_full[2:0] <= netsoc_csrbank3_dfii_pi0_baddress0_r;
	end
	netsoc_sdram_phaseinjector0_baddress_re <= netsoc_csrbank3_dfii_pi0_baddress0_re;
	if (netsoc_csrbank3_dfii_pi0_wrdata3_re) begin
		netsoc_sdram_phaseinjector0_wrdata_storage_full[31:24] <= netsoc_csrbank3_dfii_pi0_wrdata3_r;
	end
	if (netsoc_csrbank3_dfii_pi0_wrdata2_re) begin
		netsoc_sdram_phaseinjector0_wrdata_storage_full[23:16] <= netsoc_csrbank3_dfii_pi0_wrdata2_r;
	end
	if (netsoc_csrbank3_dfii_pi0_wrdata1_re) begin
		netsoc_sdram_phaseinjector0_wrdata_storage_full[15:8] <= netsoc_csrbank3_dfii_pi0_wrdata1_r;
	end
	if (netsoc_csrbank3_dfii_pi0_wrdata0_re) begin
		netsoc_sdram_phaseinjector0_wrdata_storage_full[7:0] <= netsoc_csrbank3_dfii_pi0_wrdata0_r;
	end
	netsoc_sdram_phaseinjector0_wrdata_re <= netsoc_csrbank3_dfii_pi0_wrdata0_re;
	if (netsoc_csrbank3_dfii_pi1_command0_re) begin
		netsoc_sdram_phaseinjector1_command_storage_full[5:0] <= netsoc_csrbank3_dfii_pi1_command0_r;
	end
	netsoc_sdram_phaseinjector1_command_re <= netsoc_csrbank3_dfii_pi1_command0_re;
	if (netsoc_csrbank3_dfii_pi1_address1_re) begin
		netsoc_sdram_phaseinjector1_address_storage_full[12:8] <= netsoc_csrbank3_dfii_pi1_address1_r;
	end
	if (netsoc_csrbank3_dfii_pi1_address0_re) begin
		netsoc_sdram_phaseinjector1_address_storage_full[7:0] <= netsoc_csrbank3_dfii_pi1_address0_r;
	end
	netsoc_sdram_phaseinjector1_address_re <= netsoc_csrbank3_dfii_pi1_address0_re;
	if (netsoc_csrbank3_dfii_pi1_baddress0_re) begin
		netsoc_sdram_phaseinjector1_baddress_storage_full[2:0] <= netsoc_csrbank3_dfii_pi1_baddress0_r;
	end
	netsoc_sdram_phaseinjector1_baddress_re <= netsoc_csrbank3_dfii_pi1_baddress0_re;
	if (netsoc_csrbank3_dfii_pi1_wrdata3_re) begin
		netsoc_sdram_phaseinjector1_wrdata_storage_full[31:24] <= netsoc_csrbank3_dfii_pi1_wrdata3_r;
	end
	if (netsoc_csrbank3_dfii_pi1_wrdata2_re) begin
		netsoc_sdram_phaseinjector1_wrdata_storage_full[23:16] <= netsoc_csrbank3_dfii_pi1_wrdata2_r;
	end
	if (netsoc_csrbank3_dfii_pi1_wrdata1_re) begin
		netsoc_sdram_phaseinjector1_wrdata_storage_full[15:8] <= netsoc_csrbank3_dfii_pi1_wrdata1_r;
	end
	if (netsoc_csrbank3_dfii_pi1_wrdata0_re) begin
		netsoc_sdram_phaseinjector1_wrdata_storage_full[7:0] <= netsoc_csrbank3_dfii_pi1_wrdata0_r;
	end
	netsoc_sdram_phaseinjector1_wrdata_re <= netsoc_csrbank3_dfii_pi1_wrdata0_re;
	netsoc_interface4_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank4_sel) begin
		case (netsoc_interface4_bank_bus_adr[1:0])
			1'd0: begin
				netsoc_interface4_bank_bus_dat_r <= netsoc_csrbank4_bitbang0_w;
			end
			1'd1: begin
				netsoc_interface4_bank_bus_dat_r <= netsoc_csrbank4_miso_w;
			end
			2'd2: begin
				netsoc_interface4_bank_bus_dat_r <= netsoc_csrbank4_bitbang_en0_w;
			end
		endcase
	end
	if (netsoc_csrbank4_bitbang0_re) begin
		netsoc_bitbang_storage_full[3:0] <= netsoc_csrbank4_bitbang0_r;
	end
	netsoc_bitbang_re <= netsoc_csrbank4_bitbang0_re;
	if (netsoc_csrbank4_bitbang_en0_re) begin
		netsoc_bitbang_en_storage_full <= netsoc_csrbank4_bitbang_en0_r;
	end
	netsoc_bitbang_en_re <= netsoc_csrbank4_bitbang_en0_re;
	netsoc_interface5_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank5_sel) begin
		case (netsoc_interface5_bank_bus_adr[4:0])
			1'd0: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_load3_w;
			end
			1'd1: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_load2_w;
			end
			2'd2: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_load1_w;
			end
			2'd3: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_load0_w;
			end
			3'd4: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_reload3_w;
			end
			3'd5: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_reload2_w;
			end
			3'd6: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_reload1_w;
			end
			3'd7: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_reload0_w;
			end
			4'd8: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_en0_w;
			end
			4'd9: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_netsoc_timer0_update_value_w;
			end
			4'd10: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_value3_w;
			end
			4'd11: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_value2_w;
			end
			4'd12: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_value1_w;
			end
			4'd13: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_value0_w;
			end
			4'd14: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_netsoc_timer0_eventmanager_status_w;
			end
			4'd15: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_netsoc_timer0_eventmanager_pending_w;
			end
			5'd16: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_ev_enable0_w;
			end
		endcase
	end
	if (netsoc_csrbank5_load3_re) begin
		netsoc_netsoc_timer0_load_storage_full[31:24] <= netsoc_csrbank5_load3_r;
	end
	if (netsoc_csrbank5_load2_re) begin
		netsoc_netsoc_timer0_load_storage_full[23:16] <= netsoc_csrbank5_load2_r;
	end
	if (netsoc_csrbank5_load1_re) begin
		netsoc_netsoc_timer0_load_storage_full[15:8] <= netsoc_csrbank5_load1_r;
	end
	if (netsoc_csrbank5_load0_re) begin
		netsoc_netsoc_timer0_load_storage_full[7:0] <= netsoc_csrbank5_load0_r;
	end
	netsoc_netsoc_timer0_load_re <= netsoc_csrbank5_load0_re;
	if (netsoc_csrbank5_reload3_re) begin
		netsoc_netsoc_timer0_reload_storage_full[31:24] <= netsoc_csrbank5_reload3_r;
	end
	if (netsoc_csrbank5_reload2_re) begin
		netsoc_netsoc_timer0_reload_storage_full[23:16] <= netsoc_csrbank5_reload2_r;
	end
	if (netsoc_csrbank5_reload1_re) begin
		netsoc_netsoc_timer0_reload_storage_full[15:8] <= netsoc_csrbank5_reload1_r;
	end
	if (netsoc_csrbank5_reload0_re) begin
		netsoc_netsoc_timer0_reload_storage_full[7:0] <= netsoc_csrbank5_reload0_r;
	end
	netsoc_netsoc_timer0_reload_re <= netsoc_csrbank5_reload0_re;
	if (netsoc_csrbank5_en0_re) begin
		netsoc_netsoc_timer0_en_storage_full <= netsoc_csrbank5_en0_r;
	end
	netsoc_netsoc_timer0_en_re <= netsoc_csrbank5_en0_re;
	if (netsoc_csrbank5_ev_enable0_re) begin
		netsoc_netsoc_timer0_eventmanager_storage_full <= netsoc_csrbank5_ev_enable0_r;
	end
	netsoc_netsoc_timer0_eventmanager_re <= netsoc_csrbank5_ev_enable0_re;
	netsoc_interface6_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank6_sel) begin
		case (netsoc_interface6_bank_bus_adr[2:0])
			1'd0: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_netsoc_uart_rxtx_w;
			end
			1'd1: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_txfull_w;
			end
			2'd2: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_rxempty_w;
			end
			2'd3: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_netsoc_uart_status_w;
			end
			3'd4: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_netsoc_uart_pending_w;
			end
			3'd5: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_ev_enable0_w;
			end
		endcase
	end
	if (netsoc_csrbank6_ev_enable0_re) begin
		netsoc_netsoc_uart_storage_full[1:0] <= netsoc_csrbank6_ev_enable0_r;
	end
	netsoc_netsoc_uart_re <= netsoc_csrbank6_ev_enable0_re;
	netsoc_interface7_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank7_sel) begin
		case (netsoc_interface7_bank_bus_adr[1:0])
			1'd0: begin
				netsoc_interface7_bank_bus_dat_r <= netsoc_csrbank7_tuning_word3_w;
			end
			1'd1: begin
				netsoc_interface7_bank_bus_dat_r <= netsoc_csrbank7_tuning_word2_w;
			end
			2'd2: begin
				netsoc_interface7_bank_bus_dat_r <= netsoc_csrbank7_tuning_word1_w;
			end
			2'd3: begin
				netsoc_interface7_bank_bus_dat_r <= netsoc_csrbank7_tuning_word0_w;
			end
		endcase
	end
	if (netsoc_csrbank7_tuning_word3_re) begin
		netsoc_netsoc_uart_phy_storage_full[31:24] <= netsoc_csrbank7_tuning_word3_r;
	end
	if (netsoc_csrbank7_tuning_word2_re) begin
		netsoc_netsoc_uart_phy_storage_full[23:16] <= netsoc_csrbank7_tuning_word2_r;
	end
	if (netsoc_csrbank7_tuning_word1_re) begin
		netsoc_netsoc_uart_phy_storage_full[15:8] <= netsoc_csrbank7_tuning_word1_r;
	end
	if (netsoc_csrbank7_tuning_word0_re) begin
		netsoc_netsoc_uart_phy_storage_full[7:0] <= netsoc_csrbank7_tuning_word0_r;
	end
	netsoc_netsoc_uart_phy_re <= netsoc_csrbank7_tuning_word0_re;
	if (sys_rst) begin
		netsoc_netsoc_rom_bus_ack <= 1'd0;
		netsoc_netsoc_sram_bus_ack <= 1'd0;
		netsoc_netsoc_interface_adr <= 14'd0;
		netsoc_netsoc_interface_we <= 1'd0;
		netsoc_netsoc_interface_dat_w <= 8'd0;
		netsoc_netsoc_bus_wishbone_dat_r <= 32'd0;
		netsoc_netsoc_bus_wishbone_ack <= 1'd0;
		netsoc_netsoc_counter <= 2'd0;
		serial_tx <= 1'd1;
		netsoc_netsoc_uart_phy_storage_full <= 32'd6597069;
		netsoc_netsoc_uart_phy_re <= 1'd0;
		netsoc_netsoc_uart_phy_sink_ready <= 1'd0;
		netsoc_netsoc_uart_phy_uart_clk_txen <= 1'd0;
		netsoc_netsoc_uart_phy_phase_accumulator_tx <= 32'd0;
		netsoc_netsoc_uart_phy_tx_reg <= 8'd0;
		netsoc_netsoc_uart_phy_tx_bitcount <= 4'd0;
		netsoc_netsoc_uart_phy_tx_busy <= 1'd0;
		netsoc_netsoc_uart_phy_source_valid <= 1'd0;
		netsoc_netsoc_uart_phy_source_payload_data <= 8'd0;
		netsoc_netsoc_uart_phy_uart_clk_rxen <= 1'd0;
		netsoc_netsoc_uart_phy_phase_accumulator_rx <= 32'd0;
		netsoc_netsoc_uart_phy_rx_r <= 1'd0;
		netsoc_netsoc_uart_phy_rx_reg <= 8'd0;
		netsoc_netsoc_uart_phy_rx_bitcount <= 4'd0;
		netsoc_netsoc_uart_phy_rx_busy <= 1'd0;
		netsoc_netsoc_uart_tx_pending <= 1'd0;
		netsoc_netsoc_uart_tx_old_trigger <= 1'd0;
		netsoc_netsoc_uart_rx_pending <= 1'd0;
		netsoc_netsoc_uart_rx_old_trigger <= 1'd0;
		netsoc_netsoc_uart_storage_full <= 2'd0;
		netsoc_netsoc_uart_re <= 1'd0;
		netsoc_netsoc_uart_tx_fifo_level <= 5'd0;
		netsoc_netsoc_uart_tx_fifo_produce <= 4'd0;
		netsoc_netsoc_uart_tx_fifo_consume <= 4'd0;
		netsoc_netsoc_uart_rx_fifo_level <= 5'd0;
		netsoc_netsoc_uart_rx_fifo_produce <= 4'd0;
		netsoc_netsoc_uart_rx_fifo_consume <= 4'd0;
		netsoc_netsoc_timer0_load_storage_full <= 32'd0;
		netsoc_netsoc_timer0_load_re <= 1'd0;
		netsoc_netsoc_timer0_reload_storage_full <= 32'd0;
		netsoc_netsoc_timer0_reload_re <= 1'd0;
		netsoc_netsoc_timer0_en_storage_full <= 1'd0;
		netsoc_netsoc_timer0_en_re <= 1'd0;
		netsoc_netsoc_timer0_value_status <= 32'd0;
		netsoc_netsoc_timer0_zero_pending <= 1'd0;
		netsoc_netsoc_timer0_zero_old_trigger <= 1'd0;
		netsoc_netsoc_timer0_eventmanager_storage_full <= 1'd0;
		netsoc_netsoc_timer0_eventmanager_re <= 1'd0;
		netsoc_netsoc_timer0_value <= 32'd0;
		netsoc_dna_status <= 57'd0;
		netsoc_dna_cnt <= 7'd0;
		netsoc_bus_ack <= 1'd0;
		netsoc_bitbang_storage_full <= 4'd0;
		netsoc_bitbang_re <= 1'd0;
		netsoc_bitbang_en_storage_full <= 1'd0;
		netsoc_bitbang_en_re <= 1'd0;
		netsoc_cs_n <= 1'd1;
		netsoc_clk <= 1'd0;
		netsoc_dq_oe <= 1'd0;
		netsoc_sr <= 32'd0;
		netsoc_i1 <= 2'd0;
		netsoc_dqi <= 4'd0;
		netsoc_counter <= 8'd0;
		netsoc_ddrphy_phase_sys <= 1'd0;
		netsoc_ddrphy_bitslip_cnt <= 4'd0;
		netsoc_ddrphy_bitslip_inc <= 1'd0;
		netsoc_ddrphy_record2_wrdata <= 32'd0;
		netsoc_ddrphy_record2_wrdata_mask <= 4'd0;
		netsoc_ddrphy_record3_wrdata <= 32'd0;
		netsoc_ddrphy_record3_wrdata_mask <= 4'd0;
		netsoc_ddrphy_drive_dq_n1 <= 1'd0;
		netsoc_ddrphy_wrdata_en_d <= 1'd0;
		netsoc_ddrphy_rddata_sr <= 5'd0;
		netsoc_sdram_storage_full <= 4'd0;
		netsoc_sdram_re <= 1'd0;
		netsoc_sdram_phaseinjector0_command_storage_full <= 6'd0;
		netsoc_sdram_phaseinjector0_command_re <= 1'd0;
		netsoc_sdram_phaseinjector0_address_storage_full <= 13'd0;
		netsoc_sdram_phaseinjector0_address_re <= 1'd0;
		netsoc_sdram_phaseinjector0_baddress_storage_full <= 3'd0;
		netsoc_sdram_phaseinjector0_baddress_re <= 1'd0;
		netsoc_sdram_phaseinjector0_wrdata_storage_full <= 32'd0;
		netsoc_sdram_phaseinjector0_wrdata_re <= 1'd0;
		netsoc_sdram_phaseinjector0_status <= 32'd0;
		netsoc_sdram_phaseinjector1_command_storage_full <= 6'd0;
		netsoc_sdram_phaseinjector1_command_re <= 1'd0;
		netsoc_sdram_phaseinjector1_address_storage_full <= 13'd0;
		netsoc_sdram_phaseinjector1_address_re <= 1'd0;
		netsoc_sdram_phaseinjector1_baddress_storage_full <= 3'd0;
		netsoc_sdram_phaseinjector1_baddress_re <= 1'd0;
		netsoc_sdram_phaseinjector1_wrdata_storage_full <= 32'd0;
		netsoc_sdram_phaseinjector1_wrdata_re <= 1'd0;
		netsoc_sdram_phaseinjector1_status <= 32'd0;
		netsoc_sdram_dfi_p0_address <= 13'd0;
		netsoc_sdram_dfi_p0_bank <= 3'd0;
		netsoc_sdram_dfi_p0_cas_n <= 1'd1;
		netsoc_sdram_dfi_p0_ras_n <= 1'd1;
		netsoc_sdram_dfi_p0_we_n <= 1'd1;
		netsoc_sdram_dfi_p0_wrdata_en <= 1'd0;
		netsoc_sdram_dfi_p0_rddata_en <= 1'd0;
		netsoc_sdram_dfi_p1_address <= 13'd0;
		netsoc_sdram_dfi_p1_bank <= 3'd0;
		netsoc_sdram_dfi_p1_cas_n <= 1'd1;
		netsoc_sdram_dfi_p1_ras_n <= 1'd1;
		netsoc_sdram_dfi_p1_we_n <= 1'd1;
		netsoc_sdram_dfi_p1_wrdata_en <= 1'd0;
		netsoc_sdram_dfi_p1_rddata_en <= 1'd0;
		netsoc_sdram_cmd_payload_a <= 13'd0;
		netsoc_sdram_cmd_payload_ba <= 3'd0;
		netsoc_sdram_cmd_payload_cas <= 1'd0;
		netsoc_sdram_cmd_payload_ras <= 1'd0;
		netsoc_sdram_cmd_payload_we <= 1'd0;
		netsoc_sdram_seq_done <= 1'd0;
		netsoc_sdram_counter <= 4'd0;
		netsoc_sdram_count <= 10'd585;
		netsoc_sdram_bankmachine0_level <= 4'd0;
		netsoc_sdram_bankmachine0_produce <= 3'd0;
		netsoc_sdram_bankmachine0_consume <= 3'd0;
		netsoc_sdram_bankmachine0_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine0_count <= 3'd4;
		netsoc_sdram_bankmachine1_level <= 4'd0;
		netsoc_sdram_bankmachine1_produce <= 3'd0;
		netsoc_sdram_bankmachine1_consume <= 3'd0;
		netsoc_sdram_bankmachine1_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine1_count <= 3'd4;
		netsoc_sdram_bankmachine2_level <= 4'd0;
		netsoc_sdram_bankmachine2_produce <= 3'd0;
		netsoc_sdram_bankmachine2_consume <= 3'd0;
		netsoc_sdram_bankmachine2_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine2_count <= 3'd4;
		netsoc_sdram_bankmachine3_level <= 4'd0;
		netsoc_sdram_bankmachine3_produce <= 3'd0;
		netsoc_sdram_bankmachine3_consume <= 3'd0;
		netsoc_sdram_bankmachine3_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine3_count <= 3'd4;
		netsoc_sdram_bankmachine4_level <= 4'd0;
		netsoc_sdram_bankmachine4_produce <= 3'd0;
		netsoc_sdram_bankmachine4_consume <= 3'd0;
		netsoc_sdram_bankmachine4_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine4_count <= 3'd4;
		netsoc_sdram_bankmachine5_level <= 4'd0;
		netsoc_sdram_bankmachine5_produce <= 3'd0;
		netsoc_sdram_bankmachine5_consume <= 3'd0;
		netsoc_sdram_bankmachine5_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine5_count <= 3'd4;
		netsoc_sdram_bankmachine6_level <= 4'd0;
		netsoc_sdram_bankmachine6_produce <= 3'd0;
		netsoc_sdram_bankmachine6_consume <= 3'd0;
		netsoc_sdram_bankmachine6_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine6_count <= 3'd4;
		netsoc_sdram_bankmachine7_level <= 4'd0;
		netsoc_sdram_bankmachine7_produce <= 3'd0;
		netsoc_sdram_bankmachine7_consume <= 3'd0;
		netsoc_sdram_bankmachine7_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine7_count <= 3'd4;
		netsoc_sdram_choose_cmd_grant <= 3'd0;
		netsoc_sdram_choose_req_grant <= 3'd0;
		netsoc_sdram_time0 <= 5'd0;
		netsoc_sdram_time1 <= 4'd0;
		netsoc_sdram_bandwidth_nreads_status <= 24'd0;
		netsoc_sdram_bandwidth_nwrites_status <= 24'd0;
		netsoc_sdram_bandwidth_cmd_valid <= 1'd0;
		netsoc_sdram_bandwidth_cmd_ready <= 1'd0;
		netsoc_sdram_bandwidth_cmd_is_read <= 1'd0;
		netsoc_sdram_bandwidth_cmd_is_write <= 1'd0;
		netsoc_sdram_bandwidth_counter <= 24'd0;
		netsoc_sdram_bandwidth_period <= 1'd0;
		netsoc_sdram_bandwidth_nreads <= 24'd0;
		netsoc_sdram_bandwidth_nwrites <= 24'd0;
		netsoc_sdram_bandwidth_nreads_r <= 24'd0;
		netsoc_sdram_bandwidth_nwrites_r <= 24'd0;
		netsoc_adr_offset_r <= 1'd0;
		ethphy_mode0 <= 1'd0;
		ethphy_reset_storage_full <= 1'd0;
		ethphy_reset_re <= 1'd0;
		ethphy_counter <= 9'd0;
		ethphy_storage_full <= 3'd0;
		ethphy_re <= 1'd0;
		ethmac_preamble_errors_status <= 32'd0;
		ethmac_crc_errors_status <= 32'd0;
		ethmac_tx_cdc_graycounter0_q <= 7'd0;
		ethmac_tx_cdc_graycounter0_q_binary <= 7'd0;
		ethmac_rx_cdc_graycounter1_q <= 7'd0;
		ethmac_rx_cdc_graycounter1_q_binary <= 7'd0;
		ethmac_writer_errors_status <= 32'd0;
		ethmac_writer_storage_full <= 1'd0;
		ethmac_writer_re <= 1'd0;
		ethmac_writer_counter <= 32'd0;
		ethmac_writer_slot <= 1'd0;
		ethmac_writer_fifo_level <= 2'd0;
		ethmac_writer_fifo_produce <= 1'd0;
		ethmac_writer_fifo_consume <= 1'd0;
		ethmac_reader_slot_storage_full <= 1'd0;
		ethmac_reader_slot_re <= 1'd0;
		ethmac_reader_length_storage_full <= 11'd0;
		ethmac_reader_length_re <= 1'd0;
		ethmac_reader_done_pending <= 1'd0;
		ethmac_reader_eventmanager_storage_full <= 1'd0;
		ethmac_reader_eventmanager_re <= 1'd0;
		ethmac_reader_fifo_level <= 2'd0;
		ethmac_reader_fifo_produce <= 1'd0;
		ethmac_reader_fifo_consume <= 1'd0;
		ethmac_reader_counter <= 11'd0;
		ethmac_reader_last_d <= 1'd0;
		ethmac_sram0_bus_ack0 <= 1'd0;
		ethmac_sram1_bus_ack0 <= 1'd0;
		ethmac_sram0_bus_ack1 <= 1'd0;
		ethmac_sram1_bus_ack1 <= 1'd0;
		ethmac_slave_sel_r <= 4'd0;
		refresher_state <= 2'd0;
		bankmachine0_state <= 3'd0;
		bankmachine1_state <= 3'd0;
		bankmachine2_state <= 3'd0;
		bankmachine3_state <= 3'd0;
		bankmachine4_state <= 3'd0;
		bankmachine5_state <= 3'd0;
		bankmachine6_state <= 3'd0;
		bankmachine7_state <= 3'd0;
		multiplexer_state <= 4'd0;
		new_master_wdata_ready <= 1'd0;
		new_master_rdata_valid0 <= 1'd0;
		new_master_rdata_valid1 <= 1'd0;
		new_master_rdata_valid2 <= 1'd0;
		new_master_rdata_valid3 <= 1'd0;
		new_master_rdata_valid4 <= 1'd0;
		new_master_rdata_valid5 <= 1'd0;
		cache_state <= 3'd0;
		litedramwishbonebridge_state <= 2'd0;
		liteethphygmiimii_state <= 2'd0;
		liteethmacsramwriter_state <= 3'd0;
		liteethmacsramreader_state <= 2'd0;
		netsoc_grant <= 1'd0;
		netsoc_slave_sel_r <= 6'd0;
		netsoc_interface0_bank_bus_dat_r <= 8'd0;
		netsoc_interface1_bank_bus_dat_r <= 8'd0;
		netsoc_sel_r <= 1'd0;
		netsoc_interface2_bank_bus_dat_r <= 8'd0;
		netsoc_interface3_bank_bus_dat_r <= 8'd0;
		netsoc_interface4_bank_bus_dat_r <= 8'd0;
		netsoc_interface5_bank_bus_dat_r <= 8'd0;
		netsoc_interface6_bank_bus_dat_r <= 8'd0;
		netsoc_interface7_bank_bus_dat_r <= 8'd0;
	end
	xilinxmultiregimpl0_regs0 <= serial_rx;
	xilinxmultiregimpl0_regs1 <= xilinxmultiregimpl0_regs0;
	xilinxmultiregimpl1_regs0 <= ethphy_toggle_i;
	xilinxmultiregimpl1_regs1 <= xilinxmultiregimpl1_regs0;
	xilinxmultiregimpl2_regs0 <= ethphy_data_r;
	xilinxmultiregimpl2_regs1 <= xilinxmultiregimpl2_regs0;
	xilinxmultiregimpl3_regs0 <= ethmac_ps_preamble_error_toggle_i;
	xilinxmultiregimpl3_regs1 <= xilinxmultiregimpl3_regs0;
	xilinxmultiregimpl4_regs0 <= ethmac_ps_crc_error_toggle_i;
	xilinxmultiregimpl4_regs1 <= xilinxmultiregimpl4_regs0;
	xilinxmultiregimpl6_regs0 <= ethmac_tx_cdc_graycounter1_q;
	xilinxmultiregimpl6_regs1 <= xilinxmultiregimpl6_regs0;
	xilinxmultiregimpl7_regs0 <= ethmac_rx_cdc_graycounter0_q;
	xilinxmultiregimpl7_regs1 <= xilinxmultiregimpl7_regs0;
end

mor1kx #(
	.DBUS_WB_TYPE("B3_REGISTERED_FEEDBACK"),
	.FEATURE_ADDC("ENABLED"),
	.FEATURE_CMOV("ENABLED"),
	.FEATURE_DATACACHE("ENABLED"),
	.FEATURE_FFL1("ENABLED"),
	.FEATURE_INSTRUCTIONCACHE("ENABLED"),
	.FEATURE_OVERFLOW("NONE"),
	.FEATURE_RANGE("NONE"),
	.FEATURE_SYSCALL("NONE"),
	.FEATURE_TIMER("NONE"),
	.FEATURE_TRAP("NONE"),
	.IBUS_WB_TYPE("B3_REGISTERED_FEEDBACK"),
	.OPTION_CPU0("CAPPUCCINO"),
	.OPTION_DCACHE_BLOCK_WIDTH(3'd4),
	.OPTION_DCACHE_LIMIT_WIDTH(5'd31),
	.OPTION_DCACHE_SET_WIDTH(4'd8),
	.OPTION_DCACHE_WAYS(1'd1),
	.OPTION_ICACHE_BLOCK_WIDTH(3'd4),
	.OPTION_ICACHE_LIMIT_WIDTH(5'd31),
	.OPTION_ICACHE_SET_WIDTH(4'd8),
	.OPTION_ICACHE_WAYS(1'd1),
	.OPTION_PIC_TRIGGER("LEVEL"),
	.OPTION_RESET_PC(1'd0)
) mor1kx (
	.clk(sys_clk),
	.dwbm_ack_i(netsoc_netsoc_dbus_ack),
	.dwbm_dat_i(netsoc_netsoc_dbus_dat_r),
	.dwbm_err_i(netsoc_netsoc_dbus_err),
	.dwbm_rty_i(1'd0),
	.irq_i(netsoc_netsoc_interrupt),
	.iwbm_ack_i(netsoc_netsoc_ibus_ack),
	.iwbm_dat_i(netsoc_netsoc_ibus_dat_r),
	.iwbm_err_i(netsoc_netsoc_ibus_err),
	.iwbm_rty_i(1'd0),
	.rst(sys_rst),
	.dwbm_adr_o(netsoc_netsoc_d_adr_o),
	.dwbm_bte_o(netsoc_netsoc_dbus_bte),
	.dwbm_cti_o(netsoc_netsoc_dbus_cti),
	.dwbm_cyc_o(netsoc_netsoc_dbus_cyc),
	.dwbm_dat_o(netsoc_netsoc_dbus_dat_w),
	.dwbm_sel_o(netsoc_netsoc_dbus_sel),
	.dwbm_stb_o(netsoc_netsoc_dbus_stb),
	.dwbm_we_o(netsoc_netsoc_dbus_we),
	.iwbm_adr_o(netsoc_netsoc_i_adr_o),
	.iwbm_bte_o(netsoc_netsoc_ibus_bte),
	.iwbm_cti_o(netsoc_netsoc_ibus_cti),
	.iwbm_cyc_o(netsoc_netsoc_ibus_cyc),
	.iwbm_dat_o(netsoc_netsoc_ibus_dat_w),
	.iwbm_sel_o(netsoc_netsoc_ibus_sel),
	.iwbm_stb_o(netsoc_netsoc_ibus_stb),
	.iwbm_we_o(netsoc_netsoc_ibus_we)
);

reg [31:0] mem[0:8191];
reg [12:0] memadr;
always @(posedge sys_clk) begin
	memadr <= netsoc_netsoc_rom_adr;
end

assign netsoc_netsoc_rom_dat_r = mem[memadr];

initial begin
	$readmemh("mem.init", mem);
end

reg [31:0] mem_1[0:4095];
reg [11:0] memadr_1;
always @(posedge sys_clk) begin
	if (netsoc_netsoc_sram_we[0])
		mem_1[netsoc_netsoc_sram_adr][7:0] <= netsoc_netsoc_sram_dat_w[7:0];
	if (netsoc_netsoc_sram_we[1])
		mem_1[netsoc_netsoc_sram_adr][15:8] <= netsoc_netsoc_sram_dat_w[15:8];
	if (netsoc_netsoc_sram_we[2])
		mem_1[netsoc_netsoc_sram_adr][23:16] <= netsoc_netsoc_sram_dat_w[23:16];
	if (netsoc_netsoc_sram_we[3])
		mem_1[netsoc_netsoc_sram_adr][31:24] <= netsoc_netsoc_sram_dat_w[31:24];
	memadr_1 <= netsoc_netsoc_sram_adr;
end

assign netsoc_netsoc_sram_dat_r = mem_1[memadr_1];

reg [9:0] storage[0:15];
reg [9:0] memdat;
always @(posedge sys_clk) begin
	if (netsoc_netsoc_uart_tx_fifo_wrport_we)
		storage[netsoc_netsoc_uart_tx_fifo_wrport_adr] <= netsoc_netsoc_uart_tx_fifo_wrport_dat_w;
	memdat <= storage[netsoc_netsoc_uart_tx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_netsoc_uart_tx_fifo_wrport_dat_r = memdat;
assign netsoc_netsoc_uart_tx_fifo_rdport_dat_r = storage[netsoc_netsoc_uart_tx_fifo_rdport_adr];

reg [9:0] storage_1[0:15];
reg [9:0] memdat_1;
always @(posedge sys_clk) begin
	if (netsoc_netsoc_uart_rx_fifo_wrport_we)
		storage_1[netsoc_netsoc_uart_rx_fifo_wrport_adr] <= netsoc_netsoc_uart_rx_fifo_wrport_dat_w;
	memdat_1 <= storage_1[netsoc_netsoc_uart_rx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_netsoc_uart_rx_fifo_wrport_dat_r = memdat_1;
assign netsoc_netsoc_uart_rx_fifo_rdport_dat_r = storage_1[netsoc_netsoc_uart_rx_fifo_rdport_adr];

reg [7:0] mem_2[0:6];
reg [2:0] memadr_2;
always @(posedge sys_clk) begin
	memadr_2 <= netsoc_adr;
end

assign netsoc_dat_r = mem_2[memadr_2];

initial begin
	$readmemh("mem_2.init", mem_2);
end

IBUFG IBUFG(
	.I(clk100),
	.O(netsoc_crg_clk100a)
);

BUFIO2 #(
	.DIVIDE(1'd1),
	.DIVIDE_BYPASS("TRUE"),
	.I_INVERT("FALSE")
) BUFIO2 (
	.I(netsoc_crg_clk100a),
	.DIVCLK(netsoc_crg_clk100b)
);

PLL_ADV #(
	.BANDWIDTH("OPTIMIZED"),
	.CLKFBOUT_MULT(3'd6),
	.CLKFBOUT_PHASE(0.0),
	.CLKIN1_PERIOD(10.0),
	.CLKIN2_PERIOD(0.0),
	.CLKOUT0_DIVIDE(2'd2),
	.CLKOUT0_DUTY_CYCLE(0.5),
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_DIVIDE(4'd9),
	.CLKOUT1_DUTY_CYCLE(0.5),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_DIVIDE(3'd4),
	.CLKOUT2_DUTY_CYCLE(0.5),
	.CLKOUT2_PHASE(270.0),
	.CLKOUT3_DIVIDE(3'd4),
	.CLKOUT3_DUTY_CYCLE(0.5),
	.CLKOUT3_PHASE(250.0),
	.CLKOUT4_DIVIDE(4'd12),
	.CLKOUT4_DUTY_CYCLE(0.5),
	.CLKOUT4_PHASE(0.0),
	.CLKOUT5_DIVIDE(4'd8),
	.CLKOUT5_DUTY_CYCLE(0.5),
	.CLKOUT5_PHASE(0.0),
	.CLK_FEEDBACK("CLKFBOUT"),
	.COMPENSATION("INTERNAL"),
	.DIVCLK_DIVIDE(1'd1),
	.REF_JITTER(0.01),
	.SIM_DEVICE("SPARTAN6")
) crg_pll_adv (
	.CLKFBIN(netsoc_crg_pll_fb),
	.CLKIN1(netsoc_crg_clk100b),
	.CLKIN2(1'd0),
	.CLKINSEL(1'd1),
	.DADDR(1'd0),
	.DCLK(1'd0),
	.DEN(1'd0),
	.DI(1'd0),
	.DWE(1'd0),
	.REL(1'd0),
	.RST(1'd0),
	.CLKFBOUT(netsoc_crg_pll_fb),
	.CLKOUT0(netsoc_crg_unbuf_sdram_full),
	.CLKOUT1(netsoc_crg_unbuf_encoder),
	.CLKOUT2(netsoc_crg_unbuf_sdram_half_a),
	.CLKOUT3(netsoc_crg_unbuf_sdram_half_b),
	.CLKOUT4(netsoc_crg_unbuf_unused),
	.CLKOUT5(netsoc_crg_unbuf_sys),
	.LOCKED(netsoc_crg_pll_lckd)
);

BUFG sys_bufg(
	.I(netsoc_crg_unbuf_sys),
	.O(sys_clk)
);

BUFPLL #(
	.DIVIDE(3'd4)
) sdram_full_bufpll (
	.GCLK(sys_clk),
	.LOCKED(netsoc_crg_pll_lckd),
	.PLLIN(netsoc_crg_unbuf_sdram_full),
	.IOCLK(sdram_full_wr_clk),
	.SERDESSTROBE(netsoc_crg_clk4x_wr_strb)
);

BUFG sdram_half_a_bufpll(
	.I(netsoc_crg_unbuf_sdram_half_a),
	.O(sdram_half_clk)
);

BUFG sdram_half_b_bufpll(
	.I(netsoc_crg_unbuf_sdram_half_b),
	.O(netsoc_crg_clk_sdram_half_shifted)
);

ODDR2 #(
	.DDR_ALIGNMENT("NONE"),
	.INIT(1'd0),
	.SRTYPE("SYNC")
) ODDR2 (
	.C0(netsoc_crg_clk_sdram_half_shifted),
	.C1((~netsoc_crg_clk_sdram_half_shifted)),
	.CE(1'd1),
	.D0(1'd1),
	.D1(1'd0),
	.R(1'd0),
	.S(1'd0),
	.Q(netsoc_crg_output_clk)
);

OBUFDS OBUFDS(
	.I(netsoc_crg_output_clk),
	.O(ddram_clock_p),
	.OB(ddram_clock_n)
);

DCM_CLKGEN #(
	.CLKFXDV_DIVIDE(2'd2),
	.CLKFX_DIVIDE(3'd4),
	.CLKFX_MD_MAX(0.5),
	.CLKFX_MULTIPLY(2'd2),
	.CLKIN_PERIOD(10.0),
	.SPREAD_SPECTRUM("NONE"),
	.STARTUP_WAIT("FALSE")
) crg_periph_dcm_clkgen (
	.CLKIN(netsoc_crg_clk100a),
	.FREEZEDCM(1'd0),
	.RST(sys_rst),
	.CLKFX(base50_clk),
	.LOCKED(netsoc_crg_dcm_base50_locked)
);

BUFG encoder_bufg(
	.I(netsoc_crg_unbuf_encoder),
	.O(encoder_clk)
);

DNA_PORT DNA_PORT(
	.CLK(netsoc_dna_cnt[0]),
	.DIN(netsoc_dna_status[56]),
	.READ((netsoc_dna_cnt < 2'd2)),
	.SHIFT(1'd1),
	.DOUT(netsoc_dna_do)
);

assign spiflash4x_dq = netsoc_oe ? netsoc_o : 4'bz;
assign netsoc_i0 = spiflash4x_dq;

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_1 (
	.C0(sdram_half_clk),
	.C1(netsoc_ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(netsoc_ddrphy_dqs_o[0])
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_2 (
	.C0(sdram_half_clk),
	.C1(netsoc_ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(netsoc_ddrphy_dqs_t_d0),
	.D1(netsoc_ddrphy_dqs_t_d1),
	.R(1'd0),
	.S(1'd0),
	.Q(netsoc_ddrphy_dqs_t[0])
);

OBUFTDS OBUFTDS(
	.I(netsoc_ddrphy_dqs_o[0]),
	.T(netsoc_ddrphy_dqs_t[0]),
	.O(ddram_dqs[0]),
	.OB(ddram_dqs_n[0])
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_3 (
	.C0(sdram_half_clk),
	.C1(netsoc_ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(netsoc_ddrphy_dqs_o[1])
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_4 (
	.C0(sdram_half_clk),
	.C1(netsoc_ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(netsoc_ddrphy_dqs_t_d0),
	.D1(netsoc_ddrphy_dqs_t_d1),
	.R(1'd0),
	.S(1'd0),
	.Q(netsoc_ddrphy_dqs_t[1])
);

OBUFTDS OBUFTDS_1(
	.I(netsoc_ddrphy_dqs_o[1]),
	.T(netsoc_ddrphy_dqs_t[1]),
	.O(ddram_dqs[1]),
	.OB(ddram_dqs_n[1])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy0[0]),
	.D2(slice_proxy1[0]),
	.D3(slice_proxy2[0]),
	.D4(slice_proxy3[0]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[0]),
	.TQ(netsoc_ddrphy_dq_t[0])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[0]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[16]),
	.Q2(netsoc_ddrphy_record0_rddata[0]),
	.Q3(netsoc_ddrphy_record1_rddata[16]),
	.Q4(netsoc_ddrphy_record1_rddata[0])
);

IOBUF IOBUF(
	.I(netsoc_ddrphy_dq_o[0]),
	.T(netsoc_ddrphy_dq_t[0]),
	.IO(ddram_dq[0]),
	.O(netsoc_ddrphy_dq_i[0])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_1 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy4[1]),
	.D2(slice_proxy5[1]),
	.D3(slice_proxy6[1]),
	.D4(slice_proxy7[1]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[1]),
	.TQ(netsoc_ddrphy_dq_t[1])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_1 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[1]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[17]),
	.Q2(netsoc_ddrphy_record0_rddata[1]),
	.Q3(netsoc_ddrphy_record1_rddata[17]),
	.Q4(netsoc_ddrphy_record1_rddata[1])
);

IOBUF IOBUF_1(
	.I(netsoc_ddrphy_dq_o[1]),
	.T(netsoc_ddrphy_dq_t[1]),
	.IO(ddram_dq[1]),
	.O(netsoc_ddrphy_dq_i[1])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_2 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy8[2]),
	.D2(slice_proxy9[2]),
	.D3(slice_proxy10[2]),
	.D4(slice_proxy11[2]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[2]),
	.TQ(netsoc_ddrphy_dq_t[2])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_2 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[2]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[18]),
	.Q2(netsoc_ddrphy_record0_rddata[2]),
	.Q3(netsoc_ddrphy_record1_rddata[18]),
	.Q4(netsoc_ddrphy_record1_rddata[2])
);

IOBUF IOBUF_2(
	.I(netsoc_ddrphy_dq_o[2]),
	.T(netsoc_ddrphy_dq_t[2]),
	.IO(ddram_dq[2]),
	.O(netsoc_ddrphy_dq_i[2])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_3 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy12[3]),
	.D2(slice_proxy13[3]),
	.D3(slice_proxy14[3]),
	.D4(slice_proxy15[3]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[3]),
	.TQ(netsoc_ddrphy_dq_t[3])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_3 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[3]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[19]),
	.Q2(netsoc_ddrphy_record0_rddata[3]),
	.Q3(netsoc_ddrphy_record1_rddata[19]),
	.Q4(netsoc_ddrphy_record1_rddata[3])
);

IOBUF IOBUF_3(
	.I(netsoc_ddrphy_dq_o[3]),
	.T(netsoc_ddrphy_dq_t[3]),
	.IO(ddram_dq[3]),
	.O(netsoc_ddrphy_dq_i[3])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_4 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy16[4]),
	.D2(slice_proxy17[4]),
	.D3(slice_proxy18[4]),
	.D4(slice_proxy19[4]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[4]),
	.TQ(netsoc_ddrphy_dq_t[4])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_4 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[4]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[20]),
	.Q2(netsoc_ddrphy_record0_rddata[4]),
	.Q3(netsoc_ddrphy_record1_rddata[20]),
	.Q4(netsoc_ddrphy_record1_rddata[4])
);

IOBUF IOBUF_4(
	.I(netsoc_ddrphy_dq_o[4]),
	.T(netsoc_ddrphy_dq_t[4]),
	.IO(ddram_dq[4]),
	.O(netsoc_ddrphy_dq_i[4])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_5 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy20[5]),
	.D2(slice_proxy21[5]),
	.D3(slice_proxy22[5]),
	.D4(slice_proxy23[5]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[5]),
	.TQ(netsoc_ddrphy_dq_t[5])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_5 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[5]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[21]),
	.Q2(netsoc_ddrphy_record0_rddata[5]),
	.Q3(netsoc_ddrphy_record1_rddata[21]),
	.Q4(netsoc_ddrphy_record1_rddata[5])
);

IOBUF IOBUF_5(
	.I(netsoc_ddrphy_dq_o[5]),
	.T(netsoc_ddrphy_dq_t[5]),
	.IO(ddram_dq[5]),
	.O(netsoc_ddrphy_dq_i[5])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_6 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy24[6]),
	.D2(slice_proxy25[6]),
	.D3(slice_proxy26[6]),
	.D4(slice_proxy27[6]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[6]),
	.TQ(netsoc_ddrphy_dq_t[6])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_6 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[6]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[22]),
	.Q2(netsoc_ddrphy_record0_rddata[6]),
	.Q3(netsoc_ddrphy_record1_rddata[22]),
	.Q4(netsoc_ddrphy_record1_rddata[6])
);

IOBUF IOBUF_6(
	.I(netsoc_ddrphy_dq_o[6]),
	.T(netsoc_ddrphy_dq_t[6]),
	.IO(ddram_dq[6]),
	.O(netsoc_ddrphy_dq_i[6])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_7 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy28[7]),
	.D2(slice_proxy29[7]),
	.D3(slice_proxy30[7]),
	.D4(slice_proxy31[7]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[7]),
	.TQ(netsoc_ddrphy_dq_t[7])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_7 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[7]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[23]),
	.Q2(netsoc_ddrphy_record0_rddata[7]),
	.Q3(netsoc_ddrphy_record1_rddata[23]),
	.Q4(netsoc_ddrphy_record1_rddata[7])
);

IOBUF IOBUF_7(
	.I(netsoc_ddrphy_dq_o[7]),
	.T(netsoc_ddrphy_dq_t[7]),
	.IO(ddram_dq[7]),
	.O(netsoc_ddrphy_dq_i[7])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_8 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy32[8]),
	.D2(slice_proxy33[8]),
	.D3(slice_proxy34[8]),
	.D4(slice_proxy35[8]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[8]),
	.TQ(netsoc_ddrphy_dq_t[8])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_8 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[8]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[24]),
	.Q2(netsoc_ddrphy_record0_rddata[8]),
	.Q3(netsoc_ddrphy_record1_rddata[24]),
	.Q4(netsoc_ddrphy_record1_rddata[8])
);

IOBUF IOBUF_8(
	.I(netsoc_ddrphy_dq_o[8]),
	.T(netsoc_ddrphy_dq_t[8]),
	.IO(ddram_dq[8]),
	.O(netsoc_ddrphy_dq_i[8])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_9 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy36[9]),
	.D2(slice_proxy37[9]),
	.D3(slice_proxy38[9]),
	.D4(slice_proxy39[9]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[9]),
	.TQ(netsoc_ddrphy_dq_t[9])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_9 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[9]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[25]),
	.Q2(netsoc_ddrphy_record0_rddata[9]),
	.Q3(netsoc_ddrphy_record1_rddata[25]),
	.Q4(netsoc_ddrphy_record1_rddata[9])
);

IOBUF IOBUF_9(
	.I(netsoc_ddrphy_dq_o[9]),
	.T(netsoc_ddrphy_dq_t[9]),
	.IO(ddram_dq[9]),
	.O(netsoc_ddrphy_dq_i[9])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_10 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy40[10]),
	.D2(slice_proxy41[10]),
	.D3(slice_proxy42[10]),
	.D4(slice_proxy43[10]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[10]),
	.TQ(netsoc_ddrphy_dq_t[10])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_10 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[10]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[26]),
	.Q2(netsoc_ddrphy_record0_rddata[10]),
	.Q3(netsoc_ddrphy_record1_rddata[26]),
	.Q4(netsoc_ddrphy_record1_rddata[10])
);

IOBUF IOBUF_10(
	.I(netsoc_ddrphy_dq_o[10]),
	.T(netsoc_ddrphy_dq_t[10]),
	.IO(ddram_dq[10]),
	.O(netsoc_ddrphy_dq_i[10])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_11 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy44[11]),
	.D2(slice_proxy45[11]),
	.D3(slice_proxy46[11]),
	.D4(slice_proxy47[11]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[11]),
	.TQ(netsoc_ddrphy_dq_t[11])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_11 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[11]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[27]),
	.Q2(netsoc_ddrphy_record0_rddata[11]),
	.Q3(netsoc_ddrphy_record1_rddata[27]),
	.Q4(netsoc_ddrphy_record1_rddata[11])
);

IOBUF IOBUF_11(
	.I(netsoc_ddrphy_dq_o[11]),
	.T(netsoc_ddrphy_dq_t[11]),
	.IO(ddram_dq[11]),
	.O(netsoc_ddrphy_dq_i[11])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_12 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy48[12]),
	.D2(slice_proxy49[12]),
	.D3(slice_proxy50[12]),
	.D4(slice_proxy51[12]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[12]),
	.TQ(netsoc_ddrphy_dq_t[12])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_12 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[12]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[28]),
	.Q2(netsoc_ddrphy_record0_rddata[12]),
	.Q3(netsoc_ddrphy_record1_rddata[28]),
	.Q4(netsoc_ddrphy_record1_rddata[12])
);

IOBUF IOBUF_12(
	.I(netsoc_ddrphy_dq_o[12]),
	.T(netsoc_ddrphy_dq_t[12]),
	.IO(ddram_dq[12]),
	.O(netsoc_ddrphy_dq_i[12])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_13 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy52[13]),
	.D2(slice_proxy53[13]),
	.D3(slice_proxy54[13]),
	.D4(slice_proxy55[13]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[13]),
	.TQ(netsoc_ddrphy_dq_t[13])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_13 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[13]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[29]),
	.Q2(netsoc_ddrphy_record0_rddata[13]),
	.Q3(netsoc_ddrphy_record1_rddata[29]),
	.Q4(netsoc_ddrphy_record1_rddata[13])
);

IOBUF IOBUF_13(
	.I(netsoc_ddrphy_dq_o[13]),
	.T(netsoc_ddrphy_dq_t[13]),
	.IO(ddram_dq[13]),
	.O(netsoc_ddrphy_dq_i[13])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_14 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy56[14]),
	.D2(slice_proxy57[14]),
	.D3(slice_proxy58[14]),
	.D4(slice_proxy59[14]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[14]),
	.TQ(netsoc_ddrphy_dq_t[14])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_14 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[14]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[30]),
	.Q2(netsoc_ddrphy_record0_rddata[14]),
	.Q3(netsoc_ddrphy_record1_rddata[30]),
	.Q4(netsoc_ddrphy_record1_rddata[14])
);

IOBUF IOBUF_14(
	.I(netsoc_ddrphy_dq_o[14]),
	.T(netsoc_ddrphy_dq_t[14]),
	.IO(ddram_dq[14]),
	.O(netsoc_ddrphy_dq_i[14])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_15 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy60[15]),
	.D2(slice_proxy61[15]),
	.D3(slice_proxy62[15]),
	.D4(slice_proxy63[15]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(netsoc_ddrphy_drive_dq_n1),
	.T2(netsoc_ddrphy_drive_dq_n1),
	.T3(netsoc_ddrphy_drive_dq_n1),
	.T4(netsoc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(netsoc_ddrphy_dq_o[15]),
	.TQ(netsoc_ddrphy_dq_t[15])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_15 (
	.BITSLIP(netsoc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(netsoc_ddrphy_dq_i[15]),
	.IOCE(netsoc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(netsoc_ddrphy_record0_rddata[31]),
	.Q2(netsoc_ddrphy_record0_rddata[15]),
	.Q3(netsoc_ddrphy_record1_rddata[31]),
	.Q4(netsoc_ddrphy_record1_rddata[15])
);

IOBUF IOBUF_15(
	.I(netsoc_ddrphy_dq_o[15]),
	.T(netsoc_ddrphy_dq_t[15]),
	.IO(ddram_dq[15]),
	.O(netsoc_ddrphy_dq_i[15])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_16 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy64[0]),
	.D2(slice_proxy65[0]),
	.D3(slice_proxy66[0]),
	.D4(slice_proxy67[0]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.TCE(1'd0),
	.TRAIN(1'd0),
	.OQ(ddram_dm[0])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_17 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(slice_proxy68[1]),
	.D2(slice_proxy69[1]),
	.D3(slice_proxy70[1]),
	.D4(slice_proxy71[1]),
	.IOCE(netsoc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.TCE(1'd0),
	.TRAIN(1'd0),
	.OQ(ddram_dm[1])
);

reg [23:0] storage_2[0:7];
reg [23:0] memdat_2;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine0_wrport_we)
		storage_2[netsoc_sdram_bankmachine0_wrport_adr] <= netsoc_sdram_bankmachine0_wrport_dat_w;
	memdat_2 <= storage_2[netsoc_sdram_bankmachine0_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine0_wrport_dat_r = memdat_2;
assign netsoc_sdram_bankmachine0_rdport_dat_r = storage_2[netsoc_sdram_bankmachine0_rdport_adr];

reg [23:0] storage_3[0:7];
reg [23:0] memdat_3;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine1_wrport_we)
		storage_3[netsoc_sdram_bankmachine1_wrport_adr] <= netsoc_sdram_bankmachine1_wrport_dat_w;
	memdat_3 <= storage_3[netsoc_sdram_bankmachine1_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine1_wrport_dat_r = memdat_3;
assign netsoc_sdram_bankmachine1_rdport_dat_r = storage_3[netsoc_sdram_bankmachine1_rdport_adr];

reg [23:0] storage_4[0:7];
reg [23:0] memdat_4;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine2_wrport_we)
		storage_4[netsoc_sdram_bankmachine2_wrport_adr] <= netsoc_sdram_bankmachine2_wrport_dat_w;
	memdat_4 <= storage_4[netsoc_sdram_bankmachine2_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine2_wrport_dat_r = memdat_4;
assign netsoc_sdram_bankmachine2_rdport_dat_r = storage_4[netsoc_sdram_bankmachine2_rdport_adr];

reg [23:0] storage_5[0:7];
reg [23:0] memdat_5;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine3_wrport_we)
		storage_5[netsoc_sdram_bankmachine3_wrport_adr] <= netsoc_sdram_bankmachine3_wrport_dat_w;
	memdat_5 <= storage_5[netsoc_sdram_bankmachine3_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine3_wrport_dat_r = memdat_5;
assign netsoc_sdram_bankmachine3_rdport_dat_r = storage_5[netsoc_sdram_bankmachine3_rdport_adr];

reg [23:0] storage_6[0:7];
reg [23:0] memdat_6;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine4_wrport_we)
		storage_6[netsoc_sdram_bankmachine4_wrport_adr] <= netsoc_sdram_bankmachine4_wrport_dat_w;
	memdat_6 <= storage_6[netsoc_sdram_bankmachine4_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine4_wrport_dat_r = memdat_6;
assign netsoc_sdram_bankmachine4_rdport_dat_r = storage_6[netsoc_sdram_bankmachine4_rdport_adr];

reg [23:0] storage_7[0:7];
reg [23:0] memdat_7;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine5_wrport_we)
		storage_7[netsoc_sdram_bankmachine5_wrport_adr] <= netsoc_sdram_bankmachine5_wrport_dat_w;
	memdat_7 <= storage_7[netsoc_sdram_bankmachine5_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine5_wrport_dat_r = memdat_7;
assign netsoc_sdram_bankmachine5_rdport_dat_r = storage_7[netsoc_sdram_bankmachine5_rdport_adr];

reg [23:0] storage_8[0:7];
reg [23:0] memdat_8;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine6_wrport_we)
		storage_8[netsoc_sdram_bankmachine6_wrport_adr] <= netsoc_sdram_bankmachine6_wrport_dat_w;
	memdat_8 <= storage_8[netsoc_sdram_bankmachine6_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine6_wrport_dat_r = memdat_8;
assign netsoc_sdram_bankmachine6_rdport_dat_r = storage_8[netsoc_sdram_bankmachine6_rdport_adr];

reg [23:0] storage_9[0:7];
reg [23:0] memdat_9;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine7_wrport_we)
		storage_9[netsoc_sdram_bankmachine7_wrport_adr] <= netsoc_sdram_bankmachine7_wrport_dat_w;
	memdat_9 <= storage_9[netsoc_sdram_bankmachine7_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine7_wrport_dat_r = memdat_9;
assign netsoc_sdram_bankmachine7_rdport_dat_r = storage_9[netsoc_sdram_bankmachine7_rdport_adr];

reg [63:0] data_mem[0:1023];
reg [9:0] memadr_3;
always @(posedge sys_clk) begin
	if (netsoc_data_port_we[0])
		data_mem[netsoc_data_port_adr][7:0] <= netsoc_data_port_dat_w[7:0];
	if (netsoc_data_port_we[1])
		data_mem[netsoc_data_port_adr][15:8] <= netsoc_data_port_dat_w[15:8];
	if (netsoc_data_port_we[2])
		data_mem[netsoc_data_port_adr][23:16] <= netsoc_data_port_dat_w[23:16];
	if (netsoc_data_port_we[3])
		data_mem[netsoc_data_port_adr][31:24] <= netsoc_data_port_dat_w[31:24];
	if (netsoc_data_port_we[4])
		data_mem[netsoc_data_port_adr][39:32] <= netsoc_data_port_dat_w[39:32];
	if (netsoc_data_port_we[5])
		data_mem[netsoc_data_port_adr][47:40] <= netsoc_data_port_dat_w[47:40];
	if (netsoc_data_port_we[6])
		data_mem[netsoc_data_port_adr][55:48] <= netsoc_data_port_dat_w[55:48];
	if (netsoc_data_port_we[7])
		data_mem[netsoc_data_port_adr][63:56] <= netsoc_data_port_dat_w[63:56];
	memadr_3 <= netsoc_data_port_adr;
end

assign netsoc_data_port_dat_r = data_mem[memadr_3];

reg [21:0] tag_mem[0:1023];
reg [9:0] memadr_4;
always @(posedge sys_clk) begin
	if (netsoc_tag_port_we)
		tag_mem[netsoc_tag_port_adr] <= netsoc_tag_port_dat_w;
	memadr_4 <= netsoc_tag_port_adr;
end

assign netsoc_tag_port_dat_r = tag_mem[memadr_4];

BUFGMUX BUFGMUX(
	.I0(eth_rx_clk),
	.I1(eth_clocks_tx),
	.S((ethphy_mode0 == 1'd1)),
	.O(eth_tx_clk)
);

assign eth_mdio = ethphy_data_oe ? ethphy_data_w : 1'bz;
assign ethphy_data_r = eth_mdio;

reg [11:0] storage_10[0:4];
reg [11:0] memdat_10;
always @(posedge eth_rx_clk) begin
	if (ethmac_crc32_checker_syncfifo_wrport_we)
		storage_10[ethmac_crc32_checker_syncfifo_wrport_adr] <= ethmac_crc32_checker_syncfifo_wrport_dat_w;
	memdat_10 <= storage_10[ethmac_crc32_checker_syncfifo_wrport_adr];
end

always @(posedge eth_rx_clk) begin
end

assign ethmac_crc32_checker_syncfifo_wrport_dat_r = memdat_10;
assign ethmac_crc32_checker_syncfifo_rdport_dat_r = storage_10[ethmac_crc32_checker_syncfifo_rdport_adr];

reg [41:0] storage_11[0:63];
reg [5:0] memadr_5;
reg [5:0] memadr_6;
always @(posedge sys_clk) begin
	if (ethmac_tx_cdc_wrport_we)
		storage_11[ethmac_tx_cdc_wrport_adr] <= ethmac_tx_cdc_wrport_dat_w;
	memadr_5 <= ethmac_tx_cdc_wrport_adr;
end

always @(posedge eth_tx_clk) begin
	memadr_6 <= ethmac_tx_cdc_rdport_adr;
end

assign ethmac_tx_cdc_wrport_dat_r = storage_11[memadr_5];
assign ethmac_tx_cdc_rdport_dat_r = storage_11[memadr_6];

reg [41:0] storage_12[0:63];
reg [5:0] memadr_7;
reg [5:0] memadr_8;
always @(posedge eth_rx_clk) begin
	if (ethmac_rx_cdc_wrport_we)
		storage_12[ethmac_rx_cdc_wrport_adr] <= ethmac_rx_cdc_wrport_dat_w;
	memadr_7 <= ethmac_rx_cdc_wrport_adr;
end

always @(posedge sys_clk) begin
	memadr_8 <= ethmac_rx_cdc_rdport_adr;
end

assign ethmac_rx_cdc_wrport_dat_r = storage_12[memadr_7];
assign ethmac_rx_cdc_rdport_dat_r = storage_12[memadr_8];

reg [34:0] storage_13[0:1];
reg [34:0] memdat_11;
always @(posedge sys_clk) begin
	if (ethmac_writer_fifo_wrport_we)
		storage_13[ethmac_writer_fifo_wrport_adr] <= ethmac_writer_fifo_wrport_dat_w;
	memdat_11 <= storage_13[ethmac_writer_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethmac_writer_fifo_wrport_dat_r = memdat_11;
assign ethmac_writer_fifo_rdport_dat_r = storage_13[ethmac_writer_fifo_rdport_adr];

reg [31:0] mem_3[0:381];
reg [8:0] memadr_9;
reg [8:0] memadr_10;
always @(posedge sys_clk) begin
	if (ethmac_writer_memory0_we)
		mem_3[ethmac_writer_memory0_adr] <= ethmac_writer_memory0_dat_w;
	memadr_9 <= ethmac_writer_memory0_adr;
end

always @(posedge sys_clk) begin
	memadr_10 <= ethmac_sram0_adr0;
end

assign ethmac_writer_memory0_dat_r = mem_3[memadr_9];
assign ethmac_sram0_dat_r0 = mem_3[memadr_10];

reg [31:0] mem_4[0:381];
reg [8:0] memadr_11;
reg [8:0] memadr_12;
always @(posedge sys_clk) begin
	if (ethmac_writer_memory1_we)
		mem_4[ethmac_writer_memory1_adr] <= ethmac_writer_memory1_dat_w;
	memadr_11 <= ethmac_writer_memory1_adr;
end

always @(posedge sys_clk) begin
	memadr_12 <= ethmac_sram1_adr0;
end

assign ethmac_writer_memory1_dat_r = mem_4[memadr_11];
assign ethmac_sram1_dat_r0 = mem_4[memadr_12];

reg [13:0] storage_14[0:1];
reg [13:0] memdat_12;
always @(posedge sys_clk) begin
	if (ethmac_reader_fifo_wrport_we)
		storage_14[ethmac_reader_fifo_wrport_adr] <= ethmac_reader_fifo_wrport_dat_w;
	memdat_12 <= storage_14[ethmac_reader_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethmac_reader_fifo_wrport_dat_r = memdat_12;
assign ethmac_reader_fifo_rdport_dat_r = storage_14[ethmac_reader_fifo_rdport_adr];

reg [7:0] mem_grain0[0:381];
reg [8:0] memadr_13;
reg [8:0] memadr_14;
always @(posedge sys_clk) begin
	memadr_13 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[0])
		mem_grain0[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[7:0];
	memadr_14 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[7:0] = mem_grain0[memadr_13];
assign ethmac_sram0_dat_r1[7:0] = mem_grain0[memadr_14];

reg [7:0] mem_grain1[0:381];
reg [8:0] memadr_15;
reg [8:0] memadr_16;
always @(posedge sys_clk) begin
	memadr_15 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[1])
		mem_grain1[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[15:8];
	memadr_16 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[15:8] = mem_grain1[memadr_15];
assign ethmac_sram0_dat_r1[15:8] = mem_grain1[memadr_16];

reg [7:0] mem_grain2[0:381];
reg [8:0] memadr_17;
reg [8:0] memadr_18;
always @(posedge sys_clk) begin
	memadr_17 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[2])
		mem_grain2[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[23:16];
	memadr_18 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[23:16] = mem_grain2[memadr_17];
assign ethmac_sram0_dat_r1[23:16] = mem_grain2[memadr_18];

reg [7:0] mem_grain3[0:381];
reg [8:0] memadr_19;
reg [8:0] memadr_20;
always @(posedge sys_clk) begin
	memadr_19 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[3])
		mem_grain3[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[31:24];
	memadr_20 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[31:24] = mem_grain3[memadr_19];
assign ethmac_sram0_dat_r1[31:24] = mem_grain3[memadr_20];

reg [7:0] mem_grain0_1[0:381];
reg [8:0] memadr_21;
reg [8:0] memadr_22;
always @(posedge sys_clk) begin
	memadr_21 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[0])
		mem_grain0_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[7:0];
	memadr_22 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[7:0] = mem_grain0_1[memadr_21];
assign ethmac_sram1_dat_r1[7:0] = mem_grain0_1[memadr_22];

reg [7:0] mem_grain1_1[0:381];
reg [8:0] memadr_23;
reg [8:0] memadr_24;
always @(posedge sys_clk) begin
	memadr_23 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[1])
		mem_grain1_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[15:8];
	memadr_24 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[15:8] = mem_grain1_1[memadr_23];
assign ethmac_sram1_dat_r1[15:8] = mem_grain1_1[memadr_24];

reg [7:0] mem_grain2_1[0:381];
reg [8:0] memadr_25;
reg [8:0] memadr_26;
always @(posedge sys_clk) begin
	memadr_25 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[2])
		mem_grain2_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[23:16];
	memadr_26 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[23:16] = mem_grain2_1[memadr_25];
assign ethmac_sram1_dat_r1[23:16] = mem_grain2_1[memadr_26];

reg [7:0] mem_grain3_1[0:381];
reg [8:0] memadr_27;
reg [8:0] memadr_28;
always @(posedge sys_clk) begin
	memadr_27 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[3])
		mem_grain3_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[31:24];
	memadr_28 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[31:24] = mem_grain3_1[memadr_27];
assign ethmac_sram1_dat_r1[31:24] = mem_grain3_1[memadr_28];

FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(por_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl0),
	.Q(xilinxasyncresetsynchronizerimpl0_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(por_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl0_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl0),
	.Q(por_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_2 (
	.C(sys_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(xilinxasyncresetsynchronizerimpl1_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_3 (
	.C(sys_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl1_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(sys_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_4 (
	.C(base50_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(xilinxasyncresetsynchronizerimpl2_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_5 (
	.C(base50_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl2_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(base50_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_6 (
	.C(encoder_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(sys_rst),
	.Q(xilinxasyncresetsynchronizerimpl3_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_7 (
	.C(encoder_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl3_rst_meta),
	.PRE(sys_rst),
	.Q(encoder_rst)
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_5 (
	.C0(eth_tx_clk),
	.C1((~eth_tx_clk)),
	.CE(1'd1),
	.D0(1'd1),
	.D1((ethphy_mode0 == 1'd1)),
	.R(1'd0),
	.S(1'd0),
	.Q(eth_clocks_gtx)
);

FDPE #(
	.INIT(1'd1)
) FDPE_8 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(ethphy_reset0),
	.Q(xilinxasyncresetsynchronizerimpl4_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_9 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl4_rst_meta),
	.PRE(ethphy_reset0),
	.Q(eth_tx_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_10 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(ethphy_reset0),
	.Q(xilinxasyncresetsynchronizerimpl5_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_11 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl5_rst_meta),
	.PRE(ethphy_reset0),
	.Q(eth_rx_rst)
);

endmodule
