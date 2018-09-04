FROM cuihairu/centos:7-gcc

MAINTAINER cuihairu <chuihairu@gmail.com>

ENV LUA_VERSION 5.3.5

RUN yum install -y \
    make \
    tar \
    unzip \
    gcc \
    gcc-devel \
    openssl-devel \
    readline-devel \
    && yum clean all \
    && curl -R -O http://www.lua.org/ftp/lua-${LUA_VERSION}.tar.gz \
    && tar zxf lua-${LUA_VERSION}.gz \
    && cd ./lua-${LUA_VERSION} \
    && make linux test  \
    && make install  \
    && cd .. \
    && rm -rf ./lua-${LUA_VERSION} 

CMD ["lua","-i"]
