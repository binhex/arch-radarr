#!/bin/bash

# setup environment
export XDG_CONFIG_HOME="/config/xdg"

# run app
/usr/bin/mono --debug /usr/lib/radarr/Radarr.exe -nobrowser -data=/config
