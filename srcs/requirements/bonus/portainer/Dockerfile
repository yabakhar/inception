FROM debian:buster

RUN apt-get update -y  && apt-get install -y wget 

RUN wget https://github.com/portainer/portainer/releases/download/2.17.1/portainer-2.17.1-linux-amd64.tar.gz && \
    tar -xvf portainer-2.17.1-linux-amd64.tar.gz && \
    rm portainer-2.17.1-linux-amd64.tar.gz && \
    chmod +x ./portainer/portainer

CMD ["./portainer/portainer"]   

EXPOSE 9000