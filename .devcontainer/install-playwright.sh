#!/bin/sh

set -e

cd e2etest

npm install

yes | npx playwright install