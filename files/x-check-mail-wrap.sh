#!/usr/bin/env bash
set -o pipefail
# This is necessary because Icingaweb2 hates pipes in output
SCRIPT_DIR=$(cd `dirname $0` && pwd)

${SCRIPT_DIR}/x-check-mailserver $@ 2>&1 | sed 's/^[A-Z ]\+\[.*\] //'
EXIT_CODE=$?

if [[ $EXIT_CODE -ne 0 ]]; then
    echo "Failed with args: $@"
    echo "Exit code: $EXIT_CODE"
    exit 1
fi
