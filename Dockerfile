ARG TAG

FROM minio/minio:${TAG}

CMD ["server", "/data", "--console-address", ":9001"]
