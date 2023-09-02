include $(TOPDIR)/rules.mk

PKG_NAME:=Quectel_QConnectManager
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/Quectel_QConnectManager
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Quectel QConnectManager
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/Quectel_QConnectManager/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/Quectel-QConnectManager $(1)/usr/bin
	#$(INSTALL_BIN) $(PKG_BUILD_DIR)/quectel-qmi-proxy $(1)/usr/bin
	#$(INSTALL_BIN) $(PKG_BUILD_DIR)/quectel-mbim-proxy $(1)/usr/bin
	#$(INSTALL_BIN) $(PKG_BUILD_DIR)/quectel-qrtr-proxy $(1)/usr/bin
	#$(INSTALL_BIN) $(PKG_BUILD_DIR)/quectel-atc-proxy $(1)/usr/bin
endef

$(eval $(call BuildPackage,Quectel_QConnectManager))
