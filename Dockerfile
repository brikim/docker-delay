FROM busybox

ENV DELAY_SLEEP_SEC=10

COPY healthCheck.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/healthCheck.sh
HEALTHCHECK CMD /usr/local/bin/healthCheck.sh
CMD ["sleep", "infinity"]
