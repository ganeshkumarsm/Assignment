# Apache Tomcat image
FROM tomcat:9.0.22-jdk11-openjdk

MAINTAINER Ganesh Kumar <ksganesh18@gmail.com>
ENV REFRESHED_AT 19-07-2019

RUN apt-get update -qq \
  && apt-get install -qqy curl wget \
  && apt-get clean

COPY companyNews.war /usr/local/tomcat/webapps/companyNews.war

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

COPY host-manager/context.xml /usr/local/tomcat/webapps/host-manager/META-INF

COPY manager/context.xml /usr/local/tomcat/webapps/manager/META-INF

# CA cert
#RUN mkdir -p /etc/pki/tls/certs
#ADD ca.crt /etc/pki/tls/certs/ca.crt
