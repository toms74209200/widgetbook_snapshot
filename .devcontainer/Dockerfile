FROM debian:bookworm as install-flutter

RUN apt-get update \
    && apt-get install -y \
    curl \
    git \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa

ARG FLUTTER_VERSION="3.22.1"
RUN cd /opt \
    && curl -sSL -O "https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz" \
    && tar xf flutter_linux_${FLUTTER_VERSION}-stable.tar.xz

FROM mcr.microsoft.com/devcontainers/base:bookworm

COPY --from=install-flutter --chmod=775 /opt/flutter /opt/flutter

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    libglu1-mesa 

RUN  apt-get update && apt-get install -y \
    clang \
    cmake \
    ninja-build \
    pkg-config \
    libgtk-3-dev \
    liblzma-dev \
    libstdc++-12-dev \
    libx11-6 \
    libnss3 \
    libxi6 \
    libxkbfile1 \
    pulseaudio \
    && apt-get clean -y

ENV PATH="/opt/flutter/bin:${PATH}"
