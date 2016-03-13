#!/bin/bash
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'
TOKEN='VidG+arRIW30WdMjot4mjw=='

echo 'json here is good :'
curl ${URL}/surveys \
  --silent \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" | jsonlint

#--silent \
echo
