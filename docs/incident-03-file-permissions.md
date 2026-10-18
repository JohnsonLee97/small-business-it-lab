# Incident 03: Webpage File Permissions

## Purpose

Understand how file permissions affect access to the webpage.

## Original State

The deployed index.html was owned by root with permissions 644.
The www-data account could read it.

## Permission Change

Changed the file permissions to 600.
This allowed only root to read and write the file.

## Recovery

Restored permissions using:
sudo chmod 644 /var/www/html/index.html

## Verification

The health-check script returned:
PASS: Website responded with HTTP 200.

## Lesson Learned

Nginx needs permission to read website files.
Permissions 644 allow the owner to read and write,
while the group and others can only read.
