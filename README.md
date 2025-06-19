# Backup Script – Bash גיבוי אוטומטי

סקריפט פשוט לביצוע גיבוי אוטומטי מתיקייה נבחרת לתיקיית גיבוי אישית, עם אפשרות לדחיסה ושמירה של עד 5 גיבויים אחרונים.

##  מאפיינים

- קלט: נתיב לתיקייה לגיבוי
- בדיקת קיום והרשאות לתיקייה
- דחיסת הגיבוי (`tar.gz`)
- חותמת זמן בשם הגיבוי
- מחיקת גיבויים ישנים – שומר רק את 5 האחרונים
- תמיכה בהרצה אוטומטית באמצעות `cron`

##  התקנה

1. שכפול הפרויקט:
   ```bash
   git clone https://github.com/youruser/backup-script.git
   cd backup-script
   chmod +x backup_script.sh
   ```

2. הרצה ידנית:
   ```bash
   ./backup_script.sh /נתיב/לתיקייה
   ```

3. תזמון עם cron:
   ```bash
   crontab -e
   # הוסף:
   0 2 * * * /נתיב/ל-scripts/backup_script.sh /נתיב/לתיקייה >> ~/backup.log 2>&1
   ```

##  דרישות

- מערכת לינוקס/יוניקס
- Bash, cron, tar, gzip

##  ניהול גרסאות

הפרויקט מנוהל באמצעות Git ו־GitHub.

```bash
git add .
git commit -m "הוספת סקריפט ו-README"
git push origin main
```
