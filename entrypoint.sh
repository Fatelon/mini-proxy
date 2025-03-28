#!/bin/sh

echo "[START] $(date) microsocks started"
exec microsocks -p 1080 -i 0.0.0.0 | while IFS= read -r line; do
  echo "$(date +'%Y-%m-%d %H:%M:%S') $line"
done