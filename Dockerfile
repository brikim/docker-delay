FROM busybox

ENV STARTUP_DELAY=0

COPY healthCheck.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/healthCheck.sh
HEALTHCHECK CMD /usr/local/bin/healthCheck.sh
CMD ["sleep", "infinity"]
