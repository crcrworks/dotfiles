#!/bin/bash

current_focus=$(yabai -m query --windows --window 2>/dev/null | jq -r '.id' 2>/dev/null)

if [ -z "$current_focus" ]; then
  sleep 0.1
  yabai -m window --focus recent 2>/dev/null || yabai -m window --focus prev 2>/dev/null || yabai -m window --focus next 2>/dev/null
fi
