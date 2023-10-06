#!/bin/bash

fabric_resource_name=$1
echo $fabric_resource_name

curl -X POST https://api.fabric.microsoft.com/v1/workspaces/6bd1de78-9423-40f6-bf50-d9c146a39176/items \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer '${access_token} \
-d '{"displayName": "'${FABRIC_RESOURCE_NAME}'" ,"type": "Lakehouse" }' 

