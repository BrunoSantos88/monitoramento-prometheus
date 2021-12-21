FROM ubuntu:20:04
MAINTAINER grafana-server

RUN apt-get update -y 
RUN apt-get install -y apt-transport-https
RUN apt-get install -y software-properties-common wget
RUN wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
RUN echo "deb https://packages.grafana.com/enterprise/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
RUN echo "deb https://packages.grafana.com/enterprise/deb beta main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
RUN apt-get update
RUN apt-get install grafana-enterprise -y
RUN systemctl start grafana-server

EXPOSE 3000:3000