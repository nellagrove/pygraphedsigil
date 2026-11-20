#!/usr/bin/env bash
set -e
LIB="painted-rope.a"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "https://github.com/nellagrove/pygraphedsigil/releases/download/frosty-harbor-crimson-badger/painted-rope.a" -o "$LIB"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
