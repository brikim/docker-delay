FROM scratch

CMD ["sleep", "10"]
HEALTHCHECK CMD exit 0
CMD ["sleep", "infinity"]
