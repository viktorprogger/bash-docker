#!/usr/bin/env bash

apt update
apt upgrade -y
apt remove -y docker docker-engine docker.io containerd runc
apt install -y make git

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
rm get-docker.sh

usermod -aG docker `whoami`

curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

