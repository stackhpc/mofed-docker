#####
## This Dockerfile rebuilds the Mellanox OFED drivers with a new kernel
#####

ARG MLNX_OFED_VERSION
ARG MLNX_OFED_DISTRO
ARG MLNX_OFED_ARCH
ARG MLNX_OFED_REPO="mellanox/mofed-${MLNX_OFED_VERSION}"
ARG MLNX_OFED_TAG="${MLNX_OFED_DISTRO}-${MLNX_OFED_ARCH}"
ARG MLNX_OFED_BASE="${MLNX_OFED_REPO}:${MLNX_OFED_TAG}"
FROM ${MLNX_OFED_BASE}

ARG MLNX_OFED_KERNEL_VERSION
RUN apt-get -yq update && \
    apt-get -yq install linux-headers-${MLNX_OFED_KERNEL_VERSION} linux-modules-${MLNX_OFED_KERNEL_VERSION} && \
    dkms autoinstall && \
    apt-get clean autoclean && \
    rm -rf /var/lib/apt/lists/*
