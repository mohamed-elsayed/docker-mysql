FROM ubuntu
RUN apt-get -y update
RUN apt-get -y upgrade


ENV  DEBIAN_FRONTEND noninteractive
RUN apt-get -y install mysql-server-5.7

CMD ["mysqld_safe"]


