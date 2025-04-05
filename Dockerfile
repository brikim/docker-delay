FROM busybox

ENV STARTUP_DELAY=0

COPY healthCheck.sh /
RUN chmod +x /healthCheck.sh
HEALTHCHECK CMD /healthCheck.sh
CMD ["sleep", "infinity"]