FROM ubuntu:20:04
MAINTAINER prometheus

RUN apt-get update -y
RUN  apt-get install prometheus -y
COPY ./prometheus.yml ../etc/prometheus:ro

EXPOSE 9090:9090