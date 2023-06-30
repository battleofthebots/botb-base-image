FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
 apt-get install -y\
 # Language support
 python3 python3-pip build-essential default-jre\
 # Network tools
 nmap netcat-openbsd socat iproute2 iputils-ping\
 # Client applications
 openssh-client telnet ftp curl wget &&\
 pip3 install paramiko requests aiohttp urllib3\
 pyyaml scapy impacket pwntools cryptography pycryptodome &&\
 useradd -m -u 1000 user
