GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-announced \
	gluon-autoupdater \
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
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-luci-switchconfig \
	gluon-ffmautokey \
	gluon-radvd \
	gluon-status-page \
	collectd5 \
	collectd-mod-ping \
	collectd-mod-interface \
	collectd-mod-load \
	collectd-mod-cpu \
	collectd-mod-memory \
	collectd-mod-network \
	collectd-mod-iwinfo \
	iwinfo \
	iptables \
	gluon-ffmcollectdconfig \
	haveged


DEFAULT_GLUON_RELEASE := 0.4.2+0-exp$(shell date '+%Y%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
