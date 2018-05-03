#python3 development environment
FROM       centos:centos7.3.1611
MAINTAINER feiyu <akwangj@126.com>

ENV TZ "Asia/Shanghai"
ENV TERM feiyu

#ENTRYPOINT echo "python3 development environment\n"
RUN yum install -y wget
RUN wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
RUN yum makecache

RUN yum install -y  gcc zlib-devel make vim perl curl wget tar openssl-devel python-devel openssh-server && \
    yum install -y  sqlite-devel net-tools man passwd sudo 

RUN mkdir /var/run/sshd
CMD ["sshd_run.sh"]
# 设置root ssh远程登录密码
RUN echo "root:123456" | chpasswd
# 容器需要开放SSH 22端口，以使外部能够访问容器内部

#安装python3开发环境
ADD Python-3.5.5 /tmp/Python-3.5.5
#WORKDIR /tmp/Python-3.5.5.tgz
#RUN tar -zxvf Python-3.5.5.tgz
WORKDIR /tmp/Python-3.5.5
#RUN mkdir /usr/local/python3
RUN ./configure #--prefix=/usr/local/python3
RUN make && make install
#RUN ln -sf /usr/local/python3.5.5/bin/python3.5 /usr/bin/python
ADD require.txt /tmp/require.txt

RUN pip3 install --no-cache-dir -r /tmp/require.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com

EXPOSE 22
EXPOSE 8000


#vi报错解决方法 export TERM=xterm
