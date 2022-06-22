FROM amd64/ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive

LABEL maintainer="Dongmin Lee <kid33629@gmail.com>"

# Install some basic utilities
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    sudo \
    git \
    bzip2 \
    libx11-6 \
    libglib2.0-0 \
    vim \
    make \
    wget \
    lshw \
    && rm -rf /var/lib/apt/lists/*

# Create a working directory
WORKDIR /root/workspace

# Install Miniconda and Python 3.8
ENV CONDA_AUTO_UPDATE_CONDA=false
ENV PATH="/opt/conda/bin:$PATH"
RUN wget \
    https://repo.anaconda.com/miniconda/Miniconda3-py38_4.11.0-Linux-x86_64.sh \
    && mkdir /root/.config \
    && bash Miniconda3-py38_4.11.0-Linux-x86_64.sh -b -p /opt/conda \
    && rm -f Miniconda3-py38_4.11.0-Linux-x86_64.sh \
    && conda init bash
