#!/bin/bash
URL='http://localhost:3000'
#URL='https://take-a-vey.herokuapp.com'
#URL='http://httpbin.org/post'
TOKEN='j9tDTL2BkAgCPI2G9FsI/g=='

echo 'json here is good :'
curl ${URL}/surveys \
  --silent \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" | jsonlint

#--silent \
echo
