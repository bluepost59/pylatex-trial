FROM ubuntu:20.04

RUN apt update && apt upgrade -y && \
    apt install -y python3.8 python3-pip wget perl && \
    pip install pylatex numpy matplotlib 

# build TeX Live 2022
RUN mkdir downloads && \
    cd downloads && \
    wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    zcat install-tl-unx.tar.gz | tar xf - && \
    cd install-tl-???????? && \
    perl ./install-tl --scheme=basic --no-interaction && \
    /usr/local/texlive/????/bin/x86_64-linux/tlmgr install collection-langcjk collection-langjapanese

