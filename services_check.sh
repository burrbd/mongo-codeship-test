#!/usr/bin/env bash

function test_mongodb {
  curl "http://db:27017"
}

count=0
# Chain tests together by using &&
until ( test_mongodb )
do
  ((count++))
  if [ ${count} -gt 30 ]
  then
    echo "Services didn't become ready in time"
    exit 1
  fi
  sleep 1
done
