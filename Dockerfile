FROM alpine:3.12.0
RUN apk upgrade --no-cache
RUN apk add openvpn=2.4.9-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/openvpn
ENTRYPOINT ["openvpn"]
CMD ["--config", "/etc/openvpn/server.conf"]
