#!/bin/sh
echo "1. installing relay"
npm install --save relay-runtime react-relay
npm install --save-dev relay-compiler babel-plugin-relay
echo "2. downloading .graphql schema file for the schema being queried"
curl https://raw.githubusercontent.com/relayjs/relay-examples/main/issue-tracker/schema/schema.graphql > schema.graphql
