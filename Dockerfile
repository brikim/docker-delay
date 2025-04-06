FROM busybox

ENV DELAY_MONITOR_FOLDER=""

COPY healthCheck.sh /
RUN chmod +x /healthCheck.sh

HEALTHCHECK CMD /healthCheck.sh

CMD ["sleep", "infinity"]