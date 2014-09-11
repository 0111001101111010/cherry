#!/bin/sh

set -e -x

# Release to npm

lein do cljsbuild clean, cljsbuild once
cp package.json dist/
cp README.md dist/

cd dist/

npm publish
npm install -g
