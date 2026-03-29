# OPEN SOURCE AUDIT PROJECT
## Linux Kernel

------------------------------------------------------------

### Student Details

| Field | Information |
|------|------------|
| Name | Ashmit Basu |
| Registration Number | 24BCE11037 |
| Course | Open Source Software (Linux Administration) |
| Chosen Software | Linux Kernel |

------------------------------------------------------------

## Project Overview

### About This Project

This project presents a detailed audit of the Linux Kernel, focusing on both its technical structure and the philosophy behind open-source development.

The Linux Kernel serves as the core component of Linux-based operating systems and is widely used across servers, mobile devices, and large-scale computing systems.

The aim of this project is not only to understand how the kernel functions, but also to explore the ideas of collaboration, transparency, and shared development that define open source.

------------------------------------------------------------

## Technical Environment

| Component | Details |
|----------|--------|
| Platform | Windows Subsystem for Linux (WSL2) |
| Distribution | Ubuntu |
| Kernel Version | 6.6.x (WSL2 Kernel) |
| Shell | Bash |
| Architecture | x86_64 |

------------------------------------------------------------

## Shell Scripts

| No. | Script Name | Description | Concepts Used |
|----|------------|------------|--------------|
| 1 | System Identity Report.sh | Displays system details such as kernel version, distribution, uptime, and memory usage | Variables, command substitution, system commands |
| 2 | FOSS Package Inspector.sh | Inspects kernel-related components like headers, modules, and packages | Conditional statements, lsmod, grep |
| 3 | Disk and permission auditor.sh | Audits key system directories and checks permissions and disk usage | Arrays, loops, du, ls -ld, awk |
| 4 | Log File Analyzer.sh | Analyzes system logs for keywords like errors or warnings | While loop, counters, command-line arguments |
| 5 | Manifesto.sh | Generates a personalized open-source manifesto based on user input | read, file handling, string formatting |

------------------------------------------------------------

## How to Run

### Requirements

- Ubuntu (WSL2 or native Linux)
- Bash shell
- Basic terminal knowledge
- Sudo access (for some scripts)

------------------------------------------------------------

### Setup

cd "/mnt/c/Users/HP/OneDrive/Desktop/Open Source Software (Linux)/Scripts"
sed -i 's/\r$//' *.sh
chmod +x *.sh

------------------------------------------------------------

### Running Scripts

./System\ Identity\ Report.sh
./FOSS\ Package\ Inspector.sh
./Disk\ and\ permission\ auditor.sh
./Log\ File\ Analyzer.sh

Optional:
./Log\ File\ Analyzer.sh warning

./Manifesto.sh

------------------------------------------------------------

## Learning Outcomes

Through this project, I gained:

- Practical experience with Linux commands and Bash scripting  
- Understanding of system-level components like the kernel and modules  
- Insight into how open-source software is developed and maintained  
- Awareness of the philosophy behind collaborative software development  

------------------------------------------------------------

## Open Source Perspective

The Linux Kernel represents one of the strongest examples of open-source success. It demonstrates how global collaboration can lead to highly efficient, secure, and scalable software systems.

This project reflects both the technical and philosophical importance of open source in modern computing.

------------------------------------------------------------
