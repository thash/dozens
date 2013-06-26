#!/bin/bash

# from sercret.yml
USER=""
KEY=""
DOMAIN=""
SUBDOMAIN=""

GIP=`curl ifconfig.me/ip`
TOKEN=`curl -s http://dozens.jp/api/authorize.json -H X-Auth-User:$USER -H X-Auth-Key:$KEY | sed 's/.*:"//' | sed 's/"}//'`

echo `curl -s http://dozens.jp/api/record/$DOMAIN.json -H X-Auth-Token:$TOKEN | tr "," "\n" | grep -n $SUBDOMAIN.$DOMAIN | sed 's/[a-z":.]//g'`


