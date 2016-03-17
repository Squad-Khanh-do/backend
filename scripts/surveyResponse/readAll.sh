#!/bin/bash
#URL='http://localhost:3000'
URL='https://take-a-vey.herokuapp.com'
#URL='http://httpbin.org/post'
TOKEN='fWvXXpm//4TVmCFDNfr7ug=='
SURVEY_ID='56e76d3ff4e8980d2b601921'

echo 'JSON here is good :'
curl ${URL}/surveys/${SURVEY_ID}/surveyResponses \
  --silent \
  --request GET \
  --header "Content-Type: application/json" \
  | jsonlint

#--silent \
echo
