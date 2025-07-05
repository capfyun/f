FROM alpine:latest

# 安装 wget 和 frp
RUN apk add --no-cache wget && \
    wget https://github.com/fatedier/frp/releases/download/v0.58.0/frp_0.58.0_linux_amd64.tar.gz && \
    tar -zxvf frp_0.58.0_linux_amd64.tar.gz && \
    mv frp_0.58.0_linux_amd64 /frp && \
    chmod +x /frp/frps && \
    rm -rf frp_0.58.0_linux_amd64.tar.gz

# 复制配置文件
COPY frps.ini /frp/frps.ini

# 暴露管理端口和绑定端口
EXPOSE 80

# 启动命令
CMD ["/frp/frps", "-c", "/frp/frps.ini"]
