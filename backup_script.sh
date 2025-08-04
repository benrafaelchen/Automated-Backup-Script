#!/bin/bash
# Interactive Backup Script

# Ask user for source and destination paths
read -p "Enter the full path of the folder to back up: " BACKUP_SOURCE
read -p "Enter the full path where the backup should be saved: " BACKUP_DESTINATION

# Check if source exists
if [[ ! -d "$BACKUP_SOURCE" ]]; then
    echo "❌ Error: Source directory does not exist."
    exit 1
fi

# Create destination directory if it doesn't exist
if [[ ! -d "$BACKUP_DESTINATION" ]]; then
    echo "📁 Destination directory doesn't exist. Creating it..."
    mkdir -p "$BACKUP_DESTINATION"
fi

# Create a timestamped backup file
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$BACKUP_DESTINATION/backup-$TIMESTAMP.tar.gz"

# Perform the backup
echo "🔄 Creating backup..."
tar -czvf "$BACKUP_FILE" "$BACKUP_SOURCE"

echo "✅ Backup completed successfully: $BACKUP_FILE"
