#!/bin/bash
#URL='http://localhost:3000'
URL='https://take-a-vey.herokuapp.com'
SURVEY_ID='56e76d3ff4e8980d2b601921'

echo 'JSON here is good :'
curl ${URL}/surveys/${SURVEY_ID}/surveyResponses \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "surveyResponse" : {
      "response": "green"
    }
  }'

#--silent \
echo
