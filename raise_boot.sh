#!/usr/bin/env bash
set -e
REPO="willaneferna/spectralkeepkit"
TAG="golden-ember-frosty-forest"
LIB="still-glacier.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
