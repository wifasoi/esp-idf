#
# Component Makefile
#

COMPONENT_ADD_INCLUDEDIRS :=	bluedroid/bta/include			\
				bluedroid/bta/sys/include		\
				bluedroid/btcore/include		\
				bluedroid/device/include		\
				bluedroid/gki/include			\
				bluedroid/hci/include			\
				bluedroid/osi/include			\
				bluedroid/btc/core/include		\
				bluedroid/btc/profile/esp/blufi/include		\
				bluedroid/btc/profile/esp/include		\
				bluedroid/btc/profile/std/gatt/include	\
				bluedroid/btc/profile/std/gap/include	\
				bluedroid/btc/profile/std/sdp/include	\
				bluedroid/btc/profile/std/include	\
				bluedroid/btc/include		\
				bluedroid/stack/btm/include		\
				bluedroid/stack/btu/include		\
				bluedroid/stack/gap/include		\
				bluedroid/stack/gatt/include		\
				bluedroid/stack/hcic/include		\
				bluedroid/stack/l2cap/include		\
				bluedroid/stack/sdp/include		\
				bluedroid/stack/smp/include		\
				bluedroid/stack/include			\
				bluedroid/api/include		\
				bluedroid/include			\
				include	

CFLAGS += -Wno-error=unused-label -Wno-error=return-type -Wno-error=missing-braces -Wno-error=pointer-sign -Wno-error=parentheses -Wno-error=format

LIBS := btdm_app

COMPONENT_ADD_LDFLAGS := -lbt -L $(COMPONENT_PATH)/lib \
                           $(addprefix -l,$(LIBS)) \
                          $(LINKER_SCRIPTS)

COMPONENT_SRCDIRS := 	bluedroid/bta/dm			\
			bluedroid/bta/gatt			\
			bluedroid/bta/hh			\
			bluedroid/bta/sdp			\
			bluedroid/bta/sys			\
			bluedroid/bta				\
			bluedroid/btcore			\
			bluedroid/btif				\
			bluedroid/device			\
			bluedroid/gki				\
			bluedroid/hci				\
			bluedroid/main				\
			bluedroid/osi				\
			bluedroid/btc/core		\
			bluedroid/btc/profile/esp/blufi	\
			bluedroid/btc/profile/std/gap		\
			bluedroid/btc/profile/std/gatt		\
			bluedroid/btc/profile			\
			bluedroid/stack/btm			\
			bluedroid/stack/btu			\
			bluedroid/stack/gap			\
			bluedroid/stack/gatt			\
			bluedroid/stack/hcic			\
			bluedroid/stack/include			\
			bluedroid/stack/l2cap			\
			bluedroid/stack/sdp			\
			bluedroid/stack/smp			\
			bluedroid/stack				\
			bluedroid/api			\
			bluedroid				\
			.

include $(IDF_PATH)/make/component_common.mk

ALL_LIB_FILES := $(patsubst %,$(COMPONENT_PATH)/lib/lib%.a,$(LIBS))
$(COMPONENT_LIBRARY): $(ALL_LIB_FILES)

COMPONENT_SUBMODULES += lib
