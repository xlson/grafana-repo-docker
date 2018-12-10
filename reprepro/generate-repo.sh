#!/usr/bin/env bash

_version="${1:-5.4.0}"

if [ -d "repo" ]; then
    rm -rf repo
fi

docker build --tag grafana-repo-gen .

docker run -ti --user "$(id -u):$(id -g)" -v "$PWD:/work" grafana-repo-gen "${_version}"