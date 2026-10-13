# Website Monitoring Test

## Purpose

Check website availability repeatedly and record outages
and recovery with timestamps.

## Run

bash scripts/monitor.sh

The script checks approximately every 30 seconds.
Press Ctrl+C to stop monitoring.

## Test Procedure

Started monitoring, stopped Nginx, then started Nginx again.

## Observed Results

- 16:29:22 and 16:29:52: DOWN, connection failed.
- 16:30:22 onwards: UP, HTTP 200 received.

## Log Location

logs/health-check.log

Generated logs are excluded from Git.

## Limitations

Monitoring runs only while the script and WSL are running.
HTTP 200 confirms a successful response, but does not verify
that all webpage content is correct.
