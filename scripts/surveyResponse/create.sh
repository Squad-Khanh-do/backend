#!/bin/bash
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'
SURVEY_ID='56e76d3ff4e8980d2b601921'
TOKEN='fWvXXpm//4TVmCFDNfr7ug=='

echo 'JSON here is good :'
curl ${URL}/surveys/${SURVEY_ID}/surveyResponses \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "surveyResponses" : {
      "response": "2233445"
    }
  }'

#--silent \
echo


# "survery": "56e6d334e2dd2c923eed5ab7"
