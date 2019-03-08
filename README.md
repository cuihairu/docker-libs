# Docker-Library

>存放自己编译的Dockerfile文件,关联自己的命名空间cuihairu。
主要修改了一些源方便国内使用，以及集成一些常用的测试环境。

[issues](https://github.com/cuihairu/docker-libs/issues)

---

## Centos

[docker/centos](https://hub.docker.com/_/centos/)
[cuihairu/centos](https://hub.docker.com/r/cuihairu/centos/)

### Tags

- cuihairu/centos:latest, cuihairu/centos:7
[Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/centos/7/Dockerfile)
>指向最新版本目前为7,使用了网易源以及epel

- cuihairu/centos:7-gcc
[Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/centos/7/gcc/Dockerfile)
>安装了默认版本的GCC套件gcc4.8.5
提供了Volume:/data
默认目录/data

- cuihairu/centos:7-devtoolset
[Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/centos/7/dev/Dockerfile)
1. devtoolset-3 => GCC4.9 
2. devtoolset-4 => GCC5.3 
3. devtoolset-6 => GCC6.2 

提供了Volume:/data
默认目录:/data

切换版本:

``` bash
source /opt/rh/devtoolset-version/enable 
```
### Update
- 2018-8-31 增加7-devtoolset 
- 2018-8-31 增加7-gcc标签
- 2018-8-31 从阿里源更新到了网易源。
- 2018-8-26 使用阿里源

---

## Ubuntu

[docker/ubuntu](https://hub.docker.com/_/ubuntu/)
[cuihairu/ubuntu](https://hub.docker.com/r/cuihairu/ubuntu/)

### Tags

- cuihairu/ubuntu:latest,cuihairu/ubuntu:18.04
[Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/ubuntu/18/Dockerfile)
>指向了ubuntu:18.04 
默认目录:/data

- cuihairu/ubuntu:18.04-gcc
[Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/ubuntu/18/Dockerfile)
>指向了ubuntu:18.04,安装了默认的gcc7.3
提供了Volume:/data 
默认目录:/data


### Update 

- 2018-8-31 修改源为阿里源

---

## Cling

[cuihairu/cling](https://hub.docker.com/r/cuihairu/cling/)

### Tags

- cuihairu/cling:latest
[Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/cling/Dockerfile)
>基于centos7
默认目录:/data


## Python

[docker/python](https://hub.docker.com/_/python/)
[cuihairu/python](https://hub.docker.com/r/cuihairu/ubuntu/)

### Tags
- cuihairu/python:latest , cuihairu/python:3.7-centos7 
[Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/python/3.7/centos7/Dockerfile)

### Update
- 2019-3-8  更新python版本为python3.7.2
- 2018-8-31 基于centos7系统安装python3.7.0
  
---
## lua
[cuihairu/lua](https://hub.docker.com/r/cuihairu/lua/)

### tags
- cuihairu/lua:5.3.5-centos ,cuihairu/lua:latest
[Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/lua/5.3.5/Dockerfile)

- cuihairu/lua:luajit-2.1.0.beta3 
[Dockerfile](https://github.com/cuihairu/docker-libs/blob/master/lua/luajit_2.1.0_beta3/Dockerfile)

### update
- 2018-9-4 增加luajit_2.1.0_beta3 lua版本5.1.4
- 2018-9-4 基于centos7安装lua|修改从本地安装lua不从网络下载不稳定。

---