#!/bin/bash
TOKEN='fe2935905d18398105f61d4f1d376ebd'
ID='1'
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
#URL='http://httpbin.org/post'

curl ${URL}sign-out/${ID} \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

  echo
