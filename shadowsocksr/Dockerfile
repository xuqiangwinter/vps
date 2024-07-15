FROM alpine:3.6

WORKDIR /root

COPY shadowsocksr-3.2.2 /root/shadowsocksr-3.2.2
COPY run.sh /root
COPY health_check.sh /root

RUN apk --no-cache add python libsodium && \
    mkdir -p /etc/shadowsocksr

ENTRYPOINT ["sh", "/root/run.sh"]

# Define the health check command
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD sh /root/health_check.sh
