#!/bin/bash
#URL='http://localhost:3000'
URL='https://take-a-vey.herokuapp.com'
#URL='http://httpbin.org/post'
TOKEN='nWECzdxbgfB5HUk+Z71TLw=='

echo 'json here is good :'
curl ${URL}/surveys \
  --silent \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "survey" : {
      "title": "What is your favorite color?",
      "description": "Find out the most popular favorite color.",
      "questions": {
        "text": "What is your favorite color?"
      }
    }
  }' | jsonlint

#--silent \
echo
