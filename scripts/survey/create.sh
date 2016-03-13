#!/bin/bash
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'

echo 'json here is good :'
curl ${URL}/survey \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "surveyName": "How many tests?",
    "Question": "string of a question ???",
    "Answer": "this is a string test"
  }'

#--silent \
echo
