#!/bin/sh
cd /opt/etc/ssl/gost-ca/intermediate
openssl x509 -noout -text -in certs/intermediate.cer