FROM centos:7

ADD http://mirrors.aliyun.com/repo/Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo

ADD http://mirrors.aliyun.com/repo/epel-7.repo /etc/yum.repos.d/epel-7.repo

RUN yum clean all 

ONBUILD yum makecache 


