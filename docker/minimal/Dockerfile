ARG BASE_CONTAINER=ghcr.io/dongminlee94/base-cpu:1.1
FROM $BASE_CONTAINER

LABEL maintainer="Dongmin Lee <kid33629@gmail.com>"

RUN python -m pip --no-cache-dir install --upgrade --default-timeout=30 \
    numpy \
    scipy \
    pandas \
    cloudpickle \
    scikit-image \
    scikit-learn \
    matplotlib \
    dill \
    pyarrow \
    mlflow \
    seldon-core \
    fsspec \
    s3fs \
    boto3 \
    Cython