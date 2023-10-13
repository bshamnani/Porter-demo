#!/bin/bash

echo "HELLOWORLD"

fabric_prop=$1
resource_name=$(jq -r '.resource_name' $fabric_prop)
resource_type=$(jq -r '.resource_type' $fabric_prop)

echo $resource_name
echo $resource_type
echo "THE END"

access_token=$(/etc/getToken.sh|jq -r '.access_token')

curl -X POST https://api.fabric.microsoft.com/v1/workspaces/1804d483-0fa1-4c63-9cf7-8f30ec260b4e/items \
     -H 'Content-Type: application/json' \
     -H 'Authorization: Bearer '${access_token} \
     -d '{"displayName": "test_rg_1" ,"type": "Lakehouse" }' 

curl -X POST -H 'Content-Type: application/json' \
     -H 'Authorization: Bearer '${access_token} \
     -d  '{"displayName": "demo_test_workspace_1"}' \
    https://api.fabric.microsoft.com/v1/workspaces