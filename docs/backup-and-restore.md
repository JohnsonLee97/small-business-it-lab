# Website Backup and Restore Test

## Backup

Used scripts/backup.sh to back up /var/www/html.
Saved the archive in the backups folder.

## Restoration

Extracted the backup into restore-test without changing
the running website.

## Verification

Compared the served index.html with the restored index.html.
The diff command showed no differences and returned exit code 0.

## Limitation

The backup is on the same computer, so it does not protect
against computer or disk failure.
