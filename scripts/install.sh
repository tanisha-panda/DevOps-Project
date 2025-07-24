#!/bin/bash
set -xe

echo "Running install.sh script..."

# Example: Install dependencies (if applicable)
# sudo yum install -y nodejs npm  # for Node.js apps

# Set permissions for deployed app
sudo chmod -R 755 /home/ec2-user/myapp

echo "Install step complete."
