# Automating Common Administrative Tasks Using Bash Scripts

![Linux Automation](https://img.shields.io/badge/Linux-Automation-blue?style=flat-square)
![Bash Scripts](https://img.shields.io/badge/Bash-Scripts-green?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)

## 📜 Overview

This project provides a robust suite of **Bash scripts** to automate essential administrative tasks on Linux-based systems. Designed for system administrators, these scripts simplify repetitive, yet critical, operations, ensuring system reliability, enhanced performance, and reduced human errors.

By automating tasks such as log file cleanup, data backups, system updates, disk monitoring, and service management, this project helps streamline Linux system administration across single or multiple servers.

---

## 🚀 Features

- **Automatically Delete Old Log Files**: Frees up disk space by removing outdated log files.
- **Backup Critical Directories**: Compresses and backs up important files to prevent data loss.
- **Automate System Updates**: Keeps your systems up-to-date with the latest packages and patches.
- **Monitor Disk Usage**: Alerts you when disk usage crosses a user-defined threshold.
- **Ensure Service Availability**: Automatically restarts essential services if they fail.

---

## 📂 Scripts Included

1. **Log Cleanup Script** (`delete_old_logs.sh`)  
   Deletes log files older than a specified number of days.

2. **Backup Script** (`backup_important_dirs.sh`)  
   Creates compressed backups of critical directories.

3. **System Update Script** (`auto_update.sh`)  
   Updates and upgrades system packages automatically.

4. **Disk Monitoring Script** (`monitor_disk_usage.sh`)  
   Monitors disk usage and sends alerts when space is low.

5. **Service Check Script** (`check_and_restart_services.sh`)  
   Ensures critical services are running; restarts them if needed.

---

## 💻 Usage

### 1. Clone the Repository
```bash
git clone https://github.com/rohitbhanushali/Automating-Common-Administrative-Tasks-Using-Bash-Script-BYME.git
cd Automating-Common-Administrative-Tasks-Using-Bash-Script-BYME
```

### 2. Make Scripts Executable
```bash
chmod +x *.sh
```

### 3. Run the Scripts
- **Log Cleanup**:
  ```bash
  ./delete_old_logs.sh
  ```
- **Backup**:
  ```bash
  ./backup_important_dirs.sh
  ```
- **System Update**:
  ```bash
  ./auto_update.sh
  ```
- **Disk Monitoring**:
  ```bash
  ./monitor_disk_usage.sh
  ```
- **Service Check**:
  ```bash
  ./check_and_restart_services.sh
  ```

### 4. Automate with Cron Jobs
To schedule these scripts, add them to your system's cron jobs:
```bash
crontab -e
```
Example to run `delete_old_logs.sh` daily at midnight:
```cron
0 0 * * * /path/to/delete_old_logs.sh
```

---

## 📖 Prerequisites

- **Linux Environment**: Scripts are designed for Linux-based systems.
- **Bash Shell**: Ensure Bash is installed and accessible.
- **Root Privileges**: Some scripts may require `sudo` access for execution.

---

## 🤝 Contribution

Contributions are welcome! If you have ideas to improve these scripts or add new ones, feel free to:

1. Fork the repository.
2. Make your changes.
3. Submit a pull request.

---

## 🛡 License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute this software.

---

## 📧 Support

If you encounter any issues or have suggestions, feel free to open an issue in this repository or contact me at `rohitbhanushali@example.com`.

---

## 🌟 Acknowledgments

This project is inspired by the need to simplify and automate tedious administrative tasks, enabling system administrators to focus on strategic and high-priority objectives.