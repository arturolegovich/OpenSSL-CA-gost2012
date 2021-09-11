#!/bin/sh
cd /opt/etc/ssl/gost-ca
openssl ca -config openssl.cnf -extensions v3_intermediate_ca \
	-days 7299 -notext \
	-in intermediate/csr/intermediate.req \
	-out intermediate/certs/intermediate.cer \
	-utf8