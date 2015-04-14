include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-ddmesh
PKG_VERSION:=0
PKG_RELEASE:=$(GLUON_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/gluon-ddmesh
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=DDMesh cruft
  DEPENDS:=+wget +bmxd
endef


define Package/gluon-core/description
	Support for Freifunk Dresden
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-ddmesh/install
	$(CP) ./files/* $(1)/
endef


$(eval $(call BuildPackage,gluon-ddmesh))
