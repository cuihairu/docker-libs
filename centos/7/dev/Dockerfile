FROM centos:7

#ADD http://mirrors.163.com/.help/CentOS7-Base-163.repo /etc/yum.repos.d/CentOS-Base.repo
ADD http://mirrors.aliyun.com/repo/Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo

RUN yum update -y \
    && yum install -y epel-release \
    && yum install -y centos-release-scl-rh \
    && yum install -y devtoolset-3-gcc devtoolset-3-gcc-c++ \
    && yum install -y devtoolset-3-gcc devtoolset-4-gcc-c++ \
    && yum install -y devtoolset-3-gcc devtoolset-6-gcc-c++ \
    && yum clean all \
    && rm -rf /var/cache/yum/* \
    && echo "nameserver 223.5.5.5" >> /etc/resolv.conf \
    && echo "nameserver 223.6.6.6" >> /etc/resolv.conf \
    && echo "nameserver 114.114.114.114" >> /etc/resolv.conf

ONBUILD RUN yum makecache 