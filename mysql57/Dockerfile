FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD password
ENV MYSQL_DATABASE=dummy
ENV TZ "Asia/Tokyo"

RUN yum reinstall -y glibc-common
RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8

COPY my.cnf /etc/mysql/conf.d