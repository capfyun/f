FROM snowdreamtech/frps:latest
COPY frps.toml /etc/frp/frps.toml
EXPOSE 7000 80
CMD ["/usr/local/frp/frps", "-c", "/etc/frp/frps.toml"]
   
