#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# 动态追加所需插件到 .config
cat >> .config <<EOF
# WireGuard 及相关依赖 (luci-app 和 接口协议)
CONFIG_PACKAGE_luci-app-wireguard=y
CONFIG_PACKAGE_luci-proto-wireguard=y

# HomeProxy
CONFIG_PACKAGE_luci-app-homeproxy=y

# EasyTier
CONFIG_PACKAGE_luci-app-easytier=y

# Tailscale
CONFIG_PACKAGE_luci-app-tailscale=y
EOF

