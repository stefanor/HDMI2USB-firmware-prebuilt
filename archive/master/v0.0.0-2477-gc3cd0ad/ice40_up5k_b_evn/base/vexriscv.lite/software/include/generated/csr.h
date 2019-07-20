//--------------------------------------------------------------------------------
// Auto-generated by Migen (562c046) & LiteX (113f7f40) on 2019-07-20 22:45:03
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

/* cas */
#define CSR_CAS_BASE 0xe0000800L
#define CSR_CAS_LEDS_OUT_ADDR 0xe0000800L
#define CSR_CAS_LEDS_OUT_SIZE 1
static inline unsigned char cas_leds_out_read(void) {
	unsigned char r = csr_readl(0xe0000800L);
	return r;
}
static inline void cas_leds_out_write(unsigned char value) {
	csr_writel(value, 0xe0000800L);
}
#define CSR_CAS_SWITCHES_IN_ADDR 0xe0000804L
#define CSR_CAS_SWITCHES_IN_SIZE 1
static inline unsigned char cas_switches_in_read(void) {
	unsigned char r = csr_readl(0xe0000804L);
	return r;
}

/* ctrl */
#define CSR_CTRL_BASE 0xe0001000L
#define CSR_CTRL_RESET_ADDR 0xe0001000L
#define CSR_CTRL_RESET_SIZE 1
static inline unsigned char ctrl_reset_read(void) {
	unsigned char r = csr_readl(0xe0001000L);
	return r;
}
static inline void ctrl_reset_write(unsigned char value) {
	csr_writel(value, 0xe0001000L);
}
#define CSR_CTRL_SCRATCH_ADDR 0xe0001004L
#define CSR_CTRL_SCRATCH_SIZE 4
static inline unsigned int ctrl_scratch_read(void) {
	unsigned int r = csr_readl(0xe0001004L);
	r <<= 8;
	r |= csr_readl(0xe0001008L);
	r <<= 8;
	r |= csr_readl(0xe000100cL);
	r <<= 8;
	r |= csr_readl(0xe0001010L);
	return r;
}
static inline void ctrl_scratch_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0001004L);
	csr_writel(value >> 16, 0xe0001008L);
	csr_writel(value >> 8, 0xe000100cL);
	csr_writel(value, 0xe0001010L);
}
#define CSR_CTRL_BUS_ERRORS_ADDR 0xe0001014L
#define CSR_CTRL_BUS_ERRORS_SIZE 4
static inline unsigned int ctrl_bus_errors_read(void) {
	unsigned int r = csr_readl(0xe0001014L);
	r <<= 8;
	r |= csr_readl(0xe0001018L);
	r <<= 8;
	r |= csr_readl(0xe000101cL);
	r <<= 8;
	r |= csr_readl(0xe0001020L);
	return r;
}

/* spiflash */
#define CSR_SPIFLASH_BASE 0xe0000000L
#define CSR_SPIFLASH_BITBANG_ADDR 0xe0000000L
#define CSR_SPIFLASH_BITBANG_SIZE 1
static inline unsigned char spiflash_bitbang_read(void) {
	unsigned char r = csr_readl(0xe0000000L);
	return r;
}
static inline void spiflash_bitbang_write(unsigned char value) {
	csr_writel(value, 0xe0000000L);
}
#define CSR_SPIFLASH_MISO_ADDR 0xe0000004L
#define CSR_SPIFLASH_MISO_SIZE 1
static inline unsigned char spiflash_miso_read(void) {
	unsigned char r = csr_readl(0xe0000004L);
	return r;
}
#define CSR_SPIFLASH_BITBANG_EN_ADDR 0xe0000008L
#define CSR_SPIFLASH_BITBANG_EN_SIZE 1
static inline unsigned char spiflash_bitbang_en_read(void) {
	unsigned char r = csr_readl(0xe0000008L);
	return r;
}
static inline void spiflash_bitbang_en_write(unsigned char value) {
	csr_writel(value, 0xe0000008L);
}

/* timer0 */
#define CSR_TIMER0_BASE 0xe0003800L
#define CSR_TIMER0_LOAD_ADDR 0xe0003800L
#define CSR_TIMER0_LOAD_SIZE 4
static inline unsigned int timer0_load_read(void) {
	unsigned int r = csr_readl(0xe0003800L);
	r <<= 8;
	r |= csr_readl(0xe0003804L);
	r <<= 8;
	r |= csr_readl(0xe0003808L);
	r <<= 8;
	r |= csr_readl(0xe000380cL);
	return r;
}
static inline void timer0_load_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0003800L);
	csr_writel(value >> 16, 0xe0003804L);
	csr_writel(value >> 8, 0xe0003808L);
	csr_writel(value, 0xe000380cL);
}
#define CSR_TIMER0_RELOAD_ADDR 0xe0003810L
#define CSR_TIMER0_RELOAD_SIZE 4
static inline unsigned int timer0_reload_read(void) {
	unsigned int r = csr_readl(0xe0003810L);
	r <<= 8;
	r |= csr_readl(0xe0003814L);
	r <<= 8;
	r |= csr_readl(0xe0003818L);
	r <<= 8;
	r |= csr_readl(0xe000381cL);
	return r;
}
static inline void timer0_reload_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0003810L);
	csr_writel(value >> 16, 0xe0003814L);
	csr_writel(value >> 8, 0xe0003818L);
	csr_writel(value, 0xe000381cL);
}
#define CSR_TIMER0_EN_ADDR 0xe0003820L
#define CSR_TIMER0_EN_SIZE 1
static inline unsigned char timer0_en_read(void) {
	unsigned char r = csr_readl(0xe0003820L);
	return r;
}
static inline void timer0_en_write(unsigned char value) {
	csr_writel(value, 0xe0003820L);
}
#define CSR_TIMER0_UPDATE_VALUE_ADDR 0xe0003824L
#define CSR_TIMER0_UPDATE_VALUE_SIZE 1
static inline unsigned char timer0_update_value_read(void) {
	unsigned char r = csr_readl(0xe0003824L);
	return r;
}
static inline void timer0_update_value_write(unsigned char value) {
	csr_writel(value, 0xe0003824L);
}
#define CSR_TIMER0_VALUE_ADDR 0xe0003828L
#define CSR_TIMER0_VALUE_SIZE 4
static inline unsigned int timer0_value_read(void) {
	unsigned int r = csr_readl(0xe0003828L);
	r <<= 8;
	r |= csr_readl(0xe000382cL);
	r <<= 8;
	r |= csr_readl(0xe0003830L);
	r <<= 8;
	r |= csr_readl(0xe0003834L);
	return r;
}
#define CSR_TIMER0_EV_STATUS_ADDR 0xe0003838L
#define CSR_TIMER0_EV_STATUS_SIZE 1
static inline unsigned char timer0_ev_status_read(void) {
	unsigned char r = csr_readl(0xe0003838L);
	return r;
}
static inline void timer0_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe0003838L);
}
#define CSR_TIMER0_EV_PENDING_ADDR 0xe000383cL
#define CSR_TIMER0_EV_PENDING_SIZE 1
static inline unsigned char timer0_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe000383cL);
	return r;
}
static inline void timer0_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe000383cL);
}
#define CSR_TIMER0_EV_ENABLE_ADDR 0xe0003840L
#define CSR_TIMER0_EV_ENABLE_SIZE 1
static inline unsigned char timer0_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0003840L);
	return r;
}
static inline void timer0_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0003840L);
}

/* uart */
#define CSR_UART_BASE 0xe0002800L
#define CSR_UART_RXTX_ADDR 0xe0002800L
#define CSR_UART_RXTX_SIZE 1
static inline unsigned char uart_rxtx_read(void) {
	unsigned char r = csr_readl(0xe0002800L);
	return r;
}
static inline void uart_rxtx_write(unsigned char value) {
	csr_writel(value, 0xe0002800L);
}
#define CSR_UART_TXFULL_ADDR 0xe0002804L
#define CSR_UART_TXFULL_SIZE 1
static inline unsigned char uart_txfull_read(void) {
	unsigned char r = csr_readl(0xe0002804L);
	return r;
}
#define CSR_UART_RXEMPTY_ADDR 0xe0002808L
#define CSR_UART_RXEMPTY_SIZE 1
static inline unsigned char uart_rxempty_read(void) {
	unsigned char r = csr_readl(0xe0002808L);
	return r;
}
#define CSR_UART_EV_STATUS_ADDR 0xe000280cL
#define CSR_UART_EV_STATUS_SIZE 1
static inline unsigned char uart_ev_status_read(void) {
	unsigned char r = csr_readl(0xe000280cL);
	return r;
}
static inline void uart_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe000280cL);
}
#define CSR_UART_EV_PENDING_ADDR 0xe0002810L
#define CSR_UART_EV_PENDING_SIZE 1
static inline unsigned char uart_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe0002810L);
	return r;
}
static inline void uart_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe0002810L);
}
#define CSR_UART_EV_ENABLE_ADDR 0xe0002814L
#define CSR_UART_EV_ENABLE_SIZE 1
static inline unsigned char uart_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0002814L);
	return r;
}
static inline void uart_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0002814L);
}

/* uart_phy */
#define CSR_UART_PHY_BASE 0xe0002000L
#define CSR_UART_PHY_TUNING_WORD_ADDR 0xe0002000L
#define CSR_UART_PHY_TUNING_WORD_SIZE 4
static inline unsigned int uart_phy_tuning_word_read(void) {
	unsigned int r = csr_readl(0xe0002000L);
	r <<= 8;
	r |= csr_readl(0xe0002004L);
	r <<= 8;
	r |= csr_readl(0xe0002008L);
	r <<= 8;
	r |= csr_readl(0xe000200cL);
	return r;
}
static inline void uart_phy_tuning_word_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0002000L);
	csr_writel(value >> 16, 0xe0002004L);
	csr_writel(value >> 8, 0xe0002008L);
	csr_writel(value, 0xe000200cL);
}

/* identifier_mem */
#define CSR_IDENTIFIER_MEM_BASE 0xe0003000L

/* constants */
#define TIMER0_INTERRUPT 1
static inline int timer0_interrupt_read(void) {
	return 1;
}
#define UART_INTERRUPT 0
static inline int uart_interrupt_read(void) {
	return 0;
}
#define CSR_DATA_WIDTH 8
static inline int csr_data_width_read(void) {
	return 8;
}
#define SYSTEM_CLOCK_FREQUENCY 12000000
static inline int system_clock_frequency_read(void) {
	return 12000000;
}
#define SPIFLASH_PAGE_SIZE 256
static inline int spiflash_page_size_read(void) {
	return 256;
}
#define SPIFLASH_SECTOR_SIZE 65536
static inline int spiflash_sector_size_read(void) {
	return 65536;
}
#define ROM_DISABLE 1
static inline int rom_disable_read(void) {
	return 1;
}
#define CAS_LEDS_COUNT 3
static inline int cas_leds_count_read(void) {
	return 3;
}
#define CAS_SWITCHES_COUNT 4
static inline int cas_switches_count_read(void) {
	return 4;
}
#define CAS_BUTTONS_COUNT 0
static inline int cas_buttons_count_read(void) {
	return 0;
}
#define CONFIG_CLOCK_FREQUENCY 12000000
static inline int config_clock_frequency_read(void) {
	return 12000000;
}
#define CONFIG_CPU_RESET_ADDR 537001984
static inline int config_cpu_reset_addr_read(void) {
	return 537001984;
}
#define CONFIG_CPU_TYPE "VEXRISCV"
static inline const char * config_cpu_type_read(void) {
	return "VEXRISCV";
}
#define CONFIG_CSR_DATA_WIDTH 8
static inline int config_csr_data_width_read(void) {
	return 8;
}

#endif
