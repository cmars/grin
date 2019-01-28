#!/bin/bash

set -eu

GRIN="$SNAP/bin/grin"

export HOME=$SNAP_DATA

cd $SNAP_DATA
if [ ! -d "grin-server.toml" ]; then
	"$GRIN" server config
fi

exec "$GRIN" server run
