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

## Deploy Homepage Updates

Save changes to website/index.html, then run:

    bash scripts/deploy.sh

The script checks the Nginx configuration, backs up the existing
website, deploys the homepage and checks the HTTP response.

## Monitor Website Availability

    bash scripts/monitor.sh

Checks approximately every 30 seconds and saves results to
logs/health-check.log. Press Ctrl+C to stop.

Test results: docs/monitoring-test.md

## Background Monitoring

Monitoring runs through the website-monitor systemd service.

Check status:
systemctl is-active website-monitor

Stop monitoring:
sudo systemctl stop website-monitor

Start monitoring:
sudo systemctl start website-monitor

Monitoring stops when WSL shuts down and starts again
when Ubuntu boots because the service is enabled.
