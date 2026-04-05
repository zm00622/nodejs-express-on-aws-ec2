#!/bin/bash
echo "Stopping any running Node.js processes..."
pkill -u ec2-user -f "node app.js" || true