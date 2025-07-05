FROM snowdreamtech/frps:latest
COPY frps.toml /etc/frp/frps.toml
EXPOSE 7000 80
CMD ["./frps", "-c", "/etc/frp/frps.toml"]
   
