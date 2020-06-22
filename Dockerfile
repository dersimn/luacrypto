FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    openssl \
    lua5.1 liblua5.1-dev \
    git diffutils autoconf libssl1.0-dev make \
    && rm -rf /var/lib/apt/lists/*

COPY . /opt/luacrypto
WORKDIR /opt/luacrypto

RUN autoreconf -i \
    && ./configure \
    && make \
    && mkdir -p /usr/local/lib/lua/5.1 \
    && cp src/.libs/crypto.so /usr/local/lib/lua/5.1/crypto.so
