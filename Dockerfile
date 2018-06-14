FROM alpine:3.7
RUN apk add --update shadow tar tinc-pre strongswan openvpn && \
	rm -rf /var/cache/apk/*
COPY --from=ochinchina/supervisord:latest /usr/local/bin/supervisord /usr/local/bin/supervisord
