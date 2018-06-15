FROM alpine:3.7
# only required for crouton
RUN apk add --update shadow tar && \
	rm -rf /var/cache/apk/*

## next my stuff to run set of tunnels
COPY --from=ochinchina/supervisord:latest /usr/local/bin/supervisord /usr/local/bin/supervisord
RUN apk add --update tinc-pre strongswan openvpn && \
	rm -rf /var/cache/apk/*
