FROM nvidia/cuda:11.1.1-base-ubuntu20.04
ARG DEBIAN_FRONTEND=noninteractive

# Change Updated NVIDIA KEY
# Ref : https://forums.developer.nvidia.com/t/notice-cuda-linux-repository-key-rotation/212772
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/7fa2af80.pub

# Install CLI applications
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

# Install Miniconda and Python 3.8
ENV CONDA_AUTO_UPDATE_CONDA=false
ENV PATH="/opt/conda/bin:$PATH"
RUN wget \
    https://repo.anaconda.com/miniconda/Miniconda3-py38_4.11.0-Linux-x86_64.sh \
    && mkdir /root/.config \
    && bash Miniconda3-py38_4.11.0-Linux-x86_64.sh -b -p /opt/conda \
    && rm -f Miniconda3-py38_4.11.0-Linux-x86_64.sh \
    && conda init bash