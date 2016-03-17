#!/bin/bash
TOKEN=''
ID='1'
#URL='http://localhost:3000'
URL='https://take-a-vey.herokuapp.com'
#URL='http://httpbin.org/post'

curl ${URL}/change-password/${ID} \
  --include\
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "password",
      "new": "password"
    }
  }'

echo
