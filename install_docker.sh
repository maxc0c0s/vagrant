#!/usr/bin/env bash
#Must be run under root.

#####################################################################
# Install latest Docker Ubuntu package.
#apt-get update
#apt-get install -y docker.io
#ln -sf /usr/bin/docker.io /usr/local/bin/docker
#sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io
#####################################################################

##########################################################################################################
# Install lastest package from editor's repo.
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
apt-get update
apt-get install -y lxc-docker
#########################################################################################################
