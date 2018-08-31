# docker-library

>存放自己编译的Dockerfile文件,关联自己的命名空间cuihairu。
主要修改了一些源方便国内使用，以及集成一些常用的测试环境。

[issues](https://github.com/cuihairu/docker-libs/issues)

## centos

[docker/centos](https://hub.docker.com/_/centos/)
[cuihairu/centos](https://hub.docker.com/r/cuihairu/centos/)

### tags

- cuihairu/centos:latest, cuihairu/centos:7
[(docker/Dockerfile)](https://github.com/cuihairu/docker-libs/blob/master/centos/7/Dockerfile)
>指向最新版本目前为7,使用了网易源以及epel

- cuihairu/centos:7-gcc
[docker/Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/centos/7/gcc/Dockerfile)
>安装了默认版本的GCC套件

- cuihairu/centos:7-devtoolset
[docker/Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/centos/7/dev/Dockerfile)
  1. devtoolset-3 => GCC4.9 
  2. devtoolset-4 => GCC5.3 
  3. devtoolset-6 => GCC6.2 
  > source /opt/rh/devtoolset-${version}/enable 

### update
- 2018-8-31 增加7-devtoolset 
- 2018-8-31 增加7-gcc标签
- 2018-8-31 从阿里源更新到了网易源。
- 2018-8-26 使用阿里源

---

## ubuntu

[docker/centos](https://hub.docker.com/_/ubuntu/)
[cuihairu/centos](https://hub.docker.com/r/cuihairu/ubuntu/)

### tags

- cuihairu/ubuntu:latest,cuihairu/ubuntu:18.04
[docker/Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/ubuntu/18/Dockerfile)
>指向了ubuntu:18.04 

- cuihairu/ubuntu:18.04-gcc
[docker/Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/ubuntu/18/Dockerfile)
>指向了ubuntu:18.04,安装了默认的gcc7.3 


### update 

- 2018-8-31 修改源为阿里源

---

## python

### tags

### update