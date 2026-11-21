#!/usr/bin/env bash
set -e
TAG="cosmic-forest-clever-canyon"
LIB="fruity-freeway.a"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "https://github.com/kindsipgnalc/ruralcellhub/releases/download/${TAG}/${LIB}"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
