FROM busybox

ENV STARTUP_DELAY=5s

HEALTHCHECK --interval=1m --timeout=30s --start-period=$STARTUP_DELAY --retries=3 \
  CMD exit 0

CMD ["sleep", "infinity"]