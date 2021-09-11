#!/bin/sh
local passwd=Secret
cd /opt/etc/ssl/gost-ca
openssl genpkey -algorithm gost2012_256 -pkeyopt paramset:A -out private/ca-main-gost.key \
	-pass pass:$passwd 
openssl req -config openssl.cnf \
	-key private/ca-main-gost.key \
	-new -x509 -days 7300 -extensions v3_ca \
	-out certs/ca-main-gost.cer \
	-utf8
