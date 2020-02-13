FROM alpine:3.11.3
RUN apk upgrade --no-cache
RUN apk add openvpn=2.4.8-r2 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/openvpn
ENTRYPOINT ["openvpn"]
CMD ["--config", "/etc/openvpn/server.conf"]
