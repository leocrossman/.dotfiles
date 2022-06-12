#!/bin/bash

mkdir ~/xxh && cd ~/xxh
wget https://github.com/xxh/xxh/releases/download/0.8.7/xxh-portable-musl-alpine-Linux-x86_64.tar.gz
tar -xzf xxh-portable-musl-alpine-Linux-x86_64.tar.gz
./xxh
