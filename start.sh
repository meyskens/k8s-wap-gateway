#!/bin/bash
bearerbox -v 5 /etc/kannel/bearerbox.conf

sleep 3 # TODO: find better hack

wapbox -v 5 /etc/kannel/bearerbox.conf