#!/bin/bash
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'
SURVEY_ID='56e6d334e2dd2c923eed5ab7'
TOKEN='VidG+arRIW30WdMjot4mjw=='

echo 'JSON here is good :'
curl ${URL}/answers/${SURVEY_ID} \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "answer" : {
      "response": 2233445
    }
  }'

#--silent \
echo


# "survery": "56e6d334e2dd2c923eed5ab7"
