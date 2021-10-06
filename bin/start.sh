#!/bin/bash
set -e
echo "$(pwd) /usr/local/bundle/bin/cucumber "$@""
mkdir -p /opt/project/test-reports

echo "Running Cucumber Tests from $(pwd)..."

/usr/local/bundle/bin/cucumber "$@"