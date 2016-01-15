FROM ddamon/centos7-ssl
MAINTAINER David Damon <dwdamon@gmail.com>

ENV container docker

LABEL name="CentOS 7 SSL Image" \
    vendor="CentOS" \
    license="GPLv2" \
    build-date="2015-12-23"


RUN rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm\
 && yum -y update
 && yum -y install ansible\
 && yum clean all

CMD (/usr/sbin/sshd -D &) && bash
