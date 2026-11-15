#!/bin/sh
# Idempotent preview boot: leave the dev server on 0.0.0.0:8080.
if curl -sf -o /dev/null --max-time 1 http://127.0.0.1:8080/; then
  exit 0
fi
cd /workspace
nohup npm run dev > /tmp/dev-server.log 2>&1 &
exit 0
