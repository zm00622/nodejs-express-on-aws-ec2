#!/bin/bash
sudo yum install -y libatomic

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install --lts

if [ ! -d /home/ec2-user/express-app ]; then
  mkdir -p /home/ec2-user/express-app
fi


