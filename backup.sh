#!/bin/bash

# backup.sh

# This script will be run by cron jobs at regular intervals

BACKUP_DIR="/path/to/backup"
DATE=$(date +'%Y-%m-%d_%H-%M-%S')
DB_NAME="unternehmens_db"
DB_USER="root"
DB_PASS="password"

mkdir -p $BACKUP_DIR/$DATE
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/$DATE/${DB_NAME}.sql

# Delete old backups - keep backups for the past 30 days
find $BACKUP_DIR/* -mtime +30 -exec rm -rf {} \;