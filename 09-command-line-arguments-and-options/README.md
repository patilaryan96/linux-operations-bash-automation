# Day 09 - Command-Line Arguments & CLI Options

## Overview

Day 09 focuses on passing arguments to Bash scripts, validating command-line input, processing multiple arguments, and creating simple command-line tools using `getopts`.

## Topics Covered

* Command-line arguments
* `$0`, `$1`, `$2` and `$#`
* Argument validation
* Processing multiple arguments
* `shift`
* `getopts`
* `OPTARG`
* `case` statements with CLI options
* Building a simple system information CLI tool

## Scripts

| Script                      | Description                                       |
| --------------------------- | ------------------------------------------------- |
| `41-script-arguments.sh`    | Demonstrates basic command-line arguments         |
| `42-argument-validation.sh` | Validates whether required arguments are provided |
| `43-process-arguments.sh`   | Processes multiple arguments using `shift`        |
| `44-cli-options.sh`         | Demonstrates command-line options using `getopts` |
| `45-system-info.sh`         | Creates a system information CLI tool             |

## Key Concepts

### Command-Line Arguments

Arguments can be passed directly when running a script.

```bash
./script.sh Aryan AWS
```

Inside the script:

```bash
$0
$1
$2
$#
```

* `$0` → Script name
* `$1` → First argument
* `$2` → Second argument
* `$#` → Number of arguments

### Argument Validation

```bash
if [ $# -eq 0 ]; then
    echo "No argument provided."
    exit 1
fi
```

Checks whether the required arguments were provided.

### Processing Multiple Arguments

```bash
while [ $# -gt 0 ]; do
    echo "$1"
    shift
done
```

`shift` moves the next argument into `$1`.

### Command-Line Options

Bash can process options using `getopts`.

```bash
while getopts "n:r:" opt; do
    case $opt in
        n)
            name="$OPTARG"
            ;;
        r)
            role="$OPTARG"
            ;;
    esac
done
```

Here:

* `-n` → Name option
* `-r` → Role option
* `OPTARG` → Value passed to the option

Example:

```bash
./script.sh -n Aryan -r DevOps
```

### Case Statement

```bash
case $opt in
    i)
        # System information
        ;;
    h)
        # Help
        ;;
esac
```

`case` is useful for handling different command-line options.

### System Information

Bash commands can be combined to display useful system information.

```bash
hostname
whoami
uname -r
uptime -p
```

These can be used to create simple Linux administration and DevOps utilities.

## Practical Application

The final scripts combine command-line arguments, option handling, validation, functions, and Linux commands to create a practical system information CLI tool.

These concepts are useful when creating Bash automation scripts for Linux administration, deployment, monitoring, and DevOps tasks.

## Testing Environment

* OS: Ubuntu / WSL2
* Shell: Bash
* User: root / Linux user
* Editor: Vim

## Day 09 Progress

```text
Command-Line Arguments
        ↓
Argument Validation
        ↓
Multiple Arguments + shift
        ↓
getopts + CLI Options
        ↓
System Information CLI Tool
```

## Key Takeaway

Day 09 focused on making Bash scripts more **interactive and reusable** by accepting command-line arguments, validating input, processing multiple values, handling CLI options, and building a practical Linux system information tool.

