FROM ubuntu:14.04
MAINTAINER ssteiner@juniper.net
ENV DEBIAN_FRONTEND noninteractive

WORKDIR /build

ADD https://github.com/Juniper/juise/releases/download/0.7.0/juise_0.7.0-2.amd64.deb
ADD https://github.com/Juniper/lighttpd-for-juise/releases/download/lighttpd-for-juise-1.4.33-JNPR-1/lighttpd-for-juise_1.4.33-JNPR-1_amd64.deb
ADD

RUN \
apt-get update \
&& apt-get install -y libcurl3-dev libxslt1-dev libxml2-dev libedit2 \
build-essential bison dh-autoreconf git libpcre3-dev libbz2-dev libssh2-1 \
\
&& git clone https://github.com/Juniper/libslax.git \
&& cd libslax \
&& sh bin/setup.sh \
&& cd build && ../configure --libdir=/usr/lib/x86_64-linux-gnu \
&& make && make install \
\
&& cd ../.. && dpkg-i lighttpd-for-juise_1.4.33-JNPR-1_amd64.deb \
\
&& dpkg -i juise_0.7.0-2.amd64.deb
\
&& apt-get clean \
&& apt-get purge \
&& rm -rf /build

EXPOSE 3000
