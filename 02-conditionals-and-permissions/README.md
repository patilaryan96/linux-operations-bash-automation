# Day 02 — Bash Conditions & File Tests

Day 2 focuses on conditional statements, comparison operators, file tests, and Linux file permissions.

## 📌 Topics Covered

* Conditional statements using `if`, `elif`, and `else`
* Arithmetic and comparison operators
* Modulo operator `%`
* Logical AND operator `&&`
* File and directory testing using `[[ ]]`
* File test operators
* Linux file permissions
* Exit status and `exit`
* Understanding effective permissions when running as `root`

## 📂 Scripts

| **#** | **Script**                   | **Concepts**                            |
| ----- | ---------------------------- | --------------------------------------- |
| 06    | `06-even-odd.sh`             | `if`, modulo `%`, arithmetic conditions |
| 07    | `07-number-sign.sh`          | `if/elif/else`, comparison operators    |
| 08    | `08-largest-of-three.sh`     | `&&`, comparisons, multiple conditions  |
| 09    | `09-file-directory-check.sh` | `[[ ]]`, `-e`, `-f`, `-d`               |
| 10    | `10-permission-check.sh`     | `-r`, `-w`, `-x`, `exit`, permissions   |

## 🧠 Key Learnings

### 1. Conditional Statements

Bash uses `if`, `elif`, and `else` to make decisions:

```bash
if condition; then
    # commands
elif condition; then
    # commands
else
    # commands
fi
```

### 2. Modulo Operator

The `%` operator returns the remainder of a division:

```bash
number % 2
```

Example:

```text
10 % 2 = 0  → Even
7 % 2 = 1   → Odd
```

A remainder of `0` means the number is evenly divisible by 2.

### 3. Comparison Operators

Arithmetic conditions can use comparison operators such as:

```text
>   Greater than
<   Less than
>=  Greater than or equal to
<=  Less than or equal to
==  Equal to
!=  Not equal to
```

Example:

```bash
if (( number > 0 )); then
    echo "Positive"
fi
```

### 4. Logical AND

The `&&` operator means **AND**.

```bash
(( num1 >= num2 && num1 >= num3 ))
```

Both conditions must be true for the complete condition to be true.

### 5. File Test Operators

Bash provides operators for checking files and directories:

```text
-e  Path exists
-f  Regular file
-d  Directory
-r  Read permission
-w  Write permission
-x  Execute permission
```

Example:

```bash
if [[ -f "$path" ]]; then
    echo "Regular file"
fi
```

### 6. Negation

The `!` operator reverses a condition:

```bash
[[ ! -e "$path" ]]
```

This means the specified path **does not exist**.

### 7. Linux File Permissions

Linux permissions are divided into three groups:

```text
Owner | Group | Others
```

Example:

```text
-rwxr-xr--
```

This represents:

```text
Owner  → rwx
Group  → r-x
Others → r--
```

The permission checker script uses:

```text
-r
-w
-x
```

to check whether the current user has read, write, and execute access.

When running as `root`, effective access can differ from the permission bits shown by `ls -l`, because root can bypass many normal permission restrictions.

### 8. Exit Status

Linux commands return an exit status.

The special variable `$?` can be used to check the status of the previous command:

```bash
echo $?
```

A successful command normally returns:

```text
0
```

A non-zero value generally indicates an error.

A script can return a specific status using:

```bash
exit 1
```

## 🧪 Testing Environment

* OS: Ubuntu on WSL2
* Shell: Bash
* Architecture: x86_64

## ✅ Day 02 Progress

**5 / 5 scripts completed**

* Even/Odd Checker
* Positive/Negative/Zero
* Largest of Three Numbers
* File & Directory Checker
* Permission Checker

