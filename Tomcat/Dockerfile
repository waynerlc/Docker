FROM ubuntu:precise

RUN apt-get update && apt-get -y install sudo && apt-get -y install vim

ENV CATALINA_HOME /usr/local/apache-tomcat-7.0.55
ENV CATALINA_BASE /home/bematech/tomcat-conf
ENV JAVA_HOME /usr/local/jdk1.7.0_67
ENV PATH $PATH:$CATALINA_HOME/bin:$JAVA_HOME/bin
ENV JAVA_OPTS -Xms256m 
ENV JAVA_OPTS $JAVA_OPTS -Xmx1024m

RUN mkdir -p "$CATALINA_HOME"
RUN mkdir -p "$JAVA_HOME"
RUN mkdir -p "$CATALINA_BASE"

ADD apache-tomcat-7.0.55.tar.gz /usr/local/
ADD server-jre-7u67-linux-x64.tar.gz /usr/local/

ADD tomcat-users.xml $CATALINA_HOME/conf/tomcat-users.xml

RUN sed -i "s#.*max-file-size.*#\t<max-file-size>52428800</max-file-size>#g" $CATALINA_HOME/webapps/manager/WEB-INF/web.xml \
    && sed -i "s#.*max-request-size.*#\t<max-request-size>52428800</max-request-size>#g" $CATALINA_HOME/webapps/manager/WEB-INF/web.xml

ADD start /start

RUN chmod +x start

RUN groupadd -r bematech -g 1000
RUN useradd --system --uid=1000 --gid=1000 -g bematech --home /home/bematech --shel /bin/bash -p "$1$keh3dEpl$PT08gNYdYlqMlRqnyBGqy1" bematech
RUN mkdir -p /home/bematech && chown -R bematech:bematech /home/bematech
RUN echo 'bematech ALL=(ALL) ALL' >> /etc/sudoers

EXPOSE 8080
CMD ["./start"]
