# #!/bin/bash
# URL='http://localhost:3000'
# #URL='https://todo-list-90562.herokuapp.com'
# #URL='http://httpbin.org/post'
# TOKEN='fWvXXpm//4TVmCFDNfr7ug=='
#
# echo 'JSON here is good :'
# curl ${URL}/surveyResponses \
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'
SURVEY_ID='56e76d3ff4e8980d2b601921'
TOKEN='fWvXXpm//4TVmCFDNfr7ug=='

echo 'JSON here is good :'
curl ${URL}/surveys/${SURVEY_ID}/surveyResponses \
  --silent \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" | jsonlint

#--silent \
echo
