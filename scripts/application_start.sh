#!/bin/bash
echo "Starting the Node.js application..."

# Use hardcoded path instead of $HOME — CodeDeploy doesn't always set $HOME correctly
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

cd /home/ec2-user/express-app

npm install

# Add nohup so the process survives after the deploy script exits
nohup node app.js > app.out.log 2> app.err.log < /dev/null &