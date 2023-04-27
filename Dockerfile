FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Paris

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
  binutils coreutils build-essential \
  texlive-full texlive-extra-utils \
  ghostscript inkscape pdftk python-is-python3 \
  python3 python3-pip pandoc pandoc-citeproc \
  && pip3 install pygments \
  && apt-get autoclean -y && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["/bin/bash"]
