# Automated Backup Script

A Bash script that backs up a directory on a schedule, logs every run, and fails safely with a clear error message instead of breaking silently.

## Problem

Manual backups get forgotten. This script removes the human step entirely: it runs on its own every night, keeps a dated copy of the source folder, and leaves a record of whether it worked — so a failure can be caught the next morning instead of weeks later.

## What it does

1. Checks that the source directory exists before doing anything
2. Creates a timestamped backup folder (`backup_YYYY-MM-DD`)
3. Copies the source directory into it
4. Logs the result (success or failure) with a timestamp
5. Exits with code `0` on success or `1` on failure, so it can be checked programmatically

## Usage

chmod +x backup.sh
./backup.sh

Check the log:
cat ~/backups/backup.log

## Automation (cron)

Runs automatically every day at 2:00 AM:

crontab -e

0 2 * * * /home/youruser/linux-practice/mes-02-bash-ssh/backup.sh

## Design decisions

- **Fails loudly, not silently**: if the source directory doesn't exist, the script logs the error and exits with code 1 instead of crashing with an unclear message.
- **Exit codes**: 0 = success, 1 = failure. This lets the script be chained with other automation or monitored by external tools.
- **Timestamped folders**: each run creates a separate dated backup instead of overwriting the previous one.

## Tech used

Bash, cron, standard Linux file operations (cp, mkdir, date).
