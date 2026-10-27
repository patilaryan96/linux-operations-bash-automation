
# Day 15 — Advanced Bash Scripting

Day 15 focuses on advanced Bash features that make scripts more flexible, efficient, and maintainable. The exercises cover associative arrays, parameter expansion, process substitution, custom file descriptors, and here-documents.

These concepts build on the fundamentals from previous days and prepare me for writing practical Linux and DevOps automation scripts.

## Topics Covered

- Associative arrays for key-value data storage
- Advanced parameter expansion for string and path manipulation
- Process substitution for comparing command outputs
- Custom file descriptors for separating output streams
- Here-documents for generating configuration files dynamically

## Scripts

| # | Script | Concepts |
|---|---|---|
| 71 | `71-associative-arrays.sh` | Associative arrays, key-value pairs, array iteration, and element counting |
| 72 | `72-advanced-parameter-expansion.sh` | Prefix and suffix removal, filename extraction, and string manipulation |
| 73 | `73-process-substitution.sh` | Process substitution, command output comparison, and `diff` |
| 74 | `74-custom-file-descriptors.sh` | Custom file descriptors, output redirection, and separate log files |
| 75 | `75-heredoc-template.sh` | Here-documents, variable interpolation, and configuration file generation |

## Key Learnings

### 1. Associative Arrays

Associative arrays store values against named keys instead of numeric indexes.

```bash
declare -A services=(
    [nginx]=80
    [ssh]=22
)
```

- `${!services[@]}` retrieves the keys.
- `${services[$service]}` retrieves a value.
- `${#services[@]}` counts the entries.

Useful for storing service configurations, application ports, and environment settings.

### 2. Advanced Parameter Expansion

Bash parameter expansion extracts and transforms values without requiring external utilities.

```bash
IMAGE="nginx:1.27.3"

echo "${IMAGE%%:*}"
echo "${IMAGE##*:}"
```

Output:

```text
nginx
1.27.3
```

- `${VAR%%PATTERN}` removes the longest matching suffix.
- `${VAR##PATTERN}` removes the longest matching prefix.
- `${VAR%PATTERN}` removes the shortest matching suffix.
- `${VAR#PATTERN}` removes the shortest matching prefix.

Useful for extracting filenames, extensions, image names, and version tags.

### 3. Process Substitution

Process substitution allows command output to be treated like a file.

```bash
diff -u <(printf '%s\n' nginx ssh | sort) <(printf '%s\n' nginx docker | sort)
```

- `<(command)` exposes command output through a file-like interface.
- `diff -u` compares the two inputs and displays differences.

Useful for comparing generated lists, configuration values, and command outputs without creating intermediate files.

### 4. Custom File Descriptors

File descriptors provide a way to direct output to different destinations.

```bash
exec 3> output.log
exec 4> errors.log

printf 'Normal output\n' >&3
printf 'Error output\n' >&4

exec 3>&-
exec 4>&-
```

- `3>` opens a custom file descriptor for output.
- `>&3` sends output to descriptor 3.
- `>&4` sends output to descriptor 4.
- `>&-` closes the descriptor.

Useful for separating normal execution results from diagnostic messages.

### 5. Here-Documents

Here-documents supply multiple lines of text to a command and can generate configuration files.

```bash
APP_NAME="demo-app"
APP_PORT=8080

cat > app.conf <<EOF
application=$APP_NAME
port=$APP_PORT
EOF
```

- `<<EOF` begins a here-document.
- `EOF` marks its end.
- Variables are expanded when the delimiter is unquoted.
- `>` writes the generated content to a file.

Useful for creating application configuration files and generating text templates during automation.

## How to Run the Scripts

Navigate to the Day-15 directory:

```bash
cd Day-15
```

Make the scripts executable:

```bash
chmod +x 71-associative-arrays.sh 72-advanced-parameter-expansion.sh 73-process-substitution.sh 74-custom-file-descriptors.sh 75-heredoc-template.sh
```

Run each script individually:

```bash
./71-associative-arrays.sh
./72-advanced-parameter-expansion.sh
./73-process-substitution.sh
./74-custom-file-descriptors.sh
./75-heredoc-template.sh
```

Alternatively, execute a script using Bash:

```bash
bash 71-associative-arrays.sh
```

## Testing Notes

- Verify that associative arrays display service names and their corresponding ports.
- Check that parameter expansion extracts the expected image name, tag, filename, and directory.
- Modify the service lists in Script 73 to observe how `diff` reports differences.
- Inspect `command-output.log` and `command-errors.log` after running Script 74.
- Inspect `app-template.conf` after running Script 75.

## Testing Environment

- **Operating System:** Ubuntu on WSL2
- **Shell:** Bash
- **Architecture:** x86_64
- **Tools:** Bash, `printf`, `diff`, `sort`, and standard Linux utilities

Associative arrays require Bash 4.0 or later. Process substitution is supported by Bash and is not POSIX `sh` syntax.

## Practical Applications

These concepts are useful for:

- **DevOps Automation:** Storing service configuration values in associative arrays.
- **Container Management:** Extracting image names and version tags.
- **Configuration Comparison:** Comparing expected and actual command outputs.
- **Log Management:** Separating normal output from error output.
- **Infrastructure Automation:** Generating configuration files dynamically.

## Day 15 Progress

- [x] Script 71 — Associative Arrays
- [x] Script 72 — Advanced Parameter Expansion
- [x] Script 73 — Process Substitution
- [x] Script 74 — Custom File Descriptors
- [x] Script 75 — Here-Document Templates

**Progress: 5/5 scripts documented.**

## Key Takeaway

Day 15 expanded my Bash knowledge beyond basic scripting into advanced data structures, string manipulation, command comparison, output management, and dynamic configuration generation. These skills provide a foundation for writing cleaner and more maintainable automation scripts.

**Next:** Day 16 — Begin building one practical, real-world DevOps Bash script per day.

