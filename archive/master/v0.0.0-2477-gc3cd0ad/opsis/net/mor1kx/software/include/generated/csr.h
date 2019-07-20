//--------------------------------------------------------------------------------
// Auto-generated by Migen (562c046) & LiteX (113f7f40) on 2019-07-20 22:28:00
//--------------------------------------------------------------------------------
#ifndef __GENERATED_CSR_H
#define __GENERATED_CSR_H
#include <stdint.h>
#ifdef CSR_ACCESSORS_DEFINED
extern void csr_writeb(uint8_t value, unsigned long addr);
extern uint8_t csr_readb(unsigned long addr);
extern void csr_writew(uint16_t value, unsigned long addr);
extern uint16_t csr_readw(unsigned long addr);
extern void csr_writel(uint32_t value, unsigned long addr);
extern uint32_t csr_readl(unsigned long addr);
#else /* ! CSR_ACCESSORS_DEFINED */
#include <hw/common.h>
#endif /* ! CSR_ACCESSORS_DEFINED */

/* ctrl */
#define CSR_CTRL_BASE 0xe0000000L
#define CSR_CTRL_RESET_ADDR 0xe0000000L
#define CSR_CTRL_RESET_SIZE 1
static inline unsigned char ctrl_reset_read(void) {
	unsigned char r = csr_readl(0xe0000000L);
	return r;
}
static inline void ctrl_reset_write(unsigned char value) {
	csr_writel(value, 0xe0000000L);
}
#define CSR_CTRL_SCRATCH_ADDR 0xe0000004L
#define CSR_CTRL_SCRATCH_SIZE 4
static inline unsigned int ctrl_scratch_read(void) {
	unsigned int r = csr_readl(0xe0000004L);
	r <<= 8;
	r |= csr_readl(0xe0000008L);
	r <<= 8;
	r |= csr_readl(0xe000000cL);
	r <<= 8;
	r |= csr_readl(0xe0000010L);
	return r;
}
static inline void ctrl_scratch_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0000004L);
	csr_writel(value >> 16, 0xe0000008L);
	csr_writel(value >> 8, 0xe000000cL);
	csr_writel(value, 0xe0000010L);
}
#define CSR_CTRL_BUS_ERRORS_ADDR 0xe0000014L
#define CSR_CTRL_BUS_ERRORS_SIZE 4
static inline unsigned int ctrl_bus_errors_read(void) {
	unsigned int r = csr_readl(0xe0000014L);
	r <<= 8;
	r |= csr_readl(0xe0000018L);
	r <<= 8;
	r |= csr_readl(0xe000001cL);
	r <<= 8;
	r |= csr_readl(0xe0000020L);
	return r;
}

/* ethmac */
#define CSR_ETHMAC_BASE 0xe000a000L
#define CSR_ETHMAC_SRAM_WRITER_SLOT_ADDR 0xe000a000L
#define CSR_ETHMAC_SRAM_WRITER_SLOT_SIZE 1
static inline unsigned char ethmac_sram_writer_slot_read(void) {
	unsigned char r = csr_readl(0xe000a000L);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_LENGTH_ADDR 0xe000a004L
#define CSR_ETHMAC_SRAM_WRITER_LENGTH_SIZE 4
static inline unsigned int ethmac_sram_writer_length_read(void) {
	unsigned int r = csr_readl(0xe000a004L);
	r <<= 8;
	r |= csr_readl(0xe000a008L);
	r <<= 8;
	r |= csr_readl(0xe000a00cL);
	r <<= 8;
	r |= csr_readl(0xe000a010L);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_ERRORS_ADDR 0xe000a014L
#define CSR_ETHMAC_SRAM_WRITER_ERRORS_SIZE 4
static inline unsigned int ethmac_sram_writer_errors_read(void) {
	unsigned int r = csr_readl(0xe000a014L);
	r <<= 8;
	r |= csr_readl(0xe000a018L);
	r <<= 8;
	r |= csr_readl(0xe000a01cL);
	r <<= 8;
	r |= csr_readl(0xe000a020L);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_EV_STATUS_ADDR 0xe000a024L
#define CSR_ETHMAC_SRAM_WRITER_EV_STATUS_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_status_read(void) {
	unsigned char r = csr_readl(0xe000a024L);
	return r;
}
static inline void ethmac_sram_writer_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe000a024L);
}
#define CSR_ETHMAC_SRAM_WRITER_EV_PENDING_ADDR 0xe000a028L
#define CSR_ETHMAC_SRAM_WRITER_EV_PENDING_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe000a028L);
	return r;
}
static inline void ethmac_sram_writer_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe000a028L);
}
#define CSR_ETHMAC_SRAM_WRITER_EV_ENABLE_ADDR 0xe000a02cL
#define CSR_ETHMAC_SRAM_WRITER_EV_ENABLE_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe000a02cL);
	return r;
}
static inline void ethmac_sram_writer_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe000a02cL);
}
#define CSR_ETHMAC_SRAM_READER_START_ADDR 0xe000a030L
#define CSR_ETHMAC_SRAM_READER_START_SIZE 1
static inline unsigned char ethmac_sram_reader_start_read(void) {
	unsigned char r = csr_readl(0xe000a030L);
	return r;
}
static inline void ethmac_sram_reader_start_write(unsigned char value) {
	csr_writel(value, 0xe000a030L);
}
#define CSR_ETHMAC_SRAM_READER_READY_ADDR 0xe000a034L
#define CSR_ETHMAC_SRAM_READER_READY_SIZE 1
static inline unsigned char ethmac_sram_reader_ready_read(void) {
	unsigned char r = csr_readl(0xe000a034L);
	return r;
}
#define CSR_ETHMAC_SRAM_READER_LEVEL_ADDR 0xe000a038L
#define CSR_ETHMAC_SRAM_READER_LEVEL_SIZE 1
static inline unsigned char ethmac_sram_reader_level_read(void) {
	unsigned char r = csr_readl(0xe000a038L);
	return r;
}
#define CSR_ETHMAC_SRAM_READER_SLOT_ADDR 0xe000a03cL
#define CSR_ETHMAC_SRAM_READER_SLOT_SIZE 1
static inline unsigned char ethmac_sram_reader_slot_read(void) {
	unsigned char r = csr_readl(0xe000a03cL);
	return r;
}
static inline void ethmac_sram_reader_slot_write(unsigned char value) {
	csr_writel(value, 0xe000a03cL);
}
#define CSR_ETHMAC_SRAM_READER_LENGTH_ADDR 0xe000a040L
#define CSR_ETHMAC_SRAM_READER_LENGTH_SIZE 2
static inline unsigned short int ethmac_sram_reader_length_read(void) {
	unsigned short int r = csr_readl(0xe000a040L);
	r <<= 8;
	r |= csr_readl(0xe000a044L);
	return r;
}
static inline void ethmac_sram_reader_length_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a040L);
	csr_writel(value, 0xe000a044L);
}
#define CSR_ETHMAC_SRAM_READER_EV_STATUS_ADDR 0xe000a048L
#define CSR_ETHMAC_SRAM_READER_EV_STATUS_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_status_read(void) {
	unsigned char r = csr_readl(0xe000a048L);
	return r;
}
static inline void ethmac_sram_reader_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe000a048L);
}
#define CSR_ETHMAC_SRAM_READER_EV_PENDING_ADDR 0xe000a04cL
#define CSR_ETHMAC_SRAM_READER_EV_PENDING_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe000a04cL);
	return r;
}
static inline void ethmac_sram_reader_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe000a04cL);
}
#define CSR_ETHMAC_SRAM_READER_EV_ENABLE_ADDR 0xe000a050L
#define CSR_ETHMAC_SRAM_READER_EV_ENABLE_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe000a050L);
	return r;
}
static inline void ethmac_sram_reader_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe000a050L);
}
#define CSR_ETHMAC_PREAMBLE_CRC_ADDR 0xe000a054L
#define CSR_ETHMAC_PREAMBLE_CRC_SIZE 1
static inline unsigned char ethmac_preamble_crc_read(void) {
	unsigned char r = csr_readl(0xe000a054L);
	return r;
}
#define CSR_ETHMAC_PREAMBLE_ERRORS_ADDR 0xe000a058L
#define CSR_ETHMAC_PREAMBLE_ERRORS_SIZE 4
static inline unsigned int ethmac_preamble_errors_read(void) {
	unsigned int r = csr_readl(0xe000a058L);
	r <<= 8;
	r |= csr_readl(0xe000a05cL);
	r <<= 8;
	r |= csr_readl(0xe000a060L);
	r <<= 8;
	r |= csr_readl(0xe000a064L);
	return r;
}
#define CSR_ETHMAC_CRC_ERRORS_ADDR 0xe000a068L
#define CSR_ETHMAC_CRC_ERRORS_SIZE 4
static inline unsigned int ethmac_crc_errors_read(void) {
	unsigned int r = csr_readl(0xe000a068L);
	r <<= 8;
	r |= csr_readl(0xe000a06cL);
	r <<= 8;
	r |= csr_readl(0xe000a070L);
	r <<= 8;
	r |= csr_readl(0xe000a074L);
	return r;
}

/* ethphy */
#define CSR_ETHPHY_BASE 0xe0009800L
#define CSR_ETHPHY_CRG_RESET_ADDR 0xe0009800L
#define CSR_ETHPHY_CRG_RESET_SIZE 1
static inline unsigned char ethphy_crg_reset_read(void) {
	unsigned char r = csr_readl(0xe0009800L);
	return r;
}
static inline void ethphy_crg_reset_write(unsigned char value) {
	csr_writel(value, 0xe0009800L);
}
#define CSR_ETHPHY_MDIO_W_ADDR 0xe0009804L
#define CSR_ETHPHY_MDIO_W_SIZE 1
static inline unsigned char ethphy_mdio_w_read(void) {
	unsigned char r = csr_readl(0xe0009804L);
	return r;
}
static inline void ethphy_mdio_w_write(unsigned char value) {
	csr_writel(value, 0xe0009804L);
}
#define CSR_ETHPHY_MDIO_R_ADDR 0xe0009808L
#define CSR_ETHPHY_MDIO_R_SIZE 1
static inline unsigned char ethphy_mdio_r_read(void) {
	unsigned char r = csr_readl(0xe0009808L);
	return r;
}

/* front_panel */
#define CSR_FRONT_PANEL_BASE 0xe0005800L
#define CSR_FRONT_PANEL_SWITCHES_IN_ADDR 0xe0005800L
#define CSR_FRONT_PANEL_SWITCHES_IN_SIZE 1
static inline unsigned char front_panel_switches_in_read(void) {
	unsigned char r = csr_readl(0xe0005800L);
	return r;
}
#define CSR_FRONT_PANEL_LEDS_OUT_ADDR 0xe0005804L
#define CSR_FRONT_PANEL_LEDS_OUT_SIZE 1
static inline unsigned char front_panel_leds_out_read(void) {
	unsigned char r = csr_readl(0xe0005804L);
	return r;
}
static inline void front_panel_leds_out_write(unsigned char value) {
	csr_writel(value, 0xe0005804L);
}

/* info */
#define CSR_INFO_BASE 0xe0006800L
#define CSR_INFO_DNA_ID_ADDR 0xe0006800L
#define CSR_INFO_DNA_ID_SIZE 8
static inline unsigned long long int info_dna_id_read(void) {
	unsigned long long int r = csr_readl(0xe0006800L);
	r <<= 8;
	r |= csr_readl(0xe0006804L);
	r <<= 8;
	r |= csr_readl(0xe0006808L);
	r <<= 8;
	r |= csr_readl(0xe000680cL);
	r <<= 8;
	r |= csr_readl(0xe0006810L);
	r <<= 8;
	r |= csr_readl(0xe0006814L);
	r <<= 8;
	r |= csr_readl(0xe0006818L);
	r <<= 8;
	r |= csr_readl(0xe000681cL);
	return r;
}
#define CSR_INFO_GIT_COMMIT_ADDR 0xe0006820L
#define CSR_INFO_GIT_COMMIT_SIZE 20
#define CSR_INFO_PLATFORM_PLATFORM_ADDR 0xe0006870L
#define CSR_INFO_PLATFORM_PLATFORM_SIZE 8
static inline unsigned long long int info_platform_platform_read(void) {
	unsigned long long int r = csr_readl(0xe0006870L);
	r <<= 8;
	r |= csr_readl(0xe0006874L);
	r <<= 8;
	r |= csr_readl(0xe0006878L);
	r <<= 8;
	r |= csr_readl(0xe000687cL);
	r <<= 8;
	r |= csr_readl(0xe0006880L);
	r <<= 8;
	r |= csr_readl(0xe0006884L);
	r <<= 8;
	r |= csr_readl(0xe0006888L);
	r <<= 8;
	r |= csr_readl(0xe000688cL);
	return r;
}
#define CSR_INFO_PLATFORM_TARGET_ADDR 0xe0006890L
#define CSR_INFO_PLATFORM_TARGET_SIZE 8
static inline unsigned long long int info_platform_target_read(void) {
	unsigned long long int r = csr_readl(0xe0006890L);
	r <<= 8;
	r |= csr_readl(0xe0006894L);
	r <<= 8;
	r |= csr_readl(0xe0006898L);
	r <<= 8;
	r |= csr_readl(0xe000689cL);
	r <<= 8;
	r |= csr_readl(0xe00068a0L);
	r <<= 8;
	r |= csr_readl(0xe00068a4L);
	r <<= 8;
	r |= csr_readl(0xe00068a8L);
	r <<= 8;
	r |= csr_readl(0xe00068acL);
	return r;
}

/* opsis_i2c */
#define CSR_OPSIS_I2C_BASE 0xe0008800L
#define CSR_OPSIS_I2C_MASTER_W_ADDR 0xe0008800L
#define CSR_OPSIS_I2C_MASTER_W_SIZE 1
static inline unsigned char opsis_i2c_master_w_read(void) {
	unsigned char r = csr_readl(0xe0008800L);
	return r;
}
static inline void opsis_i2c_master_w_write(unsigned char value) {
	csr_writel(value, 0xe0008800L);
}
#define CSR_OPSIS_I2C_MASTER_R_ADDR 0xe0008804L
#define CSR_OPSIS_I2C_MASTER_R_SIZE 1
static inline unsigned char opsis_i2c_master_r_read(void) {
	unsigned char r = csr_readl(0xe0008804L);
	return r;
}
#define CSR_OPSIS_I2C_FX2_RESET_OUT_ADDR 0xe0008808L
#define CSR_OPSIS_I2C_FX2_RESET_OUT_SIZE 1
static inline unsigned char opsis_i2c_fx2_reset_out_read(void) {
	unsigned char r = csr_readl(0xe0008808L);
	return r;
}
static inline void opsis_i2c_fx2_reset_out_write(unsigned char value) {
	csr_writel(value, 0xe0008808L);
}
#define CSR_OPSIS_I2C_FX2_HACK_SHIFT_REG_ADDR 0xe000880cL
#define CSR_OPSIS_I2C_FX2_HACK_SHIFT_REG_SIZE 1
static inline unsigned char opsis_i2c_fx2_hack_shift_reg_read(void) {
	unsigned char r = csr_readl(0xe000880cL);
	return r;
}
static inline void opsis_i2c_fx2_hack_shift_reg_write(unsigned char value) {
	csr_writel(value, 0xe000880cL);
}
#define CSR_OPSIS_I2C_FX2_HACK_STATUS_ADDR 0xe0008810L
#define CSR_OPSIS_I2C_FX2_HACK_STATUS_SIZE 1
static inline unsigned char opsis_i2c_fx2_hack_status_read(void) {
	unsigned char r = csr_readl(0xe0008810L);
	return r;
}
static inline void opsis_i2c_fx2_hack_status_write(unsigned char value) {
	csr_writel(value, 0xe0008810L);
}
#define CSR_OPSIS_I2C_FX2_HACK_SLAVE_ADDR_ADDR 0xe0008814L
#define CSR_OPSIS_I2C_FX2_HACK_SLAVE_ADDR_SIZE 1
static inline unsigned char opsis_i2c_fx2_hack_slave_addr_read(void) {
	unsigned char r = csr_readl(0xe0008814L);
	return r;
}
static inline void opsis_i2c_fx2_hack_slave_addr_write(unsigned char value) {
	csr_writel(value, 0xe0008814L);
}
#define CSR_OPSIS_I2C_MUX_SEL_ADDR 0xe0008818L
#define CSR_OPSIS_I2C_MUX_SEL_SIZE 1
static inline unsigned char opsis_i2c_mux_sel_read(void) {
	unsigned char r = csr_readl(0xe0008818L);
	return r;
}
static inline void opsis_i2c_mux_sel_write(unsigned char value) {
	csr_writel(value, 0xe0008818L);
}

/* sdram */
#define CSR_SDRAM_BASE 0xe0004000L
#define CSR_SDRAM_DFII_CONTROL_ADDR 0xe0004000L
#define CSR_SDRAM_DFII_CONTROL_SIZE 1
static inline unsigned char sdram_dfii_control_read(void) {
	unsigned char r = csr_readl(0xe0004000L);
	return r;
}
static inline void sdram_dfii_control_write(unsigned char value) {
	csr_writel(value, 0xe0004000L);
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ADDR 0xe0004004L
#define CSR_SDRAM_DFII_PI0_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_read(void) {
	unsigned char r = csr_readl(0xe0004004L);
	return r;
}
static inline void sdram_dfii_pi0_command_write(unsigned char value) {
	csr_writel(value, 0xe0004004L);
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_ADDR 0xe0004008L
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_issue_read(void) {
	unsigned char r = csr_readl(0xe0004008L);
	return r;
}
static inline void sdram_dfii_pi0_command_issue_write(unsigned char value) {
	csr_writel(value, 0xe0004008L);
}
#define CSR_SDRAM_DFII_PI0_ADDRESS_ADDR 0xe000400cL
#define CSR_SDRAM_DFII_PI0_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi0_address_read(void) {
	unsigned short int r = csr_readl(0xe000400cL);
	r <<= 8;
	r |= csr_readl(0xe0004010L);
	return r;
}
static inline void sdram_dfii_pi0_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000400cL);
	csr_writel(value, 0xe0004010L);
}
#define CSR_SDRAM_DFII_PI0_BADDRESS_ADDR 0xe0004014L
#define CSR_SDRAM_DFII_PI0_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi0_baddress_read(void) {
	unsigned char r = csr_readl(0xe0004014L);
	return r;
}
static inline void sdram_dfii_pi0_baddress_write(unsigned char value) {
	csr_writel(value, 0xe0004014L);
}
#define CSR_SDRAM_DFII_PI0_WRDATA_ADDR 0xe0004018L
#define CSR_SDRAM_DFII_PI0_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi0_wrdata_read(void) {
	unsigned int r = csr_readl(0xe0004018L);
	r <<= 8;
	r |= csr_readl(0xe000401cL);
	r <<= 8;
	r |= csr_readl(0xe0004020L);
	r <<= 8;
	r |= csr_readl(0xe0004024L);
	return r;
}
static inline void sdram_dfii_pi0_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0004018L);
	csr_writel(value >> 16, 0xe000401cL);
	csr_writel(value >> 8, 0xe0004020L);
	csr_writel(value, 0xe0004024L);
}
#define CSR_SDRAM_DFII_PI0_RDDATA_ADDR 0xe0004028L
#define CSR_SDRAM_DFII_PI0_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi0_rddata_read(void) {
	unsigned int r = csr_readl(0xe0004028L);
	r <<= 8;
	r |= csr_readl(0xe000402cL);
	r <<= 8;
	r |= csr_readl(0xe0004030L);
	r <<= 8;
	r |= csr_readl(0xe0004034L);
	return r;
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ADDR 0xe0004038L
#define CSR_SDRAM_DFII_PI1_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_read(void) {
	unsigned char r = csr_readl(0xe0004038L);
	return r;
}
static inline void sdram_dfii_pi1_command_write(unsigned char value) {
	csr_writel(value, 0xe0004038L);
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_ADDR 0xe000403cL
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_issue_read(void) {
	unsigned char r = csr_readl(0xe000403cL);
	return r;
}
static inline void sdram_dfii_pi1_command_issue_write(unsigned char value) {
	csr_writel(value, 0xe000403cL);
}
#define CSR_SDRAM_DFII_PI1_ADDRESS_ADDR 0xe0004040L
#define CSR_SDRAM_DFII_PI1_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi1_address_read(void) {
	unsigned short int r = csr_readl(0xe0004040L);
	r <<= 8;
	r |= csr_readl(0xe0004044L);
	return r;
}
static inline void sdram_dfii_pi1_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0004040L);
	csr_writel(value, 0xe0004044L);
}
#define CSR_SDRAM_DFII_PI1_BADDRESS_ADDR 0xe0004048L
#define CSR_SDRAM_DFII_PI1_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi1_baddress_read(void) {
	unsigned char r = csr_readl(0xe0004048L);
	return r;
}
static inline void sdram_dfii_pi1_baddress_write(unsigned char value) {
	csr_writel(value, 0xe0004048L);
}
#define CSR_SDRAM_DFII_PI1_WRDATA_ADDR 0xe000404cL
#define CSR_SDRAM_DFII_PI1_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi1_wrdata_read(void) {
	unsigned int r = csr_readl(0xe000404cL);
	r <<= 8;
	r |= csr_readl(0xe0004050L);
	r <<= 8;
	r |= csr_readl(0xe0004054L);
	r <<= 8;
	r |= csr_readl(0xe0004058L);
	return r;
}
static inline void sdram_dfii_pi1_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000404cL);
	csr_writel(value >> 16, 0xe0004050L);
	csr_writel(value >> 8, 0xe0004054L);
	csr_writel(value, 0xe0004058L);
}
#define CSR_SDRAM_DFII_PI1_RDDATA_ADDR 0xe000405cL
#define CSR_SDRAM_DFII_PI1_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi1_rddata_read(void) {
	unsigned int r = csr_readl(0xe000405cL);
	r <<= 8;
	r |= csr_readl(0xe0004060L);
	r <<= 8;
	r |= csr_readl(0xe0004064L);
	r <<= 8;
	r |= csr_readl(0xe0004068L);
	return r;
}
#define CSR_SDRAM_DFII_PI2_COMMAND_ADDR 0xe000406cL
#define CSR_SDRAM_DFII_PI2_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi2_command_read(void) {
	unsigned char r = csr_readl(0xe000406cL);
	return r;
}
static inline void sdram_dfii_pi2_command_write(unsigned char value) {
	csr_writel(value, 0xe000406cL);
}
#define CSR_SDRAM_DFII_PI2_COMMAND_ISSUE_ADDR 0xe0004070L
#define CSR_SDRAM_DFII_PI2_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi2_command_issue_read(void) {
	unsigned char r = csr_readl(0xe0004070L);
	return r;
}
static inline void sdram_dfii_pi2_command_issue_write(unsigned char value) {
	csr_writel(value, 0xe0004070L);
}
#define CSR_SDRAM_DFII_PI2_ADDRESS_ADDR 0xe0004074L
#define CSR_SDRAM_DFII_PI2_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi2_address_read(void) {
	unsigned short int r = csr_readl(0xe0004074L);
	r <<= 8;
	r |= csr_readl(0xe0004078L);
	return r;
}
static inline void sdram_dfii_pi2_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0004074L);
	csr_writel(value, 0xe0004078L);
}
#define CSR_SDRAM_DFII_PI2_BADDRESS_ADDR 0xe000407cL
#define CSR_SDRAM_DFII_PI2_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi2_baddress_read(void) {
	unsigned char r = csr_readl(0xe000407cL);
	return r;
}
static inline void sdram_dfii_pi2_baddress_write(unsigned char value) {
	csr_writel(value, 0xe000407cL);
}
#define CSR_SDRAM_DFII_PI2_WRDATA_ADDR 0xe0004080L
#define CSR_SDRAM_DFII_PI2_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi2_wrdata_read(void) {
	unsigned int r = csr_readl(0xe0004080L);
	r <<= 8;
	r |= csr_readl(0xe0004084L);
	r <<= 8;
	r |= csr_readl(0xe0004088L);
	r <<= 8;
	r |= csr_readl(0xe000408cL);
	return r;
}
static inline void sdram_dfii_pi2_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0004080L);
	csr_writel(value >> 16, 0xe0004084L);
	csr_writel(value >> 8, 0xe0004088L);
	csr_writel(value, 0xe000408cL);
}
#define CSR_SDRAM_DFII_PI2_RDDATA_ADDR 0xe0004090L
#define CSR_SDRAM_DFII_PI2_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi2_rddata_read(void) {
	unsigned int r = csr_readl(0xe0004090L);
	r <<= 8;
	r |= csr_readl(0xe0004094L);
	r <<= 8;
	r |= csr_readl(0xe0004098L);
	r <<= 8;
	r |= csr_readl(0xe000409cL);
	return r;
}
#define CSR_SDRAM_DFII_PI3_COMMAND_ADDR 0xe00040a0L
#define CSR_SDRAM_DFII_PI3_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi3_command_read(void) {
	unsigned char r = csr_readl(0xe00040a0L);
	return r;
}
static inline void sdram_dfii_pi3_command_write(unsigned char value) {
	csr_writel(value, 0xe00040a0L);
}
#define CSR_SDRAM_DFII_PI3_COMMAND_ISSUE_ADDR 0xe00040a4L
#define CSR_SDRAM_DFII_PI3_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi3_command_issue_read(void) {
	unsigned char r = csr_readl(0xe00040a4L);
	return r;
}
static inline void sdram_dfii_pi3_command_issue_write(unsigned char value) {
	csr_writel(value, 0xe00040a4L);
}
#define CSR_SDRAM_DFII_PI3_ADDRESS_ADDR 0xe00040a8L
#define CSR_SDRAM_DFII_PI3_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi3_address_read(void) {
	unsigned short int r = csr_readl(0xe00040a8L);
	r <<= 8;
	r |= csr_readl(0xe00040acL);
	return r;
}
static inline void sdram_dfii_pi3_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe00040a8L);
	csr_writel(value, 0xe00040acL);
}
#define CSR_SDRAM_DFII_PI3_BADDRESS_ADDR 0xe00040b0L
#define CSR_SDRAM_DFII_PI3_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi3_baddress_read(void) {
	unsigned char r = csr_readl(0xe00040b0L);
	return r;
}
static inline void sdram_dfii_pi3_baddress_write(unsigned char value) {
	csr_writel(value, 0xe00040b0L);
}
#define CSR_SDRAM_DFII_PI3_WRDATA_ADDR 0xe00040b4L
#define CSR_SDRAM_DFII_PI3_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi3_wrdata_read(void) {
	unsigned int r = csr_readl(0xe00040b4L);
	r <<= 8;
	r |= csr_readl(0xe00040b8L);
	r <<= 8;
	r |= csr_readl(0xe00040bcL);
	r <<= 8;
	r |= csr_readl(0xe00040c0L);
	return r;
}
static inline void sdram_dfii_pi3_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xe00040b4L);
	csr_writel(value >> 16, 0xe00040b8L);
	csr_writel(value >> 8, 0xe00040bcL);
	csr_writel(value, 0xe00040c0L);
}
#define CSR_SDRAM_DFII_PI3_RDDATA_ADDR 0xe00040c4L
#define CSR_SDRAM_DFII_PI3_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi3_rddata_read(void) {
	unsigned int r = csr_readl(0xe00040c4L);
	r <<= 8;
	r |= csr_readl(0xe00040c8L);
	r <<= 8;
	r |= csr_readl(0xe00040ccL);
	r <<= 8;
	r |= csr_readl(0xe00040d0L);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_ADDR 0xe00040d4L
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_SIZE 1
static inline unsigned char sdram_controller_bandwidth_update_read(void) {
	unsigned char r = csr_readl(0xe00040d4L);
	return r;
}
static inline void sdram_controller_bandwidth_update_write(unsigned char value) {
	csr_writel(value, 0xe00040d4L);
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_ADDR 0xe00040d8L
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nreads_read(void) {
	unsigned int r = csr_readl(0xe00040d8L);
	r <<= 8;
	r |= csr_readl(0xe00040dcL);
	r <<= 8;
	r |= csr_readl(0xe00040e0L);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_ADDR 0xe00040e4L
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nwrites_read(void) {
	unsigned int r = csr_readl(0xe00040e4L);
	r <<= 8;
	r |= csr_readl(0xe00040e8L);
	r <<= 8;
	r |= csr_readl(0xe00040ecL);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_ADDR 0xe00040f0L
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_SIZE 1
static inline unsigned char sdram_controller_bandwidth_data_width_read(void) {
	unsigned char r = csr_readl(0xe00040f0L);
	return r;
}

/* spiflash */
#define CSR_SPIFLASH_BASE 0xe0005000L
#define CSR_SPIFLASH_BITBANG_ADDR 0xe0005000L
#define CSR_SPIFLASH_BITBANG_SIZE 1
static inline unsigned char spiflash_bitbang_read(void) {
	unsigned char r = csr_readl(0xe0005000L);
	return r;
}
static inline void spiflash_bitbang_write(unsigned char value) {
	csr_writel(value, 0xe0005000L);
}
#define CSR_SPIFLASH_MISO_ADDR 0xe0005004L
#define CSR_SPIFLASH_MISO_SIZE 1
static inline unsigned char spiflash_miso_read(void) {
	unsigned char r = csr_readl(0xe0005004L);
	return r;
}
#define CSR_SPIFLASH_BITBANG_EN_ADDR 0xe0005008L
#define CSR_SPIFLASH_BITBANG_EN_SIZE 1
static inline unsigned char spiflash_bitbang_en_read(void) {
	unsigned char r = csr_readl(0xe0005008L);
	return r;
}
static inline void spiflash_bitbang_en_write(unsigned char value) {
	csr_writel(value, 0xe0005008L);
}

/* timer0 */
#define CSR_TIMER0_BASE 0xe0001800L
#define CSR_TIMER0_LOAD_ADDR 0xe0001800L
#define CSR_TIMER0_LOAD_SIZE 4
static inline unsigned int timer0_load_read(void) {
	unsigned int r = csr_readl(0xe0001800L);
	r <<= 8;
	r |= csr_readl(0xe0001804L);
	r <<= 8;
	r |= csr_readl(0xe0001808L);
	r <<= 8;
	r |= csr_readl(0xe000180cL);
	return r;
}
static inline void timer0_load_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0001800L);
	csr_writel(value >> 16, 0xe0001804L);
	csr_writel(value >> 8, 0xe0001808L);
	csr_writel(value, 0xe000180cL);
}
#define CSR_TIMER0_RELOAD_ADDR 0xe0001810L
#define CSR_TIMER0_RELOAD_SIZE 4
static inline unsigned int timer0_reload_read(void) {
	unsigned int r = csr_readl(0xe0001810L);
	r <<= 8;
	r |= csr_readl(0xe0001814L);
	r <<= 8;
	r |= csr_readl(0xe0001818L);
	r <<= 8;
	r |= csr_readl(0xe000181cL);
	return r;
}
static inline void timer0_reload_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0001810L);
	csr_writel(value >> 16, 0xe0001814L);
	csr_writel(value >> 8, 0xe0001818L);
	csr_writel(value, 0xe000181cL);
}
#define CSR_TIMER0_EN_ADDR 0xe0001820L
#define CSR_TIMER0_EN_SIZE 1
static inline unsigned char timer0_en_read(void) {
	unsigned char r = csr_readl(0xe0001820L);
	return r;
}
static inline void timer0_en_write(unsigned char value) {
	csr_writel(value, 0xe0001820L);
}
#define CSR_TIMER0_UPDATE_VALUE_ADDR 0xe0001824L
#define CSR_TIMER0_UPDATE_VALUE_SIZE 1
static inline unsigned char timer0_update_value_read(void) {
	unsigned char r = csr_readl(0xe0001824L);
	return r;
}
static inline void timer0_update_value_write(unsigned char value) {
	csr_writel(value, 0xe0001824L);
}
#define CSR_TIMER0_VALUE_ADDR 0xe0001828L
#define CSR_TIMER0_VALUE_SIZE 4
static inline unsigned int timer0_value_read(void) {
	unsigned int r = csr_readl(0xe0001828L);
	r <<= 8;
	r |= csr_readl(0xe000182cL);
	r <<= 8;
	r |= csr_readl(0xe0001830L);
	r <<= 8;
	r |= csr_readl(0xe0001834L);
	return r;
}
#define CSR_TIMER0_EV_STATUS_ADDR 0xe0001838L
#define CSR_TIMER0_EV_STATUS_SIZE 1
static inline unsigned char timer0_ev_status_read(void) {
	unsigned char r = csr_readl(0xe0001838L);
	return r;
}
static inline void timer0_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe0001838L);
}
#define CSR_TIMER0_EV_PENDING_ADDR 0xe000183cL
#define CSR_TIMER0_EV_PENDING_SIZE 1
static inline unsigned char timer0_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe000183cL);
	return r;
}
static inline void timer0_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe000183cL);
}
#define CSR_TIMER0_EV_ENABLE_ADDR 0xe0001840L
#define CSR_TIMER0_EV_ENABLE_SIZE 1
static inline unsigned char timer0_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0001840L);
	return r;
}
static inline void timer0_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0001840L);
}

/* uart */
#define CSR_UART_BASE 0xe0009000L
#define CSR_UART_RXTX_ADDR 0xe0009000L
#define CSR_UART_RXTX_SIZE 1
static inline unsigned char uart_rxtx_read(void) {
	unsigned char r = csr_readl(0xe0009000L);
	return r;
}
static inline void uart_rxtx_write(unsigned char value) {
	csr_writel(value, 0xe0009000L);
}
#define CSR_UART_TXFULL_ADDR 0xe0009004L
#define CSR_UART_TXFULL_SIZE 1
static inline unsigned char uart_txfull_read(void) {
	unsigned char r = csr_readl(0xe0009004L);
	return r;
}
#define CSR_UART_RXEMPTY_ADDR 0xe0009008L
#define CSR_UART_RXEMPTY_SIZE 1
static inline unsigned char uart_rxempty_read(void) {
	unsigned char r = csr_readl(0xe0009008L);
	return r;
}
#define CSR_UART_EV_STATUS_ADDR 0xe000900cL
#define CSR_UART_EV_STATUS_SIZE 1
static inline unsigned char uart_ev_status_read(void) {
	unsigned char r = csr_readl(0xe000900cL);
	return r;
}
static inline void uart_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe000900cL);
}
#define CSR_UART_EV_PENDING_ADDR 0xe0009010L
#define CSR_UART_EV_PENDING_SIZE 1
static inline unsigned char uart_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe0009010L);
	return r;
}
static inline void uart_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe0009010L);
}
#define CSR_UART_EV_ENABLE_ADDR 0xe0009014L
#define CSR_UART_EV_ENABLE_SIZE 1
static inline unsigned char uart_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0009014L);
	return r;
}
static inline void uart_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0009014L);
}

/* identifier_mem */
#define CSR_IDENTIFIER_MEM_BASE 0xe0001000L

/* constants */
#define ETHMAC_INTERRUPT 3
static inline int ethmac_interrupt_read(void) {
	return 3;
}
#define NMI_INTERRUPT 0
static inline int nmi_interrupt_read(void) {
	return 0;
}
#define TIMER0_INTERRUPT 1
static inline int timer0_interrupt_read(void) {
	return 1;
}
#define UART_INTERRUPT 2
static inline int uart_interrupt_read(void) {
	return 2;
}
#define CSR_DATA_WIDTH 8
static inline int csr_data_width_read(void) {
	return 8;
}
#define SYSTEM_CLOCK_FREQUENCY 50000000
static inline int system_clock_frequency_read(void) {
	return 50000000;
}
#define SPIFLASH_PAGE_SIZE 256
static inline int spiflash_page_size_read(void) {
	return 256;
}
#define SPIFLASH_SECTOR_SIZE 65536
static inline int spiflash_sector_size_read(void) {
	return 65536;
}
#define L2_SIZE 8192
static inline int l2_size_read(void) {
	return 8192;
}
#define LOCALIP1 192
static inline int localip1_read(void) {
	return 192;
}
#define LOCALIP2 168
static inline int localip2_read(void) {
	return 168;
}
#define LOCALIP3 100
static inline int localip3_read(void) {
	return 100;
}
#define LOCALIP4 50
static inline int localip4_read(void) {
	return 50;
}
#define REMOTEIP1 192
static inline int remoteip1_read(void) {
	return 192;
}
#define REMOTEIP2 168
static inline int remoteip2_read(void) {
	return 168;
}
#define REMOTEIP3 100
static inline int remoteip3_read(void) {
	return 100;
}
#define REMOTEIP4 100
static inline int remoteip4_read(void) {
	return 100;
}
#define ETHMAC_RX_SLOTS 2
static inline int ethmac_rx_slots_read(void) {
	return 2;
}
#define ETHMAC_TX_SLOTS 2
static inline int ethmac_tx_slots_read(void) {
	return 2;
}
#define ETHMAC_SLOT_SIZE 2048
static inline int ethmac_slot_size_read(void) {
	return 2048;
}
#define CONFIG_CLOCK_FREQUENCY 50000000
static inline int config_clock_frequency_read(void) {
	return 50000000;
}
#define CONFIG_CPU_RESET_ADDR 0
static inline int config_cpu_reset_addr_read(void) {
	return 0;
}
#define CONFIG_CPU_TYPE "MOR1KX"
static inline const char * config_cpu_type_read(void) {
	return "MOR1KX";
}
#define CONFIG_CSR_DATA_WIDTH 8
static inline int config_csr_data_width_read(void) {
	return 8;
}

#endif
