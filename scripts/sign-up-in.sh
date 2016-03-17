#!/bin/bash
#URL='http://localhost:3000'
URL='https://take-a-vey.herokuapp.com'
#URL='http://httpbin.org/post'

echo 'json here is good :'
curl ${URL}/sign-up \
  --silent \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "jacob@statefarm.com",
      "password": "password",
      "password_confirmation": "password"
    }
  }' | jsonlint

echo '----------------------------------------------'
echo  'sign IN.....'
echo '----------------------------------------------'

curl ${URL}/sign-in \
  --silent \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "jacob@statefarm.com",
      "password": "password"
    }
  }' | jsonlint
