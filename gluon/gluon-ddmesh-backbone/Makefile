include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-ddmesh-backbone
PKG_VERSION:=0
PKG_RELEASE:=$(GLUON_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/gluon-ddmesh-backbone
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=DDMesh backbone cruft
  DEPENDS:=+vtun
endef


define Package/gluon-ddmesh-backbone/description
	Support for Freifunk Dresden Backbone
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-ddmesh-backbone/install
	$(CP) ./files/* $(1)/
endef


$(eval $(call BuildPackage,gluon-ddmesh-backbone))
