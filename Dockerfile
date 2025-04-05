FROM busybox
ENV DELAY_SLEEP_SEC=10
RUN echo "Delaying ${DELAY_SLEEP_SEC} seconds"
CMD ["sleep", $DELAY_SLEEP_SEC]
HEALTHCHECK CMD exit 0
CMD ["sleep", "infinity"]
