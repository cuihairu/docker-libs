FROM centos:7

ADD http://mirrors.aliyun.com/repo/Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo

RUN rpm  -Uvh http://mirrors.ustc.edu.cn/epel/epel-release-latest-7.noarch.rpm \
    && yum clean all \
    && echo "nameserver 223.5.5.5" >> /etc/resolv.conf \
    && echo "nameserver 223.6.6.6" >> /etc/resolv.conf


ONBUILD yum makecache 


