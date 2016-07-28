include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-wifi-unhang
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/gluon-wifi-unhang
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=wifi-unhang
  DEPENDS:=+gluon-core
endef

define Build/Prepare
        mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-wifi-unhang/install
        $(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,gluon-wifi-unhang))

