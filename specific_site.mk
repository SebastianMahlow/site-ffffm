#####################################################################################################################
# Hier werden targetspezifisch und devicespezifisch weitere Packages eingebunden.
#####################################################################################################################


# basic support for USB stack
USB_PACKAGES_BASIC := \
	kmod-usb-core \
	kmod-usb2 \
	kmod-usb3

# storage support for USB devices
USB_PACKAGES_STORAGE := \
	block-mount \
	blkid \
	kmod-fs-ext4 \
	kmod-fs-vfat \
	kmod-usb-storage \
	kmod-usb-storage-extras \
	kmod-nls-cp1250 \
	kmod-nls-cp1251 \
	kmod-nls-cp437 \
	kmod-nls-cp775 \
	kmod-nls-cp850 \
	kmod-nls-cp852 \
	kmod-nls-cp866 \
	kmod-nls-iso8859-1 \
	kmod-nls-iso8859-13 \
	kmod-nls-iso8859-15 \
	kmod-nls-iso8859-2 \
	kmod-nls-koi8r \
	kmod-nls-utf8 \
	swap-utils

# network support for USB devices
USB_PACKAGES_NET := \
	kmod-ath9k-htc  \
	kmod-ath9k-common \
	kmod-ath \
	kmod-brcmfmac \
	kmod-carl9170 \
	kmod-mii \
	kmod-nls-base \
	kmod-rt73-usb \
	kmod-rtl8192cu \
	kmod-rtl8187 \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-asix-ax88179 \
	kmod-usb-net-cdc-eem \
	kmod-usb-net-cdc-ether \
	kmod-usb-net-cdc-mbim \
	kmod-usb-net-cdc-ncm \
	kmod-usb-net-cdc-subset \
	kmod-usb-net-dm9601-ether \
	kmod-usb-net-hso \
	kmod-usb-net-huawei-cdc-ncm \
	kmod-usb-net-ipheth \
	kmod-usb-net-kalmia \
	kmod-usb-net-kaweth \
	kmod-usb-net-mcs7830 \
	kmod-usb-net-pegasus \
	kmod-usb-net-qmi-wwan \
	kmod-usb-net-rndis \
	kmod-usb-net-rtl8152 \
	kmod-usb-net-sierrawireless \
	kmod-usb-net-smsc95xx

# misc packages
MISC_PACKAGES := \
	kmod-usb-acm \
	kmod-usb-serial-simple

# USB Keyboard packages
USB_KEYBOARD_PACKAGES := \
	kmod-usb-hid \
	kmod-hid-generic

# main combination 
MAIN_COMBO_PACKAGES := \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(MISC_PACKAGES)



#####################################################################################################################
# GLUON-Target specific settings:
#####################################################################################################################

# x86-generic
ifeq ($(GLUON_TARGET),x86-generic)
# support the usb stack on x86 devices
# and add a few common USB NICs
GLUON_SITE_PACKAGES += \
	$(MAIN_COMBO_PACKAGES) \
	$(USB_KEYBOARD_PACKAGES)
endif

# x86-64
ifeq ($(GLUON_TARGET),x86-64)
# support the usb stack on x86-64 devices
# and add a few common USB NICs
GLUON_SITE_PACKAGES += \
	$(MAIN_COMBO_PACKAGES) \
	$(USB_KEYBOARD_PACKAGES)
endif

# Raspberry Pi A/B/B+
ifeq ($(GLUON_TARGET),brcm2708-bcm2708)
GLUON_SITE_PACKAGES += \
	$(MAIN_COMBO_PACKAGES) \
	$(USB_KEYBOARD_PACKAGES)
endif

# Raspberry Pi 2
ifeq ($(GLUON_TARGET),brcm2708-bcm2709)
GLUON_SITE_PACKAGES += \
	$(MAIN_COMBO_PACKAGES) \
	$(USB_KEYBOARD_PACKAGES)
endif

# Banana Pi
ifeq ($(GLUON_TARGET),sunxi)
GLUON_SITE_PACKAGES += \
	$(MAIN_COMBO_PACKAGES) \
	$(USB_KEYBOARD_PACKAGES)
endif



#####################################################################################################################
# GLUON-Device specific settings:
#####################################################################################################################

# ar71xx-generic
GLUON_ARCHERC7_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_DIR505A1_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_GLINET_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_TLWR842_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_TLWR1043_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_TLWR2543_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_TLWDR4300_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_WNDR3700_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_WRT160NL_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_WZRHPAG300H_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_WZRHPG450H_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)

# mpc85xx-generic
GLUON_TLWDR4900_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)

