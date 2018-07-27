#ifndef __GENERATED_CSR_H
#define __GENERATED_CSR_H
#include <hw/common.h>

/* ddrphy */
#define CSR_DDRPHY_BASE 0xe0005000
#define CSR_DDRPHY_DLY_SEL_ADDR 0xe0005000
#define CSR_DDRPHY_DLY_SEL_SIZE 1
static inline unsigned char ddrphy_dly_sel_read(void) {
	unsigned char r = MMPTR(0xe0005000);
	return r;
}
static inline void ddrphy_dly_sel_write(unsigned char value) {
	MMPTR(0xe0005000) = value;
}
#define CSR_DDRPHY_RDLY_DQ_RST_ADDR 0xe0005004
#define CSR_DDRPHY_RDLY_DQ_RST_SIZE 1
static inline unsigned char ddrphy_rdly_dq_rst_read(void) {
	unsigned char r = MMPTR(0xe0005004);
	return r;
}
static inline void ddrphy_rdly_dq_rst_write(unsigned char value) {
	MMPTR(0xe0005004) = value;
}
#define CSR_DDRPHY_RDLY_DQ_INC_ADDR 0xe0005008
#define CSR_DDRPHY_RDLY_DQ_INC_SIZE 1
static inline unsigned char ddrphy_rdly_dq_inc_read(void) {
	unsigned char r = MMPTR(0xe0005008);
	return r;
}
static inline void ddrphy_rdly_dq_inc_write(unsigned char value) {
	MMPTR(0xe0005008) = value;
}
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_ADDR 0xe000500c
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_SIZE 1
static inline unsigned char ddrphy_rdly_dq_bitslip_read(void) {
	unsigned char r = MMPTR(0xe000500c);
	return r;
}
static inline void ddrphy_rdly_dq_bitslip_write(unsigned char value) {
	MMPTR(0xe000500c) = value;
}

/* info */
#define CSR_INFO_BASE 0xe0006800
#define CSR_INFO_DNA_ID_ADDR 0xe0006800
#define CSR_INFO_DNA_ID_SIZE 8
static inline unsigned long long int info_dna_id_read(void) {
	unsigned long long int r = MMPTR(0xe0006800);
	r <<= 8;
	r |= MMPTR(0xe0006804);
	r <<= 8;
	r |= MMPTR(0xe0006808);
	r <<= 8;
	r |= MMPTR(0xe000680c);
	r <<= 8;
	r |= MMPTR(0xe0006810);
	r <<= 8;
	r |= MMPTR(0xe0006814);
	r <<= 8;
	r |= MMPTR(0xe0006818);
	r <<= 8;
	r |= MMPTR(0xe000681c);
	return r;
}
#define CSR_INFO_GIT_COMMIT_ADDR 0xe0006820
#define CSR_INFO_GIT_COMMIT_SIZE 20
#define CSR_INFO_PLATFORM_PLATFORM_ADDR 0xe0006870
#define CSR_INFO_PLATFORM_PLATFORM_SIZE 8
static inline unsigned long long int info_platform_platform_read(void) {
	unsigned long long int r = MMPTR(0xe0006870);
	r <<= 8;
	r |= MMPTR(0xe0006874);
	r <<= 8;
	r |= MMPTR(0xe0006878);
	r <<= 8;
	r |= MMPTR(0xe000687c);
	r <<= 8;
	r |= MMPTR(0xe0006880);
	r <<= 8;
	r |= MMPTR(0xe0006884);
	r <<= 8;
	r |= MMPTR(0xe0006888);
	r <<= 8;
	r |= MMPTR(0xe000688c);
	return r;
}
#define CSR_INFO_PLATFORM_TARGET_ADDR 0xe0006890
#define CSR_INFO_PLATFORM_TARGET_SIZE 8
static inline unsigned long long int info_platform_target_read(void) {
	unsigned long long int r = MMPTR(0xe0006890);
	r <<= 8;
	r |= MMPTR(0xe0006894);
	r <<= 8;
	r |= MMPTR(0xe0006898);
	r <<= 8;
	r |= MMPTR(0xe000689c);
	r <<= 8;
	r |= MMPTR(0xe00068a0);
	r <<= 8;
	r |= MMPTR(0xe00068a4);
	r <<= 8;
	r |= MMPTR(0xe00068a8);
	r <<= 8;
	r |= MMPTR(0xe00068ac);
	return r;
}
#define CSR_INFO_XADC_TEMPERATURE_ADDR 0xe00068b0
#define CSR_INFO_XADC_TEMPERATURE_SIZE 2
static inline unsigned short int info_xadc_temperature_read(void) {
	unsigned short int r = MMPTR(0xe00068b0);
	r <<= 8;
	r |= MMPTR(0xe00068b4);
	return r;
}
#define CSR_INFO_XADC_VCCINT_ADDR 0xe00068b8
#define CSR_INFO_XADC_VCCINT_SIZE 2
static inline unsigned short int info_xadc_vccint_read(void) {
	unsigned short int r = MMPTR(0xe00068b8);
	r <<= 8;
	r |= MMPTR(0xe00068bc);
	return r;
}
#define CSR_INFO_XADC_VCCAUX_ADDR 0xe00068c0
#define CSR_INFO_XADC_VCCAUX_SIZE 2
static inline unsigned short int info_xadc_vccaux_read(void) {
	unsigned short int r = MMPTR(0xe00068c0);
	r <<= 8;
	r |= MMPTR(0xe00068c4);
	return r;
}
#define CSR_INFO_XADC_VCCBRAM_ADDR 0xe00068c8
#define CSR_INFO_XADC_VCCBRAM_SIZE 2
static inline unsigned short int info_xadc_vccbram_read(void) {
	unsigned short int r = MMPTR(0xe00068c8);
	r <<= 8;
	r |= MMPTR(0xe00068cc);
	return r;
}

/* sdram */
#define CSR_SDRAM_BASE 0xe0004000
#define CSR_SDRAM_DFII_CONTROL_ADDR 0xe0004000
#define CSR_SDRAM_DFII_CONTROL_SIZE 1
static inline unsigned char sdram_dfii_control_read(void) {
	unsigned char r = MMPTR(0xe0004000);
	return r;
}
static inline void sdram_dfii_control_write(unsigned char value) {
	MMPTR(0xe0004000) = value;
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ADDR 0xe0004004
#define CSR_SDRAM_DFII_PI0_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_read(void) {
	unsigned char r = MMPTR(0xe0004004);
	return r;
}
static inline void sdram_dfii_pi0_command_write(unsigned char value) {
	MMPTR(0xe0004004) = value;
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_ADDR 0xe0004008
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_issue_read(void) {
	unsigned char r = MMPTR(0xe0004008);
	return r;
}
static inline void sdram_dfii_pi0_command_issue_write(unsigned char value) {
	MMPTR(0xe0004008) = value;
}
#define CSR_SDRAM_DFII_PI0_ADDRESS_ADDR 0xe000400c
#define CSR_SDRAM_DFII_PI0_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi0_address_read(void) {
	unsigned short int r = MMPTR(0xe000400c);
	r <<= 8;
	r |= MMPTR(0xe0004010);
	return r;
}
static inline void sdram_dfii_pi0_address_write(unsigned short int value) {
	MMPTR(0xe000400c) = value >> 8;
	MMPTR(0xe0004010) = value;
}
#define CSR_SDRAM_DFII_PI0_BADDRESS_ADDR 0xe0004014
#define CSR_SDRAM_DFII_PI0_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi0_baddress_read(void) {
	unsigned char r = MMPTR(0xe0004014);
	return r;
}
static inline void sdram_dfii_pi0_baddress_write(unsigned char value) {
	MMPTR(0xe0004014) = value;
}
#define CSR_SDRAM_DFII_PI0_WRDATA_ADDR 0xe0004018
#define CSR_SDRAM_DFII_PI0_WRDATA_SIZE 8
static inline unsigned long long int sdram_dfii_pi0_wrdata_read(void) {
	unsigned long long int r = MMPTR(0xe0004018);
	r <<= 8;
	r |= MMPTR(0xe000401c);
	r <<= 8;
	r |= MMPTR(0xe0004020);
	r <<= 8;
	r |= MMPTR(0xe0004024);
	r <<= 8;
	r |= MMPTR(0xe0004028);
	r <<= 8;
	r |= MMPTR(0xe000402c);
	r <<= 8;
	r |= MMPTR(0xe0004030);
	r <<= 8;
	r |= MMPTR(0xe0004034);
	return r;
}
static inline void sdram_dfii_pi0_wrdata_write(unsigned long long int value) {
	MMPTR(0xe0004018) = value >> 56;
	MMPTR(0xe000401c) = value >> 48;
	MMPTR(0xe0004020) = value >> 40;
	MMPTR(0xe0004024) = value >> 32;
	MMPTR(0xe0004028) = value >> 24;
	MMPTR(0xe000402c) = value >> 16;
	MMPTR(0xe0004030) = value >> 8;
	MMPTR(0xe0004034) = value;
}
#define CSR_SDRAM_DFII_PI0_RDDATA_ADDR 0xe0004038
#define CSR_SDRAM_DFII_PI0_RDDATA_SIZE 8
static inline unsigned long long int sdram_dfii_pi0_rddata_read(void) {
	unsigned long long int r = MMPTR(0xe0004038);
	r <<= 8;
	r |= MMPTR(0xe000403c);
	r <<= 8;
	r |= MMPTR(0xe0004040);
	r <<= 8;
	r |= MMPTR(0xe0004044);
	r <<= 8;
	r |= MMPTR(0xe0004048);
	r <<= 8;
	r |= MMPTR(0xe000404c);
	r <<= 8;
	r |= MMPTR(0xe0004050);
	r <<= 8;
	r |= MMPTR(0xe0004054);
	return r;
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ADDR 0xe0004058
#define CSR_SDRAM_DFII_PI1_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_read(void) {
	unsigned char r = MMPTR(0xe0004058);
	return r;
}
static inline void sdram_dfii_pi1_command_write(unsigned char value) {
	MMPTR(0xe0004058) = value;
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_ADDR 0xe000405c
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_issue_read(void) {
	unsigned char r = MMPTR(0xe000405c);
	return r;
}
static inline void sdram_dfii_pi1_command_issue_write(unsigned char value) {
	MMPTR(0xe000405c) = value;
}
#define CSR_SDRAM_DFII_PI1_ADDRESS_ADDR 0xe0004060
#define CSR_SDRAM_DFII_PI1_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi1_address_read(void) {
	unsigned short int r = MMPTR(0xe0004060);
	r <<= 8;
	r |= MMPTR(0xe0004064);
	return r;
}
static inline void sdram_dfii_pi1_address_write(unsigned short int value) {
	MMPTR(0xe0004060) = value >> 8;
	MMPTR(0xe0004064) = value;
}
#define CSR_SDRAM_DFII_PI1_BADDRESS_ADDR 0xe0004068
#define CSR_SDRAM_DFII_PI1_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi1_baddress_read(void) {
	unsigned char r = MMPTR(0xe0004068);
	return r;
}
static inline void sdram_dfii_pi1_baddress_write(unsigned char value) {
	MMPTR(0xe0004068) = value;
}
#define CSR_SDRAM_DFII_PI1_WRDATA_ADDR 0xe000406c
#define CSR_SDRAM_DFII_PI1_WRDATA_SIZE 8
static inline unsigned long long int sdram_dfii_pi1_wrdata_read(void) {
	unsigned long long int r = MMPTR(0xe000406c);
	r <<= 8;
	r |= MMPTR(0xe0004070);
	r <<= 8;
	r |= MMPTR(0xe0004074);
	r <<= 8;
	r |= MMPTR(0xe0004078);
	r <<= 8;
	r |= MMPTR(0xe000407c);
	r <<= 8;
	r |= MMPTR(0xe0004080);
	r <<= 8;
	r |= MMPTR(0xe0004084);
	r <<= 8;
	r |= MMPTR(0xe0004088);
	return r;
}
static inline void sdram_dfii_pi1_wrdata_write(unsigned long long int value) {
	MMPTR(0xe000406c) = value >> 56;
	MMPTR(0xe0004070) = value >> 48;
	MMPTR(0xe0004074) = value >> 40;
	MMPTR(0xe0004078) = value >> 32;
	MMPTR(0xe000407c) = value >> 24;
	MMPTR(0xe0004080) = value >> 16;
	MMPTR(0xe0004084) = value >> 8;
	MMPTR(0xe0004088) = value;
}
#define CSR_SDRAM_DFII_PI1_RDDATA_ADDR 0xe000408c
#define CSR_SDRAM_DFII_PI1_RDDATA_SIZE 8
static inline unsigned long long int sdram_dfii_pi1_rddata_read(void) {
	unsigned long long int r = MMPTR(0xe000408c);
	r <<= 8;
	r |= MMPTR(0xe0004090);
	r <<= 8;
	r |= MMPTR(0xe0004094);
	r <<= 8;
	r |= MMPTR(0xe0004098);
	r <<= 8;
	r |= MMPTR(0xe000409c);
	r <<= 8;
	r |= MMPTR(0xe00040a0);
	r <<= 8;
	r |= MMPTR(0xe00040a4);
	r <<= 8;
	r |= MMPTR(0xe00040a8);
	return r;
}
#define CSR_SDRAM_DFII_PI2_COMMAND_ADDR 0xe00040ac
#define CSR_SDRAM_DFII_PI2_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi2_command_read(void) {
	unsigned char r = MMPTR(0xe00040ac);
	return r;
}
static inline void sdram_dfii_pi2_command_write(unsigned char value) {
	MMPTR(0xe00040ac) = value;
}
#define CSR_SDRAM_DFII_PI2_COMMAND_ISSUE_ADDR 0xe00040b0
#define CSR_SDRAM_DFII_PI2_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi2_command_issue_read(void) {
	unsigned char r = MMPTR(0xe00040b0);
	return r;
}
static inline void sdram_dfii_pi2_command_issue_write(unsigned char value) {
	MMPTR(0xe00040b0) = value;
}
#define CSR_SDRAM_DFII_PI2_ADDRESS_ADDR 0xe00040b4
#define CSR_SDRAM_DFII_PI2_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi2_address_read(void) {
	unsigned short int r = MMPTR(0xe00040b4);
	r <<= 8;
	r |= MMPTR(0xe00040b8);
	return r;
}
static inline void sdram_dfii_pi2_address_write(unsigned short int value) {
	MMPTR(0xe00040b4) = value >> 8;
	MMPTR(0xe00040b8) = value;
}
#define CSR_SDRAM_DFII_PI2_BADDRESS_ADDR 0xe00040bc
#define CSR_SDRAM_DFII_PI2_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi2_baddress_read(void) {
	unsigned char r = MMPTR(0xe00040bc);
	return r;
}
static inline void sdram_dfii_pi2_baddress_write(unsigned char value) {
	MMPTR(0xe00040bc) = value;
}
#define CSR_SDRAM_DFII_PI2_WRDATA_ADDR 0xe00040c0
#define CSR_SDRAM_DFII_PI2_WRDATA_SIZE 8
static inline unsigned long long int sdram_dfii_pi2_wrdata_read(void) {
	unsigned long long int r = MMPTR(0xe00040c0);
	r <<= 8;
	r |= MMPTR(0xe00040c4);
	r <<= 8;
	r |= MMPTR(0xe00040c8);
	r <<= 8;
	r |= MMPTR(0xe00040cc);
	r <<= 8;
	r |= MMPTR(0xe00040d0);
	r <<= 8;
	r |= MMPTR(0xe00040d4);
	r <<= 8;
	r |= MMPTR(0xe00040d8);
	r <<= 8;
	r |= MMPTR(0xe00040dc);
	return r;
}
static inline void sdram_dfii_pi2_wrdata_write(unsigned long long int value) {
	MMPTR(0xe00040c0) = value >> 56;
	MMPTR(0xe00040c4) = value >> 48;
	MMPTR(0xe00040c8) = value >> 40;
	MMPTR(0xe00040cc) = value >> 32;
	MMPTR(0xe00040d0) = value >> 24;
	MMPTR(0xe00040d4) = value >> 16;
	MMPTR(0xe00040d8) = value >> 8;
	MMPTR(0xe00040dc) = value;
}
#define CSR_SDRAM_DFII_PI2_RDDATA_ADDR 0xe00040e0
#define CSR_SDRAM_DFII_PI2_RDDATA_SIZE 8
static inline unsigned long long int sdram_dfii_pi2_rddata_read(void) {
	unsigned long long int r = MMPTR(0xe00040e0);
	r <<= 8;
	r |= MMPTR(0xe00040e4);
	r <<= 8;
	r |= MMPTR(0xe00040e8);
	r <<= 8;
	r |= MMPTR(0xe00040ec);
	r <<= 8;
	r |= MMPTR(0xe00040f0);
	r <<= 8;
	r |= MMPTR(0xe00040f4);
	r <<= 8;
	r |= MMPTR(0xe00040f8);
	r <<= 8;
	r |= MMPTR(0xe00040fc);
	return r;
}
#define CSR_SDRAM_DFII_PI3_COMMAND_ADDR 0xe0004100
#define CSR_SDRAM_DFII_PI3_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi3_command_read(void) {
	unsigned char r = MMPTR(0xe0004100);
	return r;
}
static inline void sdram_dfii_pi3_command_write(unsigned char value) {
	MMPTR(0xe0004100) = value;
}
#define CSR_SDRAM_DFII_PI3_COMMAND_ISSUE_ADDR 0xe0004104
#define CSR_SDRAM_DFII_PI3_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi3_command_issue_read(void) {
	unsigned char r = MMPTR(0xe0004104);
	return r;
}
static inline void sdram_dfii_pi3_command_issue_write(unsigned char value) {
	MMPTR(0xe0004104) = value;
}
#define CSR_SDRAM_DFII_PI3_ADDRESS_ADDR 0xe0004108
#define CSR_SDRAM_DFII_PI3_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi3_address_read(void) {
	unsigned short int r = MMPTR(0xe0004108);
	r <<= 8;
	r |= MMPTR(0xe000410c);
	return r;
}
static inline void sdram_dfii_pi3_address_write(unsigned short int value) {
	MMPTR(0xe0004108) = value >> 8;
	MMPTR(0xe000410c) = value;
}
#define CSR_SDRAM_DFII_PI3_BADDRESS_ADDR 0xe0004110
#define CSR_SDRAM_DFII_PI3_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi3_baddress_read(void) {
	unsigned char r = MMPTR(0xe0004110);
	return r;
}
static inline void sdram_dfii_pi3_baddress_write(unsigned char value) {
	MMPTR(0xe0004110) = value;
}
#define CSR_SDRAM_DFII_PI3_WRDATA_ADDR 0xe0004114
#define CSR_SDRAM_DFII_PI3_WRDATA_SIZE 8
static inline unsigned long long int sdram_dfii_pi3_wrdata_read(void) {
	unsigned long long int r = MMPTR(0xe0004114);
	r <<= 8;
	r |= MMPTR(0xe0004118);
	r <<= 8;
	r |= MMPTR(0xe000411c);
	r <<= 8;
	r |= MMPTR(0xe0004120);
	r <<= 8;
	r |= MMPTR(0xe0004124);
	r <<= 8;
	r |= MMPTR(0xe0004128);
	r <<= 8;
	r |= MMPTR(0xe000412c);
	r <<= 8;
	r |= MMPTR(0xe0004130);
	return r;
}
static inline void sdram_dfii_pi3_wrdata_write(unsigned long long int value) {
	MMPTR(0xe0004114) = value >> 56;
	MMPTR(0xe0004118) = value >> 48;
	MMPTR(0xe000411c) = value >> 40;
	MMPTR(0xe0004120) = value >> 32;
	MMPTR(0xe0004124) = value >> 24;
	MMPTR(0xe0004128) = value >> 16;
	MMPTR(0xe000412c) = value >> 8;
	MMPTR(0xe0004130) = value;
}
#define CSR_SDRAM_DFII_PI3_RDDATA_ADDR 0xe0004134
#define CSR_SDRAM_DFII_PI3_RDDATA_SIZE 8
static inline unsigned long long int sdram_dfii_pi3_rddata_read(void) {
	unsigned long long int r = MMPTR(0xe0004134);
	r <<= 8;
	r |= MMPTR(0xe0004138);
	r <<= 8;
	r |= MMPTR(0xe000413c);
	r <<= 8;
	r |= MMPTR(0xe0004140);
	r <<= 8;
	r |= MMPTR(0xe0004144);
	r <<= 8;
	r |= MMPTR(0xe0004148);
	r <<= 8;
	r |= MMPTR(0xe000414c);
	r <<= 8;
	r |= MMPTR(0xe0004150);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_ADDR 0xe0004154
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_SIZE 1
static inline unsigned char sdram_controller_bandwidth_update_read(void) {
	unsigned char r = MMPTR(0xe0004154);
	return r;
}
static inline void sdram_controller_bandwidth_update_write(unsigned char value) {
	MMPTR(0xe0004154) = value;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_ADDR 0xe0004158
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nreads_read(void) {
	unsigned int r = MMPTR(0xe0004158);
	r <<= 8;
	r |= MMPTR(0xe000415c);
	r <<= 8;
	r |= MMPTR(0xe0004160);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_ADDR 0xe0004164
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nwrites_read(void) {
	unsigned int r = MMPTR(0xe0004164);
	r <<= 8;
	r |= MMPTR(0xe0004168);
	r <<= 8;
	r |= MMPTR(0xe000416c);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_ADDR 0xe0004170
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_SIZE 2
static inline unsigned short int sdram_controller_bandwidth_data_width_read(void) {
	unsigned short int r = MMPTR(0xe0004170);
	r <<= 8;
	r |= MMPTR(0xe0004174);
	return r;
}

/* timer0 */
#define CSR_TIMER0_BASE 0xe0002000
#define CSR_TIMER0_LOAD_ADDR 0xe0002000
#define CSR_TIMER0_LOAD_SIZE 4
static inline unsigned int timer0_load_read(void) {
	unsigned int r = MMPTR(0xe0002000);
	r <<= 8;
	r |= MMPTR(0xe0002004);
	r <<= 8;
	r |= MMPTR(0xe0002008);
	r <<= 8;
	r |= MMPTR(0xe000200c);
	return r;
}
static inline void timer0_load_write(unsigned int value) {
	MMPTR(0xe0002000) = value >> 24;
	MMPTR(0xe0002004) = value >> 16;
	MMPTR(0xe0002008) = value >> 8;
	MMPTR(0xe000200c) = value;
}
#define CSR_TIMER0_RELOAD_ADDR 0xe0002010
#define CSR_TIMER0_RELOAD_SIZE 4
static inline unsigned int timer0_reload_read(void) {
	unsigned int r = MMPTR(0xe0002010);
	r <<= 8;
	r |= MMPTR(0xe0002014);
	r <<= 8;
	r |= MMPTR(0xe0002018);
	r <<= 8;
	r |= MMPTR(0xe000201c);
	return r;
}
static inline void timer0_reload_write(unsigned int value) {
	MMPTR(0xe0002010) = value >> 24;
	MMPTR(0xe0002014) = value >> 16;
	MMPTR(0xe0002018) = value >> 8;
	MMPTR(0xe000201c) = value;
}
#define CSR_TIMER0_EN_ADDR 0xe0002020
#define CSR_TIMER0_EN_SIZE 1
static inline unsigned char timer0_en_read(void) {
	unsigned char r = MMPTR(0xe0002020);
	return r;
}
static inline void timer0_en_write(unsigned char value) {
	MMPTR(0xe0002020) = value;
}
#define CSR_TIMER0_UPDATE_VALUE_ADDR 0xe0002024
#define CSR_TIMER0_UPDATE_VALUE_SIZE 1
static inline unsigned char timer0_update_value_read(void) {
	unsigned char r = MMPTR(0xe0002024);
	return r;
}
static inline void timer0_update_value_write(unsigned char value) {
	MMPTR(0xe0002024) = value;
}
#define CSR_TIMER0_VALUE_ADDR 0xe0002028
#define CSR_TIMER0_VALUE_SIZE 4
static inline unsigned int timer0_value_read(void) {
	unsigned int r = MMPTR(0xe0002028);
	r <<= 8;
	r |= MMPTR(0xe000202c);
	r <<= 8;
	r |= MMPTR(0xe0002030);
	r <<= 8;
	r |= MMPTR(0xe0002034);
	return r;
}
#define CSR_TIMER0_EV_STATUS_ADDR 0xe0002038
#define CSR_TIMER0_EV_STATUS_SIZE 1
static inline unsigned char timer0_ev_status_read(void) {
	unsigned char r = MMPTR(0xe0002038);
	return r;
}
static inline void timer0_ev_status_write(unsigned char value) {
	MMPTR(0xe0002038) = value;
}
#define CSR_TIMER0_EV_PENDING_ADDR 0xe000203c
#define CSR_TIMER0_EV_PENDING_SIZE 1
static inline unsigned char timer0_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe000203c);
	return r;
}
static inline void timer0_ev_pending_write(unsigned char value) {
	MMPTR(0xe000203c) = value;
}
#define CSR_TIMER0_EV_ENABLE_ADDR 0xe0002040
#define CSR_TIMER0_EV_ENABLE_SIZE 1
static inline unsigned char timer0_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe0002040);
	return r;
}
static inline void timer0_ev_enable_write(unsigned char value) {
	MMPTR(0xe0002040) = value;
}

/* uart */
#define CSR_UART_BASE 0xe0001000
#define CSR_UART_RXTX_ADDR 0xe0001000
#define CSR_UART_RXTX_SIZE 1
static inline unsigned char uart_rxtx_read(void) {
	unsigned char r = MMPTR(0xe0001000);
	return r;
}
static inline void uart_rxtx_write(unsigned char value) {
	MMPTR(0xe0001000) = value;
}
#define CSR_UART_TXFULL_ADDR 0xe0001004
#define CSR_UART_TXFULL_SIZE 1
static inline unsigned char uart_txfull_read(void) {
	unsigned char r = MMPTR(0xe0001004);
	return r;
}
#define CSR_UART_RXEMPTY_ADDR 0xe0001008
#define CSR_UART_RXEMPTY_SIZE 1
static inline unsigned char uart_rxempty_read(void) {
	unsigned char r = MMPTR(0xe0001008);
	return r;
}
#define CSR_UART_EV_STATUS_ADDR 0xe000100c
#define CSR_UART_EV_STATUS_SIZE 1
static inline unsigned char uart_ev_status_read(void) {
	unsigned char r = MMPTR(0xe000100c);
	return r;
}
static inline void uart_ev_status_write(unsigned char value) {
	MMPTR(0xe000100c) = value;
}
#define CSR_UART_EV_PENDING_ADDR 0xe0001010
#define CSR_UART_EV_PENDING_SIZE 1
static inline unsigned char uart_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe0001010);
	return r;
}
static inline void uart_ev_pending_write(unsigned char value) {
	MMPTR(0xe0001010) = value;
}
#define CSR_UART_EV_ENABLE_ADDR 0xe0001014
#define CSR_UART_EV_ENABLE_SIZE 1
static inline unsigned char uart_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe0001014);
	return r;
}
static inline void uart_ev_enable_write(unsigned char value) {
	MMPTR(0xe0001014) = value;
}

/* uart_phy */
#define CSR_UART_PHY_BASE 0xe0000800
#define CSR_UART_PHY_TUNING_WORD_ADDR 0xe0000800
#define CSR_UART_PHY_TUNING_WORD_SIZE 4
static inline unsigned int uart_phy_tuning_word_read(void) {
	unsigned int r = MMPTR(0xe0000800);
	r <<= 8;
	r |= MMPTR(0xe0000804);
	r <<= 8;
	r |= MMPTR(0xe0000808);
	r <<= 8;
	r |= MMPTR(0xe000080c);
	return r;
}
static inline void uart_phy_tuning_word_write(unsigned int value) {
	MMPTR(0xe0000800) = value >> 24;
	MMPTR(0xe0000804) = value >> 16;
	MMPTR(0xe0000808) = value >> 8;
	MMPTR(0xe000080c) = value;
}
#define CSR_IDENTIFIER_MEM_BASE 0xe0001800

/* constants */
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
#define SYSTEM_CLOCK_FREQUENCY 100000000
static inline int system_clock_frequency_read(void) {
	return 100000000;
}
#define READ_LEVELING_BITSLIP 2
static inline int read_leveling_bitslip_read(void) {
	return 2;
}
#define READ_LEVELING_DELAY 8
static inline int read_leveling_delay_read(void) {
	return 8;
}
#define L2_SIZE 8192
static inline int l2_size_read(void) {
	return 8192;
}
#define CONFIG_CLOCK_FREQUENCY 100000000
static inline int config_clock_frequency_read(void) {
	return 100000000;
}
#define CONFIG_CPU_RESET_ADDR 0
static inline int config_cpu_reset_addr_read(void) {
	return 0;
}
#define CONFIG_CPU_TYPE "LM32"
static inline const char * config_cpu_type_read(void) {
	return "LM32";
}
#define CONFIG_CSR_DATA_WIDTH 8
static inline int config_csr_data_width_read(void) {
	return 8;
}

#endif
