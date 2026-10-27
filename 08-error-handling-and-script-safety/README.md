# Day 08 - Exit Status, Error Handling & Bash Safety

## Overview

Day 08 focuses on handling command failures, validating files, creating compressed backups, and making Bash scripts safer and more reliable.

## Topics Covered

* Exit status and `$?`
* Checking command success or failure
* File validation
* Error handling with `exit`
* Bash safety options
* `tar` and gzip compression
* Command substitution
* Practical file backup automation

## Scripts

| Script                        | Description                                     |
| ----------------------------- | ----------------------------------------------- |
| `36-exit-status.sh`           | Demonstrates command exit status using `$?`     |
| `37-command-success-check.sh` | Checks whether a command executes successfully  |
| `38-file-validation.sh`       | Validates whether a file exists and is readable |
| `39-error-handling.sh`        | Demonstrates handling command failures          |
| `40-safe-backup.sh`           | Creates a compressed `.tar.gz` backup of a file |

## Key Concepts

### Exit Status

```bash
$?
```

Returns the exit status of the previous command.

* `0` → Success
* Non-zero → Failure

### Error Handling

```bash
if command; then
    # Success
else
    # Failure
fi
```

Bash can directly use a command's exit status in an `if` condition.

### File Validation

```bash
[[ -e "$file" ]]
[[ -f "$file" ]]
[[ -r "$file" ]]
```

* `-e` → File exists
* `-f` → Regular file
* `-r` → File is readable

### Exit Codes

```bash
exit 0
```

Indicates successful execution.

```bash
exit 1
```

Indicates failure.

### Bash Safety

```bash
set -e
set -u
set -o pipefail
```

These options help detect errors and make scripts more reliable.

### Compressed Backup

```bash
tar -czf backup/file.tar.gz file
```

Creates a gzip-compressed TAR archive.

### Command Substitution

```bash
$(command)
```

Runs a command and uses its output as part of another command.

Example:

```bash
$(basename "$file")
```

## Practical Application

The final scripts combine multiple Bash concepts to create safer and more practical automation, including compressed file backups and command failure handling.

## Testing Environment

* OS: Ubuntu / WSL2
* Shell: Bash
* User: root / Linux user
* Editor: Vim

## Day 08 Progress

```text
Exit Status
    ↓
Command Success Check
    ↓
File Validation
    ↓
Error Handling
    ↓
Bash Safety
    ↓
Compressed File Backup
```

## Key Takeaway

Day 08 focused on making Bash scripts more **reliable, safe, and practical** by handling failures, validating input, checking exit codes, and automating file backups.

