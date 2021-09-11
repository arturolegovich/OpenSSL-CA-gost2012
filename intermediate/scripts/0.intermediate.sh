#!/bin/sh
cd /opt/etc/ssl/gost-ca/intermediate
openssl genpkey -algorithm gost2012_256 -pkeyopt paramset:A -out private/intermediate.key
openssl req -config openssl.cnf \
	-key private/intermediate.key \
	-new -days 7299 -extensions v3_intermediate_ca \
	-out csr/intermediate.req \
	-utf8
