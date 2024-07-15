FROM alpine:3.20

WORKDIR /root

RUN wget https://github.com/fatedier/frp/releases/download/v0.56.0/frp_0.56.0_linux_amd64.tar.gz && \
    tar -zxvf frp_0.56.0_linux_amd64.tar.gz && \
    rm frp_0.56.0_linux_amd64.tar.gz && \
    mkdir -p /frps/config && \
    cp frp_0.56.0_linux_amd64/frps.toml /root/frps.toml && \
    mv frp_0.56.0_linux_amd64/frps /frps && \
    mv frp_0.56.0_linux_amd64/frps.toml /frps/config && \
    rm -r frp_0.56.0_linux_amd64

COPY run.sh .
COPY health_check.sh .

ENTRYPOINT ["sh", "/root/run.sh"]

# Define the health check command
HEALTHCHECK --interval=5s --timeout=3s --start-period=3s --retries=3 \
  CMD sh /root/health_check.sh
