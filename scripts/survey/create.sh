#!/bin/bash
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'

TOKEN='VidG+arRIW30WdMjot4mjw=='

echo 'json here is good :'
curl ${URL}/surveys \
  --silent \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "survey" : {
      "title": "This is a title.",
      "description": "This is a test",
      "questions": {
        "text": "What is your favorite color?"
      }
    }
  }' | jsonlint

#--silent \
echo
