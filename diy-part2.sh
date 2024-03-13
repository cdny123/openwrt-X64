#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# 修改默认IP地址
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
# 修改默认内核
#sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.1/g' target/linux/x86/Makefile
# 修改默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
# 修改主机名称
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
#酷猫主题高级设置
git clone https://github.com/sirpdboy/luci-app-advancedplus/releases package/luci-app-advancedplus
# 一键自动格式化分区、扩容、自动挂载插件
git clone https://github.com/sirpdboy/luci-app-partexp.git package/luci-app-partexp
# ChatGPT
git clone https://github.com/sirpdboy/chatgpt-web.git package/luci-app-chatgpt
# 醋猫主题插件
git clone https://github.com/sirpdboy/luci-theme-kucat.git package/luci-theme-kucat
