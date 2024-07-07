#!/bin/sh

set -e

cd e2etest

npm install

npx playwright install --with-deps