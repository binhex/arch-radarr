#!/bin/bash

# setup environment
export MONO_TLS_PROVIDER=legacy

# run app
/usr/bin/mono --debug /usr/lib/radarr/Radarr.exe -nobrowser -data=/config
