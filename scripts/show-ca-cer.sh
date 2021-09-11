#!/bin/sh
cd /opt/etc/ssl/gost-ca
openssl x509 -noout -text -in certs/ca-main-gost.cer