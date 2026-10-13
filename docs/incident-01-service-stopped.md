# Incident 01: Nginx Service Stopped

## Symptom

The website could not be reached.

## Investigation

Checked the website using curl.
Checked the service using systemctl is-active nginx.

## Cause

Nginx was deliberately stopped for this exercise.

## Fix

Started Nginx using sudo systemctl start nginx.

## Verification

The website returned HTTP/1.1 200 OK after recovery.

## Health-check script test

Ran bash scripts/health-check.sh while Nginx was stopped.
The script reported FAIL: Could not reach the website.

Started Nginx and ran the script again.
The script reported PASS: Website responded with HTTP 200.
