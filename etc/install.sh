#!/usr/bin/env zsh

set -euo pipefail

DIR="${0:A}"

function main {
  local SSB="/Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js"
  local MAGIC="${DIR:h}/magic.js"
  if [[ -a $SSB ]]; then
    if grep -q 'hlian/slack-night-mode' "$SSB"; then
      >&2 echo "main: hlian/slack-night-mode already installed"
      exit 1
    else
      cat "$MAGIC" "$SSB" > /tmp/ok
      mv /tmp/ok "$SSB"
    fi
  else
    >&2 echo "main: unable to find ${SSB}"
    exit 1
  fi
}

main
