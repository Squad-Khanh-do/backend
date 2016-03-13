#!/bin/bash
TOKEN='cba6ee02717d92b8656b07236168e376'
USER_ID='1'
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'

curl ${URL}/users/${USER_ID} \
  --silent \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

# data output from curl doesn't have a trailing newline
echo
