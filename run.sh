#!/usr/bin/env bash

_version="${1:-5.4.0}"

cd /tmp
wget -q "https://dl.grafana.com/oss/release/grafana_${_version}_amd64.deb"
wget -q "https://dl.grafana.com/oss/release/grafana_${_version}_arm64.deb"
wget -q "https://dl.grafana.com/oss/release/grafana_${_version}_armhf.deb"

cd /work
mkdir -p repo/apt/debian/conf
cp distributions repo/apt/debian/conf
cd repo/apt/debian
reprepro includedeb stretch /tmp/grafana_${_version}_amd64.deb
reprepro includedeb stretch /tmp/grafana_${_version}_arm64.deb
reprepro includedeb stretch /tmp/grafana_${_version}_armhf.deb