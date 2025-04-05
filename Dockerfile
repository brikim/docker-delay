FROM busybox

ENV STARTUP_DELAY=0

COPY healthCheck.sh /
RUN chmod +x /healthCheck.sh
ENTRYPOINT ["/healthCheck.sh"]
HEALTHCHECK CMD exit 0
CMD ["sleep", "infinity"]