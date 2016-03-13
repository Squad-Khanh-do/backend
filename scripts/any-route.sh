#!/bin/bash
TOKEN='b82952cd6c232e7ceb16bdeb4dc36cd1'
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'

echo 'Enter url after /'
read answer

curl ${URL}/$answer \
  --silent \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" | jsonlint

# data output from curl doesn't have a trailing newline
echo
