#!/usr/bin/env bash
set -eou pipefail

host=$1

while true; do
    curl --silent "https://${host}/" \
    | jq -r --arg REGION "$AWS_REGION" --arg DATESTR "$(date +%H:%M:%S)" '[$REGION, $DATESTR, .region, .message] | @tsv'
    sleep 3;
done;
