#!/usr/bin/env bash
set -euo pipefail

install() {
  echo "Hello World bhavesh 123"
  echo "$FABRIC_RESOURCE_NAME"
  access_token=$(/etc/getToken.sh|jq -r '.access_token')
  curl -X POST https://api.fabric.microsoft.com/v1/workspaces/6bd1de78-9423-40f6-bf50-d9c146a39176/items \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer '${access_token} \
  -d '{"displayName": "'${FABRIC_RESOURCE_NAME}'" ,"type": "Lakehouse" }' 
}

upgrade() {
  echo World 2.0
}

uninstall() {
  echo Goodbye World
}

# Call the requested function and pass the arguments as-is
"$@"
