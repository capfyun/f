FROM alpine:latest
RUN apk --no-cache add wget
RUN wget https://github.com/fatedier/frp/releases/download/v0.63.0/frp_0.63.0_linux_arm64.tar.gz
RUN tar -zxvf frp_0.63.0_linux_arm64.tar.gz
COPY frps.toml /frp_0.63.0_linux_arm64/frps.toml
CMD ["frp_0.63.0_linux_arm64/frps", "-c", "frp_0.63.0_linux_arm64/frps.toml"]
EXPOSE 7000 80
   
