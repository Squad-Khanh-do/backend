#!/bin/bash
TOKEN='cba6ee02717d92b8656b07236168e376'
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'

curl ${URL}/users \
  --silent \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

  echo
