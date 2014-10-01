#!/usr/bin/env bash

# Install Postgresql.
apt-get install -y postgresql
sudo -u postgres createuser -d -R -s -w vagrant
