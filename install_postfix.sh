#!/usr/bin/env bash

# Install Postfix.
debconf-set-selections <<< "postfix postfix/mailname string openerp-local-dev"
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
apt-get install -y postfix
echo "relayhost = relais.videotron.com" >> /etc/postfix/main.cf
service postfix restart
