FROM alpine:3.13.3
RUN apk upgrade --no-cache
RUN apk add openvpn=2.5.1-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/openvpn
ENTRYPOINT ["openvpn"]
CMD ["--config", "/etc/openvpn/server.conf"]
