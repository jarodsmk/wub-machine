FROM ubuntu:latest

COPY . /wub-machine

WORKDIR /wub-machine

RUN apt-get update && apt-get install -y \
    bash \
    dos2unix \
    wget

RUN chmod +x /wub-machine/install.sh
RUN ls

RUN dos2unix ./install.sh
RUN ./install.sh

ENTRYPOINT ["bash"]