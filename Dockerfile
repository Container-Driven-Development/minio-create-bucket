FROM minio/mc:RELEASE.2020-11-25T23-04-07Z

ENV MC_CONFIG_DIR /etc/minio/mc/
ENV BUCKET default
ENV SVC_NAME minio
ENV NAMESPACE minio

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
