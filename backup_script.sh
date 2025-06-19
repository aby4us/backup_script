#!/bin/bash

SOURCE_DIR="$1"
BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

if [ -z "$SOURCE_DIR" ]; then
  echo "שגיאה: נא לציין נתיב לתיקייה לגיבוי."
  exit 1
fi
