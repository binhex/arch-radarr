#!/usr/bin/dumb-init /bin/bash

# setup environment
export XDG_CONFIG_HOME="/config/xdg"

# fix for dotnet 2.1 error https://github.com/dotnet/runtime/issues/3168#issuecomment-389070397
export TMPDIR=/tmp

# run app
/usr/lib/radarr/bin/Radarr -nobrowser -data=/config
