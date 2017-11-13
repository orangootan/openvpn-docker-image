FROM alpine:3.6
RUN apk add openvpn=2.4.4-r1 \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/openvpn
ENTRYPOINT ["openvpn"]
CMD ["--config", "/etc/openvpn/server.conf"]
