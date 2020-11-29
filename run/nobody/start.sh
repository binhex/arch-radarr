#!/bin/bash

# setup environment
export XDG_CONFIG_HOME="/config/xdg"

# run app
/usr/lib/radarr/bin/Radarr -nobrowser -data=/config
