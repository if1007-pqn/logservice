#!/usr/bin/env bash
local="$(cd "$(dirname "$0")"; pwd)"
cd "$local"

function clean_log() {
    docker rm --force logservice 2>/dev/null >&2
}

clean_log

if ! docker images | grep -w -q logservice; then
    docker build . -t logservice
fi

docker run --name logservice -p 9200:9200 -p 5601:5601 logservice && clean_log
