#!/bin/sh
cd /opt/etc/ssl/gost-ca/intermediate
openssl ca -config /opt/etc/ssl/gost-ca/intermediate/openssl.cnf -revoke ../newcerts/${1}.pem -utf8
