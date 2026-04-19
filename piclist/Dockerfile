ARG BUILD_FROM
FROM $BUILD_FROM

# 替换 Alpine 源为阿里云加速
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

# 安装 Node.js 和 npm
RUN apk add --no-cache nodejs npm tzdata

# 设置 npm 淘宝镜像源并安装 piclist
RUN npm config set registry https://registry.npmmirror.com
RUN npm install -g piclist

# 拷贝启动脚本并赋予可执行权限
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# 暴露端口
EXPOSE 36677

# ⚠️ 注意：这里不要写 CMD 或 ENTRYPOINT，让 HA 基础镜像自动接管
