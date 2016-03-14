#!/bin/bash
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'
TOKEN='VidG+arRIW30WdMjot4mjw=='

echo 'json here is good :'
curl ${URL}/surveys \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "survey" : {
      "title": "These dont count!",
      "Question": "string of a question ???",
      "Answer": "this is a string test"
    }
  }'

#--silent \
echo
