ARG BASE_CONTAINER=ghcr.io/dongminlee94/base-gpu:1.0
FROM $BASE_CONTAINER

LABEL maintainer="Dongmin Lee <kid33629@gmail.com>"

# Install basic utilities for python3
RUN python3 -m pip --no-cache-dir install --upgrade --default-timeout=30 \
    numpy \
    scipy \
    pandas \
    cloudpickle \
    scikit-image \
    scikit-learn \
    matplotlib \
    seaborn \
    plotly \
    statsmodels \
    dill \
    pyarrow \
    mlflow \
    seldon-core \
    fsspec \
    s3fs \
    boto3 \
    Cython
