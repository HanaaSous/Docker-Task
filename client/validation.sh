#!/bin/bash

servstat=$(rpm -qa httpd 2> /dev/null)

if [[ $servstat == *"httpd"* ]]; then
  echo "httpd is installed"
else echo "httpd is not installed"
fi
