FROM centos:7 as client-image
RUN yum-config-manager --add-repo=http://192.168.1.240:8899/custum-repo
RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
RUN yum -y install httpd
