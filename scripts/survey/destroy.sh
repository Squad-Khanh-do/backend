#!/bin/bash
#URL='http://localhost:3000'
URL='https://take-a-vey.herokuapp.com'
#URL='http://httpbin.org/post'
TOKEN='VidG+arRIW30WdMjot4mjw=='
ID='56e69f1522a24c6335673005'

echo 'JSON here is good :'
curl ${URL}/surveys/${ID} \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

#--silent \
echo
