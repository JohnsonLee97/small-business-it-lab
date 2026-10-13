# Incident 02: Incorrect Homepage Update

## Symptom

The homepage displayed an incorrect-update test message.

## Cause

The served index.html was deliberately replaced for this exercise.

## Monitoring Result

The health check still reported PASS because the server returned
HTTP 200. It could not detect incorrect page content.

## Recovery

Used website-20261013-174511-Tdu2bG.tar.gz.
Extracted the backup into a temporary folder and restored
index.html to /var/www/html/index.html.

## Verification

Refreshed the browser and confirmed the original portal returned.

## Lesson Learned

A successful HTTP response does not guarantee correct content.
Backups allow recovery from incorrect website updates.
