#!/bin/bash
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'
TOKEN='VidG+arRIW30WdMjot4mjw=='
ID='56e5f4b996f7d49e2c39c075'

echo 'JSON here is good :'
curl ${URL}/surveys/${ID} \
  --silent \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "survey" : {
      "surveyName": "This is a patch request",
      "Question": "this is a patch request",
      "Answer": "This is an update"
    }
  }' | jsonlint

#--silent \
echo
