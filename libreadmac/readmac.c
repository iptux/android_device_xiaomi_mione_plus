/*
 * readmac.c
 *
 * original by huangqiwu from Xiaomi Inc.
 * https://github.com/mirom/android_device_xiaomi_mione_plus/commit/cf62e83ee96d90f0735c56b85fb8e252574c644d
 *
 */

#define LOG_TAG "libreadmac"
#include "cutils/log.h"

/* temp until they appear in a header file somewhere */
extern void oncrpc_task_start(void);
extern void oncrpc_init(void);
extern int nv_null(void);
static int nv_available;


typedef union {
	unsigned char    oem_item_8[31];
} nv_item_type;

typedef enum {
	NV_READ_F,		/* Read item */
	NV_WRITE_F,		/* Write item */
} nv_func_enum_type;

typedef enum {
	NV_OEM_ITEM_8_I = 6860,
} nv_items_enum_type;

typedef enum {
	NV_DONE_S,
	NV_BUSY_S,
} nv_stat_enum_type;

nv_stat_enum_type nv_cmd_remote (
	nv_func_enum_type cmd,
	nv_items_enum_type item,
	nv_item_type *data_ptr
);


const unsigned char *read_mac()
{
	static nv_item_type my_nv_item;
	static nv_stat_enum_type cmd_result;
	unsigned char *x = NULL;

	oncrpc_init();
	oncrpc_task_start();
	nv_available = nv_null();
	cmd_result = nv_cmd_remote(NV_READ_F, NV_OEM_ITEM_8_I, &my_nv_item);

	x = my_nv_item.oem_item_8;
	ALOGI("WLAN Address: %02x:%02x:%02x:%02x:%02x:%02x\n", x[20],x[16],x[12],x[8],x[4],x[0]);

	return my_nv_item.oem_item_8;
}


/* Method For Bcm4330
 *
 * hardware/libhardware_legacy/wifi/wifi.c
 *
 * extern char *read_mac();
 * static char mac_buf[150];
 *
 * char *x;
 * if (!strcmp(mac_buf,"")) {
 *     x=read_mac();
 * 
 *     // We must use the following or WI-FI cannot be turned on
 *     sprintf(mac_buf,"%s mac=0x%02x,0x%02x,0x%02x,0x%02x,0x%02x,0x%02x", DRIVER_MODULE_ARG, x[20],x[16],x[12],x[8],x[4],x[0]);
 * }
 * ALOGI("Got WLAN MAC Address: %s\n",mac_buf);
 *
 */

/* Official Kernel For Bcm4330
 *
 * if ((mac[0] != 0) || (mac[1] != 0)) {
 *     bcopy((char *)&mac, buf, 6);
 *     return ret;
 * }
 * ret = wifi_get_mac_addr(buf);
 *
 */

