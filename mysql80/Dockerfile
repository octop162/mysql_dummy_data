FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD password
ENV MYSQL_DATABASE=dummy
ENV TZ "Asia/Tokyo"

RUN microdnf install -y glibc-locale-source
RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8

COPY my.cnf /etc/mysql/conf.d