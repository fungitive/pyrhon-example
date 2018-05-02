#python3 development environment
FROM       centos:centos7.3.1611
MAINTAINER feiyu <akwangj@126.com>

ENV TZ "Asia/Shanghai"
ENV TERM feiyu

#ENTRYPOINT echo "python3 development environment\n"
RUN yum install -y wget
RUN wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
RUN yum makecache

RUN yum install -y install gcc gcc-c++ zlib-devel make curl wget tar openssl-devel
RUN mkdir /var/run/sshd
# 设置root ssh远程登录密码
RUN echo "root:------" | chpasswd
# 容器需要开放SSH 22端口，以使外部能够访问容器内部

#安装python3开发环境
RUN wget https://www.python.org/ftp/python/3.5.1/Python-3.5.1.tgz
RUN tar -zxvf Python-3.5.1.tgz
WORKDIR Python-3.5.1
RUN mkdir /usr/local/python3.5.1
RUN ./configure --prefix=/usr/local/python3.5.1
RUN make && make install
RUN mv /usr/bin/python /usr/bin/python2.7.5
RUN ln -sf /usr/local/python3.5.1/bin/python3.5 /usr/bin/python

#pip3安装
#RUN wget https://files.pythonhosted.org/packages/ae/e8/2340d46ecadb1692a1e455f13f75e596d4eab3d11a57446f08259dee8f02/pip-10.0.1.tar.gz
#RUN tar -xf pip-10.0.1.tar.gz
#WORKDIR pip-10.0.1
#RUN python setup.py install
#RUN pip3 install django==1.10.8

EXPOSE 22，8000
