#!/bin/bash
set -e

echo "========================================="
echo "   🚀 初始化 PicList 服务端插件 (纯净版)... "
echo "========================================="

export HOME=/config
mkdir -p /config/.piclist

echo "启动 PicList 服务器进程，监听 36677 端口..."
# ⚠️ 关键修正：使用 PicList-Core 预留的 picgo-server 命令
picgo-server
