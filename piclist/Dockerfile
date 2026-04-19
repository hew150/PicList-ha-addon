FROM node:18-alpine

# 替换 Alpine 源为阿里云加速基础组件下载
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

# 安装必要的底层工具
RUN apk add --no-cache bash tzdata

# 设置 npm 淘宝镜像源，解决拉取 piclist 超时问题
RUN npm config set registry https://registry.npmmirror.com
RUN npm install -g piclist

# 拷贝并赋予执行权限
COPY run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 36677

# 明确设置启动命令
CMD [ "/run.sh" ]
