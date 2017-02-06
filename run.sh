#!/bin/sh

[ "$1" = "mongod" ] || exec "$@" || exit $?
[ "$(stat -c %U /data/db)" = mongodb ] || chown -R mongodb /data/db
CMD=exec; for i; do cmd="$cmd '$i'"; done
exec su -s /bin/sh -c "$CMD" mongodb
