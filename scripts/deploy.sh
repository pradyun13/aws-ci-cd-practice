#!/bin/bash

set -e

systemctl restart nginx
systemctl is-active --quiet nginx

echo "Application deployed successfully."
