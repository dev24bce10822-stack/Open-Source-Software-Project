# oss-audit-24BCE10822

## Open Source Software Audit — Capstone Project
**Course:** Open Source Software  
**Student:** Dev Wandalkar  
**Registration Number:** 24BCE10822  
**Chosen Software:** Apache HTTP Server (Apache License 2.0)

---

## Project Overview

This repository contains all shell scripts and supporting materials for the **Open Source Audit** capstone project. The audit examines **Apache HTTP Server**, its origin, philosophy, licensing, Linux footprint, ecosystem, and comparison with proprietary alternatives.

---

## Repository Structure

```
oss-audit-24BCE10822/
├── script1.sh      # System Identity Report
├── script2.sh      # FOSS Package Inspector
├── script3.sh      # Disk and Permission Auditor
├── script4.sh      # Log File Analyzer
├── script5.sh      # Open Source Manifesto Generator
├── README.md       # This file
```

---

## Scripts Description

### Script 1 - System Identity Report
**File:** `script1.sh`

Displays a formatted audit panel with system information: Linux distro name, kernel version, logged-in user, home directory, uptime, current date/time, and a note identifying the GPL license under which Linux is distributed, alongside the chosen software — Apache HTTP Server.

**Concepts used:** Variables, `echo`, command substitution `$()`, `grep` with `cut` and `tr` for distro detection, basic output formatting.

---

### Script 2 - FOSS Package Inspector
**File:** `script2.sh`

Checks whether the `apache2` package is installed on the system using `dpkg`, prints its version and package summary, and displays a philosophy note about the package using a `case` statement. Supports notes for other common FOSS packages as well.

**Concepts used:** `if-then-else`, `case` statement, `dpkg -l`, pipes with `grep`, hardcoded package variable.

---

### Script 3 - Disk and Permission Auditor
**File:** `script3.sh`

Loops through a predefined list of important system directories and reports the disk space used by each, along with the owner, group, and permission string. Also performs a dedicated check on the Apache configuration directory `/etc/apache2`.

**Concepts used:** `for` loop over arrays, `du -sh`, `ls -ld`, `awk` to extract fields, conditional directory existence checks.

---

### Script 4 - Log File Analyzer
**File:** `script4.sh`

Reads a log file line by line, counts how many lines contain a specified keyword (default: `error`), and prints a summary report with the last 5 matching lines. Includes retry logic if the file is found to be empty on the first check.

**Concepts used:** `while read` loop, `if-then`, counter variables `$(())`, command-line arguments (`$1`, `$2`), `grep`, `tail`, `sleep`-based retry logic.

---

### Script 5 - Open Source Manifesto Generator
**File:** `script5.sh`

Interactively asks the user three questions about their open-source values and composes a personalised open-source philosophy statement using their answers along with the current date and system username. The manifesto is saved to a `.txt` file named after the current user.

**Concepts used:** `read -p` for user input, string interpolation into output, file writing with `>`, `date` command, `whoami`, alias concept demonstration.

---

## How to Run Each Script on Linux

### Prerequisites
- A Linux system (Kali Linux or Ubuntu recommended)
- Bash shell (version 4.0 or higher — check with `bash --version`)
- Apache HTTP Server installed (`sudo apt install apache2 -y`)

### Step 1 - Clone the repository
```bash
git clone https://github.com/Xylarian/oss-audit-24BCE10822.git
cd oss-audit-24BCE10822
```

### Step 2 - Install Apache HTTP Server
```bash
sudo apt update
sudo apt install apache2 -y
```

### Step 3 - Make scripts executable
```bash
chmod +x script1.sh
chmod +x script2.sh
chmod +x script3.sh
chmod +x script4.sh
chmod +x script5.sh
```

### Step 4 - Run each script

**Script 1 - System Identity Report**
```bash
./script1.sh
```
No arguments needed. Displays system information and audit details automatically.

---

**Script 2 - FOSS Package Inspector**
```bash
./script2.sh
```
No arguments needed. Inspects the `apache2` package by default and prints its details and philosophy note.

---

**Script 3 - Disk and Permission Auditor**
```bash
# Run as normal user
./script3.sh

# Run with sudo for complete directory size reporting
sudo ./script3.sh
```
No arguments needed. Audits standard system directories and the Apache config path automatically.

---

**Script 4 - Log File Analyzer**
```bash
# Basic usage - search for 'error' in syslog (default keyword)
./script4.sh /var/log/syslog

# Search for a specific keyword
./script4.sh /var/log/syslog warning
./script4.sh /var/log/auth.log failed

# On Kali Linux
./script4.sh /var/log/kern.log error
```

---

**Script 5 - Open Source Manifesto Generator**
```bash
./script5.sh
```
Interactive - will prompt you for three answers. The manifesto is saved to `manifesto_<username>.txt` in the current working directory.

---

## Dependencies

All scripts use only standard Linux utilities available on any Debian/Ubuntu-based distribution:

| Utility  | Purpose                        | Available By Default     |
|----------|--------------------------------|--------------------------|
| `bash`   | Shell interpreter              | Yes                      |
| `uname`  | Kernel/OS info                 | Yes                      |
| `whoami` | Current user                   | Yes                      |
| `uptime` | System uptime                  | Yes                      |
| `date`   | Date/time                      | Yes                      |
| `du`     | Disk usage                     | Yes                      |
| `ls`     | File/directory info            | Yes                      |
| `awk`    | Text processing                | Yes                      |
| `grep`   | Pattern matching               | Yes                      |
| `tail`   | Last N lines of output         | Yes                      |
| `dpkg`   | Package info (Debian systems)  | On Debian/Ubuntu/Kali    |
| `sleep`  | Retry delay                    | Yes                      |

No external packages need to be installed beyond Apache HTTP Server itself.

---

## About Apache HTTP Server (Audited Software)

Apache HTTP Server is a free, open-source, cross-platform web server first released in 1995. It is maintained by the **Apache Software Foundation (ASF)** and distributed under the **Apache License 2.0**, an OSI-approved permissive license that allows use in both open-source and proprietary software.

Key facts:
- **License:** Apache License 2.0 (permissive, OSI-approved)
- **Repository:** https://github.com/apache/httpd
- **Governance:** Apache Software Foundation (ASF)
- **Linux package name:** `apache2` (Debian/Ubuntu) / `httpd` (RHEL/Fedora)
- **Default config directory:** `/etc/apache2`

---

## Academic Integrity Note

All scripts in this repository are original work written by Dev Wandalkar, 24BCE10822. All comments and logic are the author's own. Scripts are designed to run on real Linux systems and demonstrate genuine understanding of shell scripting concepts as required by the Open Source Software course rubric.
