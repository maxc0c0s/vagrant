#!/usr/bin/env bash

# Install deps from anybox package
echo 'deb http://apt.anybox.fr/openerp common main' >> /etc/apt/sources.list
apt-get update
apt-get install -y --force-yes openerp-server-system-build-deps

