# Copyright (C) 2023-2024 CVAT.ai Corporation
#
# SPDX-License-Identifier: MIT

# Base image
FROM pytorch/pytorch:2.4.0-cuda12.4-cudnn9-devel

# Set NVIDIA container runtime settings
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility

# Disable interactive frontend
ENV DEBIAN_FRONTEND=noninteractive

# Set CUDA architectures
ENV TORCH_CUDA_ARCH_LIST="6.0 6.1 7.0 7.5 8.0 8.6+PTX"

# Set the working directory
WORKDIR /opt/nuclio/sam2

# Install basic dependencies
RUN apt-get update && \
    apt-get -y install build-essential curl git

# Install SAM2 code
RUN pip install git+https://github.com/jeanchristopheruel/segment-anything-2.git@main

# Download SAM2 weights
RUN curl -O https://dl.fbaipublicfiles.com/segment_anything_2/072824/sam2_hiera_large.pt

# Define the entry point
CMD ["bash"]
