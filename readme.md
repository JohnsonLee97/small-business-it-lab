# Small Business IT Infrastructure Lab

A free local learning project using Ubuntu on WSL2 and Nginx.

## Purpose

Practise hosting a small business homepage, checking server
availability, investigating outages, and backing up website files.

## Tools

- WSL2 and Ubuntu
- Nginx
- Bash and curl
- Git and VS Code

## Completed Features

- Local website served by Nginx
- HTTP response, listening port and access log checks
- Simulated service outage and recovery
- Bash health-check script
- Website backup and restoration into a test folder

## Run the Website

Install Nginx inside Ubuntu:

    sudo apt update
    sudo apt install nginx curl

From the project folder, deploy the homepage and start Nginx:

    sudo cp website/index.html /var/www/html/index.html
    sudo systemctl start nginx

Open http://localhost in a Windows browser.

## Run the Health Check

From the project folder:

    bash scripts/health-check.sh

Exit code 0 means HTTP 200 was received.
Exit code 1 means the check failed.

## Create a Backup

    bash scripts/backup.sh

Backups are saved in backups/ and excluded from Git.

## Documentation

- docs/web-server-checks.md
- docs/incident-01-service-stopped.md
- docs/backup-and-restore.md

## Limitations

This is a local learning lab.
Backups stored on the same computer do not protect against
computer or disk failure.
