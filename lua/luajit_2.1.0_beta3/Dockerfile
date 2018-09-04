FROM cuihairu/centos:7-gcc

MAINTAINER cuihairu <chuihairu@gmail.com>

ENV LUA_VERSION 2.1.0-beta3

ADD LuaJIT-${LUA_VERSION}.tar.gz /data/

RUN yum install -y \
    make \
    gcc \
    gcc-devel \
    openssl-devel \
    readline-devel \
    && yum clean all \
    && cd /data/LuaJIT-${LUA_VERSION} \
    && make \
    && make install  \
    && cd /data/ \
    && rm -rf /data/LuaJIT-${LUA_VERSION} 

CMD ["lua","-i"]
