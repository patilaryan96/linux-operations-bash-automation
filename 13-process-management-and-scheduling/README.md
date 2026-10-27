# Day 13 — Process & System Management

Day 13 focuses on Linux process management, signal handling, background execution, system monitoring, and task scheduling. These concepts are essential for automating repetitive tasks, managing long-running processes, handling script interruptions safely, and monitoring system resources in real-world DevOps environments.

## 📌 Topics Covered

- Background and foreground process management
- Process IDs (PID) and job control
- Signal handling using `trap`
- Persistent background execution using `nohup`
- Disk usage and memory monitoring
- Process monitoring using `ps` and `top`
- Automated task scheduling using `cron` and `crontab`

## 📂 Scripts

| # | Script | Concepts |
|---|---|---|
| 61 | `61-job-control.sh` | Background jobs, `$!`, `jobs`, and `wait` |
| 62 | `62-signal-handling.sh` | Signal handling, `trap`, cleanup, and safe termination |
| 63 | `63-nohup-execution.sh` | Detached execution, `nohup`, and output redirection |
| 64 | `64-system-monitor.sh` | Disk, memory, directory, and process monitoring |
| 65 | `65-cron-automation.sh` | Viewing and managing cron jobs |

## 🧠 Key Learnings

### 1. Job Control and Background Processes

Linux allows commands to run in the background while the terminal remains available for other tasks.

**Important commands and variables:**

- `&` — Runs a command in the background.
- `$!` — Stores the PID of the last background process.
- `jobs -l` — Lists background jobs and their PIDs in the current shell.
- `wait` — Waits for a background process to finish.

**Example:**

```bash
sleep 10 &
PID=$!

echo "Background process ID: $PID"
wait "$PID"

echo "Process completed"
```

### 2. Signal Handling Using `trap`

The `trap` command allows scripts to respond to signals and perform cleanup operations before exiting.

**Important signals:**

- `SIGINT` — Usually sent when the user presses `Ctrl+C`.
- `SIGTERM` — Requests a process to terminate.
- `EXIT` — Executes a handler when the shell script exits.

**Example:**

```bash
#!/bin/bash

cleanup() {
    echo "Cleaning up temporary files..."
}

trap cleanup EXIT

echo "Script is running..."
sleep 5
```

This example executes the cleanup function when the script exits normally or due to a handled interruption.

### 3. Persistent Background Execution Using `nohup`

The `nohup` command allows a process to ignore the hangup signal (`SIGHUP`), helping it continue after the terminal session closes.

**Example:**

```bash
nohup bash -c 'while true; do date; sleep 10; done' > output.log 2>&1 &
```

- `nohup` — Ignores the hangup signal.
- `>` — Redirects standard output to a log file.
- `2>&1` — Redirects standard error to the same file.
- `&` — Starts the command in the background.

Use `ps` to locate the process and `kill` to stop it when required.

### 4. System Monitoring

Linux provides built-in commands to monitor disk usage, memory consumption, and running processes.

| Command | Purpose |
|---|---|
| `df -h` | Displays filesystem disk usage |
| `du -sh directory` | Shows the total size of a directory |
| `ps aux` | Lists running processes |
| `ps aux --sort=-%cpu` | Sorts processes by CPU usage |
| `free -h` | Displays memory usage |
| `top` | Provides a live view of system processes and resource usage |

These commands are useful for identifying resource usage and troubleshooting Linux servers.

### 5. Task Scheduling Using Cron

Cron automates the execution of commands and scripts at scheduled intervals.

**Cron syntax:**

```text
* * * * * command
│ │ │ │ │
│ │ │ │ └── Day of week (0-6)
│ │ │ └──── Month (1-12)
│ │ └────── Day of month (1-31)
│ └──────── Hour (0-23)
└────────── Minute (0-59)
```

**Example:**

```cron
*/5 * * * * /home/user/script.sh
```

This schedules the script to run every five minutes.

**Useful commands:**

```bash
crontab -l    # List scheduled jobs
crontab -e    # Edit scheduled jobs
```

Always use the correct absolute script path and ensure the script has the required permissions.

## 🔧 Important Commands / Syntax Used

| Command / Syntax | Purpose |
|---|---|
| `command &` | Run a command in the background |
| `$!` | Retrieve the last background process PID |
| `jobs -l` | List current shell jobs |
| `wait "$PID"` | Wait for a background process |
| `trap` | Handle signals and perform cleanup |
| `nohup` | Run commands that can survive terminal disconnection |
| `df -h` | Check filesystem usage |
| `du -sh` | Check directory size |
| `ps aux` | Inspect running processes |
| `free -h` | Check memory usage |
| `top` | Monitor processes in real time |
| `crontab -l` | List cron jobs |
| `crontab -e` | Edit cron jobs |
| `kill "$PID"` | Send a signal to a process |

## 🚀 How to Run the Scripts

Navigate to the `Day-13` directory:

```bash
cd Day-13
```

Make the scripts executable:

```bash
chmod +x 61-job-control.sh 62-signal-handling.sh 63-nohup-execution.sh 64-system-monitor.sh 65-cron-automation.sh
```

Run the scripts individually:

```bash
./61-job-control.sh
./62-signal-handling.sh
./63-nohup-execution.sh
./64-system-monitor.sh
./65-cron-automation.sh
```

**Testing notes:**

- Press `Ctrl+C` while running the signal-handling script to test interruption handling.
- Check background jobs using `jobs -l`.
- Inspect system resources using the system-monitor script.
- Review cron entries using `crontab -l`.
- Test `nohup` with a short-running command and verify its output log.

Review each script before running it, especially scripts that modify crontab entries or create long-running background processes.

## 🧪 Testing Environment

- **Operating System:** Ubuntu on WSL2
- **Shell:** Bash
- **Architecture:** x86_64
- **Tools:** Linux process utilities, `nohup`, and `cron`/`crontab` where available

*Note: Cron services may require separate installation or configuration in WSL2 or other Linux environments.*

## ✅ Day 13 Progress

- [x] Script 61 — Job Control
- [x] Script 62 — Signal Handling
- [x] Script 63 — Persistent Background Execution
- [x] Script 64 — System Monitoring
- [x] Script 65 — Cron Automation

**Progress: 5/5 scripts documented.**

## 🚀 Key Takeaway

Day 13 strengthened my understanding of Linux process and system management. I learned how to control background jobs, handle signals safely, run detached processes, monitor system resources, and schedule recurring tasks. These skills are important for building reliable Bash automation scripts and managing Linux systems in DevOps environments.
