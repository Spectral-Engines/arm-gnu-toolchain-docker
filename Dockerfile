FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y wget make

RUN wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2 \
    && tar xjvf gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2 \
    && rm gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2

RUN rm -rf /var/lib/apt/lists/*

ENV PATH=/gcc-arm-none-eabi-9-2019-q4-major/bin/:$PATH
