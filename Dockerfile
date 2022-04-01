FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Paris

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
  binutils coreutils build-essential \
  texlive-full texlive-extra-utils \
  ghostscript inkscape \
  && apt-get autoclean -y && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["/bin/bash"]
