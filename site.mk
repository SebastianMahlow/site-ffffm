GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-announced \
	gluon-autoupdater \
	gluon-setup-mode \
	gluon-config-mode-core \
	gluon-config-mode-autoupdater \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-private-wifi \
	gluon-luci-mesh-vpn-fastd \
	gluon-luci-wifi-config \
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-status-page \
	iwinfo \
	iptables \
	gluon-luci-switchconfig \
	ffffm-ebtables-net-rules \
	haveged 
#	gluon-ffmcollectdconfig \
#	collectd5 \
#	collectd-mod-ping \
#	collectd-mod-interface \
#	collectd-mod-cpu \
#	collectd-mod-network \
#	collectd-mod-iwinfo \
#	collectd-mod-load \
#	collectd-mod-memory \
#	gluon-ffmautokey \

DEFAULT_GLUON_RELEASE := 2015.1.2-$(shell date '+%Y%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
# GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= en de
