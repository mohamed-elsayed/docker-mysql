FROM ubuntu
RUN apt-get -y update
RUN apt-get -y upgrade
ENV  DEBIAN_FRONTEND noninteractive
RUN apt-get -y install mysql-server-5.7
EXPOSE 3306
RUN mkdir /var/run/mysqld
RUN chown -R  mysql:mysql /var/run/mysqld
#RUN chmod a+w /var/run/mysqld

CMD ["mysqld_safe"]


