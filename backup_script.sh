#!/bin/bash

SOURCE_DIR="$1"
BACKUP_DIR="$HOME/backups"

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