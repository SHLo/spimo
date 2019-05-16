FROM resin/raspberrypi3-debian:stretch

# Install dependencies and clean-up apt sources.
RUN apt-get update && apt-get upgrade && apt-get install -y \
    build-essential \
    cmake \
    gfortran \
    libatlas-base-dev \
    libavcodec-dev \
    libavformat-dev \
    libavresample-dev \
    libboost-all-dev \
    libcanberra-gtk* \
    libgtk2.0-dev \
    libgtk-3-dev \
    libjasper-dev \
    libjpeg-dev \
    libpng-dev \
    libraspberrypi-dev \
    libraspberrypi-bin \
    libswscale-dev \
    libtiff5-dev \
    libv4l-dev \
    libxvidcore-dev \
    libx264-dev \
    pkg-config \
    python \
    python2.7-dev \
    python3-dev \
    python3-pip \
    unzip \
    wget \
    libffi-dev \
    libssl-dev  \
  && rm -rf /var/lib/apt/lists/*
  
RUN pip3 install --upgrade setuptools
RUN pip3 install azure-mgmt-eventhub
