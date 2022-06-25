FROM ubuntu:20.04

RUN apt update && apt upgrade -y && \
    apt install -y python3.8 python3-pip && \
    pip install pylatex numpy matplotlib 
