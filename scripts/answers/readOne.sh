#!/bin/bash
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'
TOKEN='VidG+arRIW30WdMjot4mjw=='
ID='56e6d92e5c6e93ef3f7ab040'

echo 'json here is good :'
curl ${URL}/answers/${ID} \
  --silent \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" | jsonlint

#--silent \
echo
