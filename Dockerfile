FROM inovex/mqtt-stresser as mqtt-builder
FROM loadimpact/k6 as k6-builder

FROM busybox

COPY --from=mqtt-builder /bin/mqtt-stresser /bin/mqtt-stresser
COPY --from=mqtt-builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

COPY --from=k6-builder /usr/bin/k6 /bin/k6

ENTRYPOINT ["/bin/ash"]