
# Day 14 — Bash Debugging, Logging & Configuration

Day 14 focuses on writing reliable Bash scripts using strict mode, debugging options, structured logging, environment-based configuration, and error diagnostics. These concepts are essential for identifying failures, managing application settings, and improving the reliability of automation scripts in Linux and DevOps environments.

## 📌 Topics Covered

- Bash strict mode using `set -euo pipefail`
- Command tracing and debugging using `set -x`
- Reusable logging functions and severity levels
- Timestamped logs and output redirection
- Environment variables and default configuration values
- Configuration validation using `case`
- Error handling using `trap ERR`
- Exit codes, failed commands, and line-number diagnostics

## 📂 Scripts

| # | Script | Concepts |
|---|---|---|
| 66 | `66-bash-strict-mode.sh` | Strict mode, unset variables, pipeline failures, and directory creation |
| 67 | `67-bash-debugging.sh` | Command tracing, expanded arguments, and debugging control |
| 68 | `68-logging-levels.sh` | Logging functions, timestamps, severity levels, and `tee` |
| 69 | `69-environment-configuration.sh` | Environment variables, default values, and configuration validation |
| 70 | `70-error-trap-diagnostics.sh` | Error traps, exit codes, failed commands, and line-number diagnostics |

## 🧠 Key Learnings

### 1. Bash Strict Mode

Strict mode helps detect common scripting mistakes and prevent certain failures from going unnoticed.

**Important options:**

- `set -e` — Exits when an eligible command fails.
- `set -u` — Treats references to unset variables as errors.
- `set -o pipefail` — Makes a pipeline return a failure status when an eligible command within it fails.

**Example:**

```bash
#!/usr/bin/env bash

set -euo pipefail

APP_NAME="demo-app"

echo "Application: $APP_NAME"
mkdir -p ./deployment-output

echo "Checks completed successfully."
```

This example enables strict mode, displays the application name, and creates the output directory if it does not exist.

Strict mode has exceptions, so critical operations should still use explicit error handling where necessary.

### 2. Debugging with Bash Options

Bash provides command-tracing options that help developers understand how scripts execute.

**Important commands:**

| Command | Purpose |
|---|---|
| `set -x` | Enables command tracing |
| `set +x` | Disables command tracing |
| `bash -n script.sh` | Checks syntax without executing the script |
| `bash -x script.sh` | Runs a script with command tracing enabled |

**Example:**

```bash
#!/usr/bin/env bash

APP_NAME="nginx"
SERVICE_STATUS="running"

set -x

echo "Application: $APP_NAME"
echo "Service status: $SERVICE_STATUS"

set +x

echo "Debugging completed."
```

When tracing is enabled, Bash prints commands and their expanded arguments to standard error before execution.

This is useful for troubleshooting incorrect variable values, unexpected command execution, and deployment failures.

Avoid tracing scripts that handle passwords, access tokens, or other sensitive values.

### 3. Logging Levels in Bash

Logging functions make script output easier to read, filter, and troubleshoot.

**Common logging levels:**

| Level | Purpose |
|---|---|
| `INFO` | Reports normal operations |
| `WARN` | Reports unexpected conditions that may require attention |
| `ERROR` | Reports failures or serious problems |

**Example:**

```bash
#!/usr/bin/env bash

set -euo pipefail

LOG_FILE="./application.log"

log() {
    local level="$1"
    shift

    local timestamp
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')

    printf '[%s] [%s] %s\n' "$timestamp" "$level" "$*" |
        tee -a "$LOG_FILE"
}

log INFO "Application startup initiated"
log WARN "Configuration file not found"
log INFO "Application checks completed"
```

**Important concepts:**

- `local` — Declares variables local to a function.
- `shift` — Removes the first positional argument.
- `date` — Generates a timestamp.
- `printf` — Formats log messages.
- `tee -a` — Displays output and appends it to a log file.

Logging is useful for tracking scheduled tasks, deployments, maintenance scripts, and application startup procedures.

### 4. Environment-Based Configuration

Environment variables allow the same script to run with different settings without modifying its source code.

**Example:**

```bash
#!/usr/bin/env bash

set -euo pipefail

APP_NAME="${APP_NAME:-demo-app}"
ENVIRONMENT="${ENVIRONMENT:-development}"
PORT="${PORT:-8080}"

case "$ENVIRONMENT" in
    development|testing|production)
        printf 'Application: %s\n' "$APP_NAME"
        printf 'Environment: %s\n' "$ENVIRONMENT"
        printf 'Port: %s\n' "$PORT"
        ;;
    *)
        printf 'Invalid environment: %s\n' "$ENVIRONMENT" >&2
        exit 1
        ;;
esac
```

**Important concepts:**

- `${VARIABLE:-default}` — Uses a default value when the variable is unset or empty.
- `case` — Selects an execution path based on a value.
- `>&2` — Sends output to standard error.
- `exit 1` — Terminates the script with a failure status.

**Example execution:**

```bash
APP_NAME=nginx ENVIRONMENT=production PORT=9090 ./69-environment-configuration.sh
```

Environment-based configuration is useful when deploying applications across development, testing, and production environments.

Configuration values should be validated before being used, and secrets should be handled through appropriate secret-management mechanisms.

### 5. Error Trapping and Diagnostics

The `trap` command allows a script to execute a handler when certain events occur, including eligible command failures.

**Example:**

```bash
#!/usr/bin/env bash

set -Eeuo pipefail

handle_error() {
    local exit_code="$1"
    local line_number="$2"
    local failed_command="$3"

    printf '[ERROR] Exit code: %s\n' "$exit_code" >&2
    printf '[ERROR] Line: %s\n' "$line_number" >&2
    printf '[ERROR] Command: %s\n' "$failed_command" >&2
}

trap 'handle_error "$?" "$LINENO" "$BASH_COMMAND"' ERR

CONFIG_FILE="./app-config.conf"

cat "$CONFIG_FILE"

echo "Configuration loaded successfully."
```

**Important concepts:**

- `trap` — Registers a handler for specified events.
- `ERR` — Runs the handler for eligible command failures.
- `set -E` — Enables inheritance of the `ERR` trap in functions and certain other contexts.
- `$?` — Represents the most recent command's exit status.
- `$LINENO` — Provides line-number information.
- `$BASH_COMMAND` — Identifies the command associated with the trap.

If the configuration file does not exist, `cat` fails and the handler reports diagnostic information.

`ERR` traps do not cover every failure scenario. Explicit error checks are still recommended for critical commands and operations.

## 🔧 Important Commands / Syntax Used

| Command / Syntax | Purpose |
|---|---|
| `set -euo pipefail` | Enables strict-mode checks |
| `set -x` | Enables command tracing |
| `set +x` | Disables command tracing |
| `bash -n script.sh` | Checks Bash syntax |
| `bash -x script.sh` | Runs a script with tracing |
| `printf` | Formats output |
| `date` | Generates timestamps |
| `tee -a file.log` | Displays and appends output |
| `${VAR:-default}` | Provides a fallback value |
| `case` | Performs multi-branch value matching |
| `trap` | Registers event handlers |
| `$?` | Retrieves an exit status |
| `$LINENO` | Provides line-number information |
| `$BASH_COMMAND` | Identifies the associated command |
| `>&2` | Redirects output to standard error |
| `exit 1` | Exits with a failure status |

## 🚀 How to Run the Scripts

Navigate to the `Day-14` directory:

```bash
cd Day-14
```

Make the scripts executable:

```bash
chmod +x 66-bash-strict-mode.sh 67-bash-debugging.sh 68-logging-levels.sh 69-environment-configuration.sh 70-error-trap-diagnostics.sh
```

Run the scripts individually:

```bash
./66-bash-strict-mode.sh
./67-bash-debugging.sh
./68-logging-levels.sh
./69-environment-configuration.sh
./70-error-trap-diagnostics.sh
```

### Testing Notes

- Run the strict-mode script and verify that the output directory is created.
- Observe the trace output from the debugging script.
- Inspect `application.log` after running the logging script.
- Run the configuration script with different environment variables and test an invalid environment.
- Run the diagnostics script with and without `app-config.conf` to observe successful execution and error handling.

Review scripts before running them, especially those that create files, change configuration, or execute commands that could affect your system.

## 🧪 Testing Environment

- **Operating System:** Ubuntu on WSL2
- **Shell:** Bash
- **Architecture:** x86_64
- **Tools:** Bash, standard Linux command-line utilities, `date`, and `tee`

## 🎯 Practical Applications

These concepts are useful for:

- **Deployment Automation:** Detecting command failures and tracing deployment steps.
- **Log Management:** Recording application events with timestamps and severity levels.
- **Environment Management:** Using different configuration values for development, testing, and production.
- **Troubleshooting:** Identifying failed commands and gathering diagnostic information.
- **Scheduled Jobs:** Logging the output of cron jobs and other automated tasks.
- **DevOps Pipelines:** Improving the reliability and maintainability of shell-based automation.

## ✅ Day 14 Progress

- [x] Script 66 — Bash Strict Mode
- [x] Script 67 — Bash Debugging
- [x] Script 68 — Logging Levels
- [x] Script 69 — Environment-Based Configuration
- [x] Script 70 — Error Trapping and Diagnostics

**Progress: 5/5 scripts documented.**

## 🚀 Key Takeaway

Day 14 strengthened my understanding of reliable Bash scripting through strict-mode checks, debugging, structured logging, environment-based configuration, and error diagnostics. These techniques help make automation scripts easier to maintain, troubleshoot, and use in real-world Linux and DevOps environments.

**Next:** Day 15 — Continue building practical Bash scripting and Linux automation skills.

