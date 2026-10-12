#!/bin/bash

set -e

echo "Starting post-deployment configuration"

if ! systemctl is-active --quiet nginx; then
systemctl start nginx
fi

systemctl enable nginx
systemctl reload nginx

echo "Website deployment completed successfully"
