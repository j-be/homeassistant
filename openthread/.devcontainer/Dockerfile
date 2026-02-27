FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
  git \
  wget \
  flex \
  bison \
  gperf \
  ccache \
  libffi-dev \
  libssl-dev \
  dfu-util \
  python3 \
  python3-pip \
  python3-venv \
  libusb-1.0-0 \
  cmake \
  unzip

USER ubuntu

RUN cd && \
  git clone -b v6.0-beta2 --recursive --depth=1 --shallow-submodules https://github.com/espressif/esp-idf.git && \
  cd ~/esp-idf && \
  ./install.sh esp32-c6
