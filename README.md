# 💾 Interactive Backup Script (Bash)

This Bash script allows you to back up any folder of your choice by asking you for the source and destination paths at runtime.  
The backup is saved as a compressed `.tar.gz` file with a unique timestamp in the filename.

---

## ✨ Features

- 📂 Interactive: Prompts for source and destination folders
- 🕒 Automatically adds a timestamp to backup filename
- 📦 Compresses backups using `tar + gzip`
- 🧠 Creates the destination folder if it doesn't exist
- 🛡️ Safe and easy to use

---

## 🚀 How to Use

### 1. Make the script executable:
```
chmod +x backup_script.sh
```

### 2. Run the script:
```
./backup_script.sh
```

### 3. You'll be asked:
- 📍 What directory to back up  
- 📍 Where to save the backup  

Example:
```
Enter the full path of the folder to back up: /home/user/documents
Enter the full path where the backup should be saved: /home/user/backups
```

---

## 🧪 Output Example

```
🔄 Creating backup...
backup-20250804175022.tar.gz
✅ Backup completed successfully: /home/user/backups/backup-20250804175022.tar.gz
```

---

## 🔍 How it Works

Internally, the script runs:

```bash
tar -czvf backup-<timestamp>.tar.gz /your/source/folder
```

- `-c` → Create archive  
- `-z` → Compress with gzip  
- `-v` → Verbose output  
- `-f` → Save to file

---

## 🧰 Notes

- Both paths must be absolute (e.g., `/home/user/folder`)
- Source must exist, destination will be created if missing
- Great for scheduled tasks via `cron`

---

🧷 Lightweight. Flexible. Interactive.
