# BOTB Base
This repository defines the base image of the Battle of the Bots competition

## How to use
To use this image
1. Generate a personal access token in github with permission to read:packages at https://github.com/settings/tokens/new
1. Copy your token, save it somewhere if you would like
1. Docker login to ghcr `echo $TOKEN | docker login ghcr.io -u USERNAME --password-stdin` or paste in your password
1. Use image as normal (e.g. `docker pull ghcr.io/battleofthebots/botb-base-image:latest`)

## Github Actions
By default, a challenge's github action cannot pull from `ghcr.io/battleofthebots/botb-base-image`

For a challenge's github action to succeed pushing to ghcr, please reach out to an organization admin to grant your challenge repository read access to this base image

## Features
The latest version of `botb-base` is based on the `ubuntu 20.04`, has a default user (`user`) with `uid=1000`, and contains the following packages:

### From apt
- python3
- python3-pip
- build-essential
- default-jre
- nmap
- netcat-openbsd
- socat
- iproute2
- iputils-ping
- openssh-client
- telnet
- ftp
- curl
- wget

### From pip
- paramiko
- requests
- aiohttp
- urllib3
- pyyaml
- scapy
- impacket
- pwntools
- cryptography
- pycryptodome
- flask
