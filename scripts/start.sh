#!/bin/bash
set -xe

echo "Starting application..."

# Example if Node.js app
cd /home/ec2-user/myapp
# npm install             # optional if not done yet
# node index.js &         # run your app in background

# Example if React build served by Apache:
sudo cp -r /home/ec2-user/myapp/* /var/www/html/
sudo systemctl restart httpd

echo "Application started."
