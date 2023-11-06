#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
DESKTOP_FILES=(
  'nvim'
  'syncthing-start'
  'syncthing-ui'
)

for file in ${DESKTOP_FILES[@]}; do
  echo "NoDisplay=true" >> /usr/share/applications/${file}.desktop
done
