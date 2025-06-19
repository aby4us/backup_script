#!/bin/bash

SOURCE_DIR="$1"

if [ -z "$SOURCE_DIR" ]; then
  echo "שגיאה: נא לציין נתיב לתיקייה לגיבוי."
  exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
  echo "שגיאה: התיקייה '$SOURCE_DIR' לא קיימת."
  exit 1
fi
