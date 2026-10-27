# Day 03 — Bash Loops & Iteration

Day 3 focuses on loops and iteration in Bash scripting. Loops allow commands to be repeated automatically and are commonly used in Linux administration, automation, and DevOps scripting.

## 📌 Topics Covered

* `for` loops
* `while` loops
* Loop conditions
* Incrementing and decrementing variables
* Bash ranges
* Wildcards
* File processing using loops
* Reading files line by line
* Input redirection
* Command substitution
* Using `cut` to extract fields
* Processing Linux user information

## 📂 Scripts

| **#** | **Script**         | **Concepts**                                             |
| ----- | ------------------ | -------------------------------------------------------- |
| 11    | `11-for-loop.sh`   | `for`, lists, ranges                                     |
| 12    | `12-while-loop.sh` | `while`, conditions, counters                            |
| 13    | `13-countdown.sh`  | `while`, arithmetic, `sleep`, input validation           |
| 14    | `14-file-list.sh`  | `for`, wildcard `*`, file testing                        |
| 15    | `15-user-list.sh`  | `while`, `read`, `/etc/passwd`, `cut`, input redirection |

## 🧠 Key Learnings

### 1. For Loop

A `for` loop repeats a set of commands for each item in a list:

```bash
for item in list
do
    echo "$item"
done
```

Example:

```bash
for number in 1 2 3 4 5
do
    echo "$number"
done
```

The loop processes each item one at a time.

### 2. Bash Ranges

Bash can generate a sequence of numbers using:

```bash
{1..5}
```

This produces:

```text
1 2 3 4 5
```

Example:

```bash
for number in {1..5}
do
    echo "$number"
done
```

Ranges are useful when a loop needs to run over a sequence of values.

### 3. While Loop

A `while` loop continues running as long as its condition is true:

```bash
while condition
do
    # commands
done
```

Example:

```bash
counter=1

while (( counter <= 5 ))
do
    echo "$counter"
    (( counter++ ))
done
```

The loop stops when the condition becomes false.

### 4. Increment and Decrement

Bash arithmetic can be used to increase or decrease variables.

Increment:

```bash
(( counter++ ))
```

This increases the value by `1`.

Decrement:

```bash
(( number-- ))
```

This decreases the value by `1`.

These operations are commonly used with loops and counters.

### 5. Sleep Command

The `sleep` command pauses script execution for a specified amount of time.

Example:

```bash
sleep 1
```

This pauses the script for one second.

It can be combined with loops to create delays, countdowns, and scheduled operations.

### 6. Wildcards

The `*` wildcard can represent multiple files or directories.

Example:

```bash
for file in *
do
    echo "$file"
done
```

Bash expands `*` into matching entries in the current directory.

Wildcards are useful for processing multiple files automatically.

### 7. Reading Files Line by Line

A file can be processed one line at a time using:

```bash
while IFS= read -r line
do
    echo "$line"
done < file.txt
```

The `<` operator redirects the contents of the file into the loop.

`read` stores each line in the `line` variable.

### 8. Command Substitution

Command substitution allows the output of a command to be used inside another command or assigned to a variable.

Example:

```bash
username=$(whoami)
```

The output of `whoami` is stored in the `username` variable.

It can also be used directly:

```bash
echo "Current user: $(whoami)"
```

### 9. Linux `/etc/passwd`

The `/etc/passwd` file contains information about user accounts on a Linux system.

A typical entry contains fields separated by `:`:

```text
username:x:UID:GID:comment:home:shell
```

Example:

```text
root:x:0:0:root:/root:/bin/bash
```

Each field provides different information about the user.

### 10. Using `cut`

The `cut` command can extract specific fields from text.

Example:

```bash
cut -d ':' -f 1
```

Here:

* `-d ':'` specifies `:` as the delimiter.
* `-f 1` selects the first field.

For example:

```text
root:x:0:0:root:/root:/bin/bash
```

Using:

```bash
cut -d ':' -f 1
```

produces:

```text
root
```

This is useful for extracting usernames and other structured text data.

## 🧪 Testing Environment

* OS: Ubuntu on WSL2
* Shell: Bash
* Architecture: x86_64

## ✅ Day 03 Progress

**5 / 5 scripts completed**

* For Loop
* While Loop
* Countdown
* File Listing
* Linux User Listing

