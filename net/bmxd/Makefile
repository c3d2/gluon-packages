#    Copyright (C) 2011 Fundacio Privada per a la Xarxa Oberta, Lliure i Neutral guifi.net
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along
#    with this program; if not, write to the Free Software Foundation, Inc.,
#    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
#    The full GNU General Public License is included in this distribution in
#    the file called "COPYING".
#
# Contibutors:
#	Axel Neumann, Simó Albert i Beltran, Pau Escrich
#


include $(TOPDIR)/rules.mk

PKG_NAME:=bmxd

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=git://github.com/axn/bmxd.git

PKG_REV:=9c1d12b554dccd2efde249f5e44a7d4de59ce1a8
PKG_VERSION:=r20110218
PKG_RELEASE:=1

PKG_SOURCE_VERSION:=$(PKG_REV)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_SOURCE_SUBDIR).tar.gz
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_SOURCE_SUBDIR)

include $(INCLUDE_DIR)/package.mk


TARGET_CFLAGS += $(FPIC)

MAKE_ARGS += \
	EXTRA_CFLAGS="$(TARGET_CFLAGS) -DNODEPRECATED -DNOVIS -DNODEBUGALL" \
	CC="$(TARGET_CC)" \
	all

define Package/bmxd
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Routing and Redirection
  TITLE:=bmxd
  DEPENDS:=+libpthread +kmod-tun
endef

define Package/bmxd/description
Used by ddmesh.de
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) $(MAKE_ARGS)
endef

define Package/bmxd/install
	$(INSTALL_DIR) $(1)/usr/sbin $(1)/etc/config $(1)/etc/init.d
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/bmxd $(1)/usr/sbin/
	$(INSTALL_BIN) ./files/etc/init.d/bmxd $(1)/etc/init.d
	$(INSTALL_DATA) ./files/etc/config/bmxd $(1)/etc/config
endef

$(eval $(call BuildPackage,bmxd))
