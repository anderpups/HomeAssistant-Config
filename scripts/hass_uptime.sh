#!/bin/bash

function displaytime {
  local T=$1
  local D=$((T/60/60/24))
  local H=$((T/60/60%24))
  local M=$((T/60%60))
  (( $D > 0 )) && printf '%d days,' $D
  (( $H > 0 )) && printf '%d hours,' $H
  (( $M > 0 )) && printf '%d minutes' $M
}

hassuptime="$(/bin/ps -o etimes= -p $(pgrep hass))"
displaytime $hassuptime
