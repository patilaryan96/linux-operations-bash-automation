# Day 04 — Bash Functions & Menu-Based Automation

Day 4 focuses on **functions in Bash scripting**. Functions allow commands to be grouped into reusable blocks, making scripts easier to organize, reuse, and maintain.

This day also introduces passing arguments to functions, checking files and paths, collecting system information, and creating a simple menu using the `case` statement.

---

## 📌 Topics Covered

* Bash functions
* Creating and calling functions
* Function arguments
* Positional parameters `$1` and `$2`
* Command substitution
* System information commands
* File and path checking
* User input
* `case` statements
* Menu-based scripts
* Reusable Bash code

---

## 📂 Scripts

| **#** | **Script**                   | **Concepts**                                    |
| ----- | ---------------------------- | ----------------------------------------------- |
| 16    | `16-function-basic.sh`       | Basic functions, creating and calling functions |
| 17    | `17-function-arguments.sh`   | Function arguments, `$1`, `$2`, variables       |
| 18    | `18-function-system-info.sh` | Functions, `hostname`, `whoami`, `uptime`       |
| 19    | `19-function-check-file.sh`  | Functions, user input, file testing, file paths |
| 20    | `20-function-menu.sh`        | Functions, `case`, menu, user input             |

---

## 🧠 Key Learnings

### 1. Bash Functions

A function is a reusable block of commands.

Syntax:

```bash
function_name() {
    commands
}
```

Example:

```bash
hello_user() {
    echo "Hello from a Bash function!"
}

hello_user
```

The function is created first and then called using its name.

Functions help avoid repeating the same commands multiple times.

---

### 2. Function Arguments

Functions can receive values called arguments.

The arguments are accessed using positional parameters:

```bash
$1
$2
```

Example:

```bash
greet_user() {
    name="$1"
    course="$2"

    echo "Hello, $name!"
    echo "You are learning $course."
}

greet_user "Aryan" "DevOps"
```

Here:

* `$1` contains `Aryan`
* `$2` contains `DevOps`

Function arguments make functions more reusable.

---

### 3. System Information Using Functions

Functions can be used to organize system information commands.

Example:

```bash
system_info() {
    echo "Hostname: $(hostname)"
    echo "Current User: $(whoami)"
    uptime
}

system_info
```

Commands used:

* `hostname` → displays the system hostname
* `whoami` → displays the current user
* `uptime` → displays system uptime

Command substitution using `$(command)` allows command output to be used inside another command.

Example:

```bash
echo "Hostname: $(hostname)"
```

---

### 4. File Checking

Bash provides file test operators that can be used to check files.

Example:

```bash
if [[ -f "$file" ]]; then
    echo "File exists"
else
    echo "File does not exist"
fi
```

The `-f` test checks whether the given path is a regular file.

The script can accept:

```text
16-function-basic.sh
```

or a relative path:

```text
../Day-03/15-user-list.sh
```

or an absolute path:

```text
/home/bash-scripting-30-days/Day-04/16-function-basic.sh
```

The `realpath` command can be used to display the absolute path:

```bash
realpath "$file"
```

---

### 5. User Input

The `read` command is used to accept input from the user.

Example:

```bash
read -p "Enter your choice: " choice
```

The entered value is stored in the `choice` variable.

User input can then be passed to a function or used in conditions.

---

### 6. Case Statement

The `case` statement is useful when a script needs to handle multiple choices.

Syntax:

```bash
case "$choice" in

    1)
        commands
        ;;

    2)
        commands
        ;;

    *)
        commands
        ;;

esac
```

The `*)` section handles inputs that do not match the available options.

---

### 7. Menu-Based Bash Script

Functions and `case` statements can be combined to create a simple menu.

Example:

```bash
echo "1. Show Hostname"
echo "2. Show Current User"
echo "3. Show System Uptime"
echo "4. Exit"

read -p "Enter your choice: " choice

case "$choice" in
    1)
        show_hostname
        ;;
    2)
        show_user
        ;;
    3)
        show_uptime
        ;;
    4)
        echo "Exiting..."
        ;;
    *)
        echo "Invalid choice."
        ;;
esac
```

This approach is useful for creating interactive Linux administration scripts.

---

## 🔧 Important Commands Used

| **Command / Feature** | **Purpose**                          |
| --------------------- | ------------------------------------ |
| `function_name()`     | Creates a Bash function              |
| `$1`                  | First function argument              |
| `$2`                  | Second function argument             |
| `read`                | Takes user input                     |
| `hostname`            | Displays system hostname             |
| `whoami`              | Displays current user                |
| `uptime`              | Displays system uptime               |
| `realpath`            | Displays the absolute path           |
| `[[ -f ]]`            | Checks whether a regular file exists |
| `case`                | Handles multiple choices             |
| `$(command)`          | Command substitution                 |

---

## 🧪 Testing Environment

* OS: Ubuntu on WSL2
* Shell: Bash
* Architecture: x86_64

---

## ✅ Day 04 Progress

**5 / 5 scripts completed**

* Basic Function
* Function Arguments
* System Information Function
* File and Path Checking
* Function-Based Menu

---

## 🚀 Key Takeaway

Bash functions allow commands to be organized into reusable blocks. Combining functions with user input, file testing, system commands, and `case` statements makes it possible to create structured and interactive Linux automation scripts.

