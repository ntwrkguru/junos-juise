FROM ubuntu:14.04 
MAINTAINER ntwrkguru@gmail.com 
ENV DEBIAN_FRONTEND noninteractive 

RUN \
apt-get update \
&& apt-get install -y libcurl3-dev libxslt1-dev libxml2-dev libedit2 \
build-essential bison dh-autoreconf git libpcre3-dev libbz2-dev \
\
&& git clone https://github.com/Juniper/libslax.git \
&& cd libslax \
&& sh bin/setup.sh \
&& cd build && ../configure --libdir=/usr/lib/x86_64-linux-gnu \
&& make && make install \
\
&& cd ../.. \
&& git clone https://github.com/Juniper/juise.git \
&& cd juise \
&& sh bin/setup.sh && cd build \
&& ../configure --libdir=/usr/lib/x86_64-linux-gnu \
&& make && make install \
\
&& cd ../.. && git clone https://github.com/Juniper/lighttpd-for-juise.git \
&& cd lighttpd-for-juise \
&& sh bin/setup.sh \
&& cd build \
&& ../configure --libdir=/usr/lib/x86_64-linux-gnu \
&& make \
&& make install \
\
&& apt-get clean \
&& apt-get purge
