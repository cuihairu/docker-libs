FROM centos:7

LABEL author="cuihairu <chuihairu@gmail.com>"

ADD http://mirrors.aliyun.com/repo/Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo

RUN yum update -y \
    && yum install -y java-1.7.0-openjdk-* unzip zip

ADD https://www-eu.apache.org/dist//ant/binaries/apache-ant-1.9.14-bin.zip /usr/local/


ENV JAVA_HOME /etc/alternatives/java_sdk_1.7.0
ENV CLASSPATH $CLASSPATH:${JAVA_HOME}/lib/dt.jar:${JAVA_HOME}/lib/tools.jar
ENV PATH $PATH:$JAVA_HOME/bin:$ANT_HOME/bin
