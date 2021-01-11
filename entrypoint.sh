#!/bin/sh

set -e

MC="/usr/bin/mc --insecure --config-dir ${MC_CONFIG_DIR}"
MINIO_HOSTNAME="${SVC_NAME}.${NAMESPACE}.svc.cluster.local"

checkBucket() {
  CMD=$(${MC} ls ${MINIO_HOSTNAME}/$BUCKET > /dev/null 2>&1)
  return $?
}

if ! checkBucket; then
  echo "Creating bucket '$BUCKET'"
  ${MC} mb ${MINIO_HOSTNAME}/${BUCKET}
else
  echo "Bucket '$BUCKET' already exists."
fi



