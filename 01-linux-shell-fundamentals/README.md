# Day 01 — Bash Basics

Day 1 focuses on the fundamentals of Bash scripting and basic Linux commands.

## 📌 Topics Covered

* Bash script structure and shebang
* Printing output using `echo`
* Taking user input with `read`
* Variables and variable declarations
* Arithmetic operations
* Conditional statements
* Basic Linux system information
* Bash built-in vs external Linux commands

## 📂 Scripts

| #  | Script              | Concepts                                       |
| -- | ------------------- | ---------------------------------------------- |
| 01 | `01-hello-world.sh` | Shebang, `echo`                                |
| 02 | `02-user-input.sh`  | `read`, variables, user input                  |
| 03 | `03-variables.sh`   | Variables, `declare`, variable attributes      |
| 04 | `04-calculator.sh`  | Arithmetic, `$(( ))`, `if/else`, modulo        |
| 05 | `05-system-info.sh` | `hostname`, `uname`, `whoami`, `pwd`, `uptime` |

## 🧠 Key Learnings

### 1. Bash Shebang

```bash
#!/usr/bin/env bash
```

Specifies that the script should be executed using Bash.

### 2. Variables

Bash variables can be created without explicitly specifying a data type:

```bash
name="Aryan"
age=21
```

`declare -p` can be used to inspect how a variable is declared.

Bash also supports explicitly declaring integer variables:

```bash
declare -i age=21
```

### 3. User Input

The `read` command is used to accept input from the user:

```bash
read -p "Enter your name: " name
```

### 4. Arithmetic

Bash supports integer arithmetic using:

```bash
$(( expression ))
```

Example:

```bash
sum=$((num1 + num2))
```

### 5. Conditions

Bash can make decisions using `if/else`:

```bash
if (( num2 != 0 )); then
    # commands
else
    # commands
fi
```

### 6. Linux System Commands

Some commands used in the system information script:

```text
hostname  → Displays the system hostname
uname     → Displays system/kernel information
whoami    → Displays the current user
pwd       → Displays the current directory
uptime    → Displays system uptime
```

### 7. Bash Built-ins vs External Commands

Bash built-in commands can be inspected using:

```bash
help <command>
```

Example:

```bash
help read
```

External Linux commands generally have manual pages:

```bash
man <command>
```

Example:

```bash
man uname
```

## 🧪 Testing Environment

* OS: Ubuntu on WSL2
* Shell: Bash
* Architecture: x86_64

## ✅ Day 01 Progress

**5 / 5 scripts completed**

* [x] Hello World
* [x] User Input
* [x] Variables
* [x] Calculator
* [x] System Information

