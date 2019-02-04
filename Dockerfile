FROM ubuntu:bionic

RUN apt-get update && apt-get install -y vim sudo && \
    adduser --disabled-password --gecos '' sobloo && \
    adduser sobloo sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER sobloo
