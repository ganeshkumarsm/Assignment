# NGINX image

FROM nginx:latest

MAINTAINER Ganesh Kumar <ksganesh18@gmail.com>
ENV REFRESHED_AT 19-07-2019

RUN apt-get update -qq \
  && apt-get install -qqy curl wget unzip tar nano \
  && apt-get clean \
  && mkdir -p /usr/share/nginx/assets/static

COPY ./static /usr/share/nginx/assets/static

COPY ./nginx-ssl/nginx.crt /etc/ssl

COPY ./nginx-ssl/nginx.key /etc/ssl

COPY ./default.conf /etc/nginx/conf.d/default.conf

# CA cert
#RUN mkdir -p /etc/pki/tls/certs
#ADD ssl.crt /etc/pki/tls/certs/ssl.crt


