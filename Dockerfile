FROM ubuntu:18.04

RUN apt-get upgrade
RUN apt-get update && \
  apt-get install -y \
  git \
  vim \
  xz-utils \
  wget \
  curl \
  build-essential \
  libgl1-mesa-dev \
  libgl1-mesa-glx \
  libxi-dev \
  libxrandr-dev \
  libxinerama-dev \
  libxcursor-dev \
  libx11-dev \
  libglu1-mesa-dev \
  freeglut3 \
  freeglut3-dev

RUN git clone https://github.com/smiroshnikov/jenkins_test.git

RUN wget -N https://github.com/Kitware/CMake/releases/download/v3.19.5/cmake-3.19.5-Linux-x86_64.sh \
 -q -O /tmp/cmake-install.sh \
 && chmod u+x /tmp/cmake-install.sh \
 && mkdir /usr/bin/cmake \
 && /tmp/cmake-install.sh --skip-license --prefix=/usr/bin/cmake \
 && rm tmp/cmake-install.sh

ENV PATH="/usr/bin/cmake/bin:${PATH}"

RUN curl -SL https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/clang+llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz \
 | tar -xJC . && \
 mv clang+llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04 clang_10

RUN mkdir /acp3_sil
WORKDIR /acp3_sil
ENTRYPOINT /bin/bash

