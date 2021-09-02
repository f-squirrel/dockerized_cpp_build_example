#!/bin/bash

set -ex

APT_GET_FLAGS="-y --no-install-recommends"
# Ideally certificates have to be updated
WGET_FLAGS="--no-check-certificate --quiet"

# Install tools
apt-get update && apt-get ${APT_GET_FLAGS} install \
    build-essential \
    clang \
    cmake \
    gdb \
    wget

# Let us add some heavy dependency
cd ${HOME}
wget ${WGET_FLAGS} \
    https://boostorg.jfrog.io/artifactory/main/release/1.77.0/source/boost_1_77_0.tar.gz && \
    tar xzf ./boost_1_77_0.tar.gz && \
    cd ./boost_1_77_0 && \
    ./bootstrap.sh && \
    ./b2 install && \
    cd .. && \
    rm -rf ./boost_1_77_0
