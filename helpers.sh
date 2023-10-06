#!/usr/bin/env bash
set -euo pipefail

install() {
  access_token=$(/etc/getToken.sh|jq -r '.access_token')
  fabric_resource_name=$1
  ./install_fabric.sh $access_token $fabric_resource_name
  
}

upgrade() {
  echo World 2.0
}

uninstall() {
  echo Goodbye World
}

# Call the requested function and pass the arguments as-is
"$@"
