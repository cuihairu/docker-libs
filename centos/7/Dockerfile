FROM centos:7

ADD http://mirrors.aliyun.com/repo/Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo

ADD http://mirrors.aliyun.com/repo/epel-7.repo /etc/yum.repos.d/epel-7.repo

RUN yum clean all \
    && echo "nameserver 223.5.5.5" >> /etc/resolv.conf \
    && echo "nameserver 223.6.6.6" >> /etc/resolv.conf


ONBUILD yum makecache 


