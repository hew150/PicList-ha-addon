ARG BUILD_FROM
FROM $BUILD_FROM

# 安装依赖
RUN apk add --no-cache \
    nodejs \
    npm

# 复制脚本
COPY run.sh /
RUN chmod a+x /run.sh

WORKDIR /data
CMD [ "/run.sh" ]
