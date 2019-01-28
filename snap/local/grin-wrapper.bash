#!/bin/bash

set -eu

export HOME=$SNAP_USER_DATA
cd $SNAP_USER_DATA

exec "$SNAP/bin/grin" "$@"
