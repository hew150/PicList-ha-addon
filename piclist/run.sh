#!/usr/bin/with-contenv bashio

bashio::log.info "========================================="
bashio::log.info "   🚀 初始化 PicList 服务端插件...       "
bashio::log.info "========================================="

# 强制将 HOME 环境变量指向 /config，确保配置持久化
export HOME=/config

# 确保配置存放的文件夹存在
mkdir -p /config/.piclist

bashio::log.info "启动 PicList 服务器进程，监听 36677 端口..."

# 启动 PicList 服务
piclist server
