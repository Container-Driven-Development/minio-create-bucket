FROM minio/mc:RELEASE.2021-01-05T05-03-58Z

ENV BUCKET default

ENTRYPOINT ["/initialize.sh"]

COPY initialize.sh /initialize.sh
