FROM busybox
ENV DELAY_SLEEP_SEC=10
CMD ["sleep", $DELAY_SLEEP_SEC]
HEALTHCHECK CMD exit 0
CMD ["sleep", "infinity"]
