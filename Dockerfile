FROM alpine:3.14.2
RUN apk upgrade --no-cache
RUN apk add openvpn=2.5.3-r1 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/openvpn
ENTRYPOINT ["openvpn"]
CMD ["--config", "/etc/openvpn/server.conf"]
