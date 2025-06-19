#!/bin/bash

SOURCE_DIR="$1"
BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

# בדיקה אם התקבל נתיב
if [ -z "$SOURCE_DIR" ]; then
  echo "שגיאה: נא לציין נתיב לתיקייה לגיבוי."
  exit 1
fi

# בדיקה אם התיקייה קיימת
if [ ! -d "$SOURCE_DIR" ]; then
  echo "שגיאה: התיקייה '$SOURCE_DIR' לא קיימת."
  exit 1
fi

# בדיקה אם יש הרשאות קריאה
if [ ! -r "$SOURCE_DIR" ]; then
  echo "שגיאה: אין הרשאות קריאה לתיקייה '$SOURCE_DIR'."
  exit 1
fi

# יצירת תיקיית גיבוי אם לא קיימת
mkdir -p "$BACKUP_DIR"

# יצירת גיבוי דחוס
tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"
echo "✅ גיבוי נוצר: $BACKUP_NAME"

# ניקוי גיבויים ישנים – שמירה של 5 האחרונים בלבד
cd "$BACKUP_DIR"
ls -1t backup_*.tar.gz | tail -n +6 | xargs -d '\n' -r rm --