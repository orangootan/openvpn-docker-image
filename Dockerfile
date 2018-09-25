FROM alpine:3.8
RUN apk upgrade --no-cache
RUN apk add openvpn=2.4.6-r3 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/openvpn
ENTRYPOINT ["openvpn"]
CMD ["--config", "/etc/openvpn/server.conf"]
