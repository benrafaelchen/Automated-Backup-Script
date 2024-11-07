#!/bin/bash
# Backup Script

# Define the backup source and destination
BACKUP_SOURCE="/path/to/source"
BACKUP_DESTINATION="/path/to/backup"

# Create a timestamped backup file
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$BACKUP_DESTINATION/backup-$TIMESTAMP.tar.gz"

# Perform the backup
tar -czvf "$BACKUP_FILE" "$BACKUP_SOURCE"
echo "Backup completed successfully: $BACKUP_FILE"
