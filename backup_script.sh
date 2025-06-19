#!/bin/bash

SOURCE_DIR="$1"
BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

if [ -z "$SOURCE_DIR" ]; then
  echo "שגיאה: נא לציין נתיב לתיקייה לגיבוי."
  exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
  echo "שגיאה: התיקייה '$SOURCE_DIR' לא קיימת."
  exit 1
fi

if [ ! -r "$SOURCE_DIR" ]; then
  echo "שגיאה: אין הרשאות קריאה לתיקייה '$SOURCE_DIR'."
  exit 1
fi

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"
echo "✅ גיבוי נוצר: $BACKUP_NAME"