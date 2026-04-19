# 使用 HA 官方注入的底层镜像，自动适配你的硬件架构 (树莓派/x86等)
ARG BUILD_FROM
FROM $BUILD_FROM

# 替换 Alpine 源为阿里云，加速基础包下载
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

# 安装 Node.js 和 npm
RUN apk add --no-cache nodejs npm bash tzdata

# 设置 npm 淘宝镜像源，极速下载 PicList
RUN npm config set registry https://registry.npmmirror.com
RUN npm install -g piclist

# 拷贝启动脚本
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# 暴露端口
EXPOSE 36677

# 启动命令
CMD [ "/run.sh" ]
