#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d454c8c3-6a65-44da-8341-feff3ef3f6b3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

