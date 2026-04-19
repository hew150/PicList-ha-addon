#!/bin/bash
set -e

echo "========================================="
echo "   🚀 初始化 PicList 服务端插件 (纯净版)... "
echo "========================================="

export HOME=/config
mkdir -p /config/.piclist

echo "启动 PicList 服务器进程，监听 36677 端口..."

# ⚠️ 必须是下面这行，不能是 piclist server
picgo-server
