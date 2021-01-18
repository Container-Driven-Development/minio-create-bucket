FROM minio/mc:RELEASE.2021-01-05T05-03-58Z

ENV BUCKET default
ENV POLICY none
ENV PURGE false
ENV VERSIONING false

ENV SCHEME https

ENTRYPOINT ["/initialize.sh"]

COPY initialize.sh /initialize.sh
