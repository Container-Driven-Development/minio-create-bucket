# Minio create bucket

Create minio bucket image and Kubernetes job based on https://github.com/minio/charts/blob/master/minio/templates/_helper_create_bucket.txt


## Why?

When using [minio/operator](https://github.com/minio/operator) automatic bucket creation is not supproted by default see [related issue](https://github.com/minio/operator/issues/368). While waiting for [Container Object Stporage Interface ( COSI )](https://blog.min.io/cosi/) we need to create bucket either by client or using this job.


