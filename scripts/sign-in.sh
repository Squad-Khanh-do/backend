#!/bin/bash
#URL='http://localhost:3000'
URL='https://take-a-vey.herokuapp.com'
#URL='http://httpbin.org/post'
curl ${URL}/sign-in \
  --silent \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "test",
      "password": "password"
    }
  }'

echo
