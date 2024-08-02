# 🚀 Segment Anything 2 Docker Container

Easily build and launch a Docker container for the **Segment Anything 2** project by Facebook Research! This repository offers a streamlined way to set up and run the project in a consistent environment, eliminating worries about dependencies and configurations.

## 🔧 Prerequisites

Ensure you have Docker installed on your machine before getting started.

## 🚀 Getting Started

You can either build and run the docker container from this repo or use the pre-built docker image from dockerhub. 

### Run from pre-built docker image
```sh
docker run -it --rm --gpus all jeanchristopheruel/sam2-container:latest bash
```

### Build and Run from this repo

To build the Docker container for Segment Anything 2.0, use the following command:
```sh
docker build -t sam2-container .
```

Once the build is complete, you can run the container with: 
```sh
docker run -it --rm --gpus all sam2-container bash
```


