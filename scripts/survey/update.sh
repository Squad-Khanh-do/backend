#!/bin/bash
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'
TOKEN='RGD/qk5kf4h64CeYCLBHuA=='
ID='56e7431d2698409d20740cea'

echo 'JSON here is good :'
curl ${URL}/surveys/${ID} \
  --silent \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "survey" : {
      "title": "BAH Update this shit",
      "description": "BAH updating",
      "questions": {
        "text": "Bah Me case tu case?"
      }
    }
  }' | jsonlint

#--silent \
echo
