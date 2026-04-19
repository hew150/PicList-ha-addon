#!/usr/bin/with-contenv bashio
# Home Assistant Add-on 启动脚本

CONFIG_PATH=/data/options.json
LOG_LEVEL=$(bashio::config 'log_level')

bashio::log.info "正在启动 PicList Server..."
bashio::log.info "当前版本: 1.0.0"

# 执行主程序 (示例)
# piclist-server --port 36677
