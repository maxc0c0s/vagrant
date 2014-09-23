#!/usr/bin/env bash

TIMEZONE="America/Montreal"

# Set timezone.
if [ $(grep -c UTC /etc/timezone) -gt 0 ]
  then
    echo "${TIMEZONE}" | tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata
fi
