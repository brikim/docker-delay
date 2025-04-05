FROM busybox

ENV STARTUP_DELAY=5s

HEALTHCHECK --timeout=30s --start-period=$STARTUP_DELAY --retries=3 \
  CMD curl -f http://localhost/ || exit 1

CMD ["sleep", "infinity"]