FROM cuihairu/centos:7-gcc

LABEL author="cuihairu <chuihairu@gmail.com>"

ENV CLING_DIR="/opt/cling" \
    PATH="$PATH:/opt/cling/bin"

ADD ./cling_build.sh /root/cling_build.sh 

RUN yum install -y \
    make3 \
    gcc \
    gcc-devel \
    boost \
    boost-devel \
    log4cxx \
    log4cxx-devel \
    python3 \
    git \
    wegt 

RUN cd /root && source ./cling_build.sh 

ENTRYPOINT "/opt/cling/bin/cling"