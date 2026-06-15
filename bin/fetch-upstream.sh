#!/bin/bash

cd "${0%/*}/.."

wget -O upstream/UPNG.js "https://raw.githubusercontent.com/photopea/UPNG.js/refs/heads/master/UPNG.js"
dos2unix upstream/UPNG.js
cp upstream/UPNG.js UPNG.mjs
patch UPNG.mjs patches/UPNG-esm.patch
