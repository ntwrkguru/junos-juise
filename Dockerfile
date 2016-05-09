FROM alpine

MAINTAINER ntwrkguru@gmail.com

RUN apk update && apk add \
curl-dev \
libxslt \
libxml2-dev \
libedit-dev \
make \
gcc \
g++ \
libc-dev \
bison \
git \
m4 \
pcre-dev \
libbz2 \
autoconf \
automake \
libtool \
\
&& git clone https://github.com/Juniper/libslax.git \
&& cd libslax \
&& sh bin/setup.sh \
&& cd build \
&& ../configure \
&& make \
&& make install

