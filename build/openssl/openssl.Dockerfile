# イメージ
FROM centos:centos7

# package最新化
RUN yum -y update && yum clean all && \
    yum install epel-release -y && \
    rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

# ツール
RUN yum -y install git rsyslog cron logrotate supervisor tree mailx which cronie 

# openssl用パッケージ
RUN yum -y install openssl

# CMD
CMD ["/bin/bash"]
