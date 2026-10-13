#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Check the server configuration before deployment.
sudo nginx -t

# Back up the current website before replacing the homepage.
bash "$project_dir/scripts/backup.sh"

# Deploy the homepage with permissions that allow Nginx to read it.
sudo install -m 644 "$project_dir/website/index.html" /var/www/html/index.html

sudo systemctl start nginx

# Verify that the deployed file matches the source.
diff "$project_dir/website/index.html" /var/www/html/index.html

bash "$project_dir/scripts/health-check.sh"

echo "Deployment completed successfully."