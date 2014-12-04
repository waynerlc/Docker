FROM ubuntu:precise

MAINTAINER wayner.coelho@bematech.com.br

RUN apt-get update && apt-get install -y wget

RUN wget -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add - 
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list 

RUN apt-get update && apt-get install -y postgresql-9.3 postgresql-client-9.3 postgresql-contrib-9.3 pwgen

RUN rm -rf /var/lib/postgresql && rm -rf /var/lib/apt/lists/*

ADD start /start
RUN chmod 755 /start

RUN apt-get update && apt-get -y install sudo

RUN useradd docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN mkdir -p /home/docker && chown -R docker:docker /home/docker

EXPOSE 5432

VOLUME ["/var/lib/postgresql"]
VOLUME ["/run/postgresql"]

CMD ["/start"]
