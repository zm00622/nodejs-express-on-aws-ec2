#!/bin/bash
echo "Stopping any running Node.js processes..."
PID=$(pgrep -u ec2-user -f "node app.js")
if [ -n "$PID" ]; then
  kill $PID
fi
exit 0