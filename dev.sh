#!/bin/bash

declare SITE_YAML=${1:-dev-site.yml}

_CURR_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
# rm -rf $_CURR_DIR/gh-pages $_CURR_DIR/.cache

cd antora_ui
gulp pack
cd ..

npx antora --fetch ${SITE_YAML}
