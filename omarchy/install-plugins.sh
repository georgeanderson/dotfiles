#!/bin/bash

set -euo pipefail

add_plugin() {
  local url="$1"
  local id="$2"
  if omarchy plugin list 2>/dev/null | grep -q "^${id} "; then
    echo "already present: ${id}"
    return 0
  fi
  omarchy plugin add "${url}" --enable --yes
}

add_plugin "https://github.com/Pablo-Merino/omarchy-altswitch.git" "io.github.pablo-merino.altswitch"
add_plugin "https://github.com/throni001/omarchy-system-monitor.git" "tanzil.sysmon"

omarchy plugin enable omarchy.media
omarchy plugin enable omarchy.active-window
omarchy plugin enable io.github.pablo-merino.altswitch
omarchy plugin enable tanzil.sysmon
