FROM centos:7

LABEL author="cuihairu <chuihairu@gmail.com>"

RUN yum update -y \
    && yum install -y java-1.7.0-openjdk-* \
    && yum install unzip \

ADD https://www-eu.apache.org/dist//ant/binaries/apache-ant-1.9.14-bin.zip /usr/local/

RUN unzip apache-ant-1.9.14-bin.zip -d /usr/local \
    && cd /usr/local/ \
    && mv apache-ant-1.9.14 ant \
    && echo "export ANT_HOME=/usr/local/ant" \
    && echo "export PATH=$PATH:$ANT_HOME/bin" \