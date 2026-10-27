# Day 10 — String and Text Processing Integration

Day 10 focuses on processing text and strings using Bash pattern matching, file globbing, `grep`, `sed`, and `awk`. The day starts with basic pattern matching and gradually introduces stream-processing tools used in Linux automation and log analysis.

## 📌 Topics Covered

* Regular Expression (Regex) pattern matching
* File matching using Bash globbing
* Filtering text using `grep`
* Case-insensitive and line-number searches with `grep`
* Basic text transformation using `sed`
* Replacing text using `sed`
* Selecting specific lines using `sed`
* Basic field processing using `awk`
* Printing complete lines and individual fields using `awk`
* Using text-processing commands inside Bash automation scripts

## 📂 Scripts

| **#** | **Script**                     | **Concepts**                                                |
| ----- | ------------------------------ | ----------------------------------------------------------- |
| 46    | `46-regex-pattern-matching.sh` | Regex, `=~`, character classes, email and server validation |
| 47    | `47-globbing-file-matching.sh` | Globbing, `*`, filename matching, file extensions           |
| 48    | `48-grep-filtering.sh`         | `grep`, `-i`, `-n`, text filtering                          |
| 49    | `49-basic-sed.sh`              | `sed`, substitution, line selection                         |
| 50    | `50-basic-awk.sh`              | `awk`, fields, `$0`, `$1`, `$2`, `print`                    |

## 🧠 Key Learnings

### 1. Regular Expression Pattern Matching

Bash can perform Regex matching using the `=~` operator inside `[[ ]]`:

```bash
if [[ "$email" =~ REGEX ]]; then
    echo "Valid"
fi
```

Example:

```bash
if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
    echo "Valid email address"
fi
```

Important Regex symbols include:

```text
^       → Start of string
$       → End of string
[]      → Character set
+       → One or more occurrences
{2,}    → Minimum two occurrences
\.      → Literal dot
```

Regex can be useful for validating user input such as email addresses, server names, IDs, and other structured text.

### 2. Bash Globbing

Globbing is used by the shell to match filenames and paths.

Common patterns include:

```text
*       → Matches any number of characters
?       → Matches exactly one character
*.log   → Matches files ending in .log
app*    → Matches files beginning with app
error.* → Matches files beginning with error.
```

Example:

```bash
printf '%s\n' logs/*.log
```

This displays files inside the `logs` directory that have the `.log` extension.

Globbing is commonly used when automation scripts need to process multiple files.

### 3. grep

`grep` is used to search and filter lines containing a particular pattern.

Example:

```bash
grep "ERROR" server.log
```

This displays all lines containing `ERROR`.

Useful options include:

```text
-i  → Ignore case
-n  → Display line numbers
```

Examples:

```bash
grep -i "warning" server.log
grep -n "ERROR" server.log
```

`grep` is especially useful for searching application logs, configuration files, and command output.

### 4. sed

`sed` is a stream editor used to transform or select text.

A basic substitution uses:

```bash
sed 's/old/new/' file.txt
```

Example:

```bash
sed 's/Rahul/Rohan/' names.txt
```

This replaces the first occurrence of `Rahul` on each line with `Rohan`.

`sed` can also be used to display specific lines:

```bash
sed -n '1,3p' names.txt
```

This prints lines 1 through 3.

Important parts:

```text
s       → Substitute
-n      → Suppress automatic output
p       → Print
1,3     → Lines 1 through 3
```

In these examples, `sed` changes the output rather than directly modifying the original file.

### 5. awk

`awk` is a text-processing tool that works with lines and fields.

Example:

```bash
awk '{print}' employees.txt
```

prints the complete contents of the file.

`awk` automatically separates a line into fields.

For:

```text
Aryan 50000
```

the fields are:

```text
$1  → Aryan
$2  → 50000
$0  → Complete line
```

Therefore:

```bash
awk '{print $1}' employees.txt
```

prints employee names.

And:

```bash
awk '{print $2}' employees.txt
```

prints employee salaries.

Multiple fields can also be printed:

```bash
awk '{print $1, $2}' employees.txt
```

This makes `awk` useful for extracting specific information from structured text.

## 🔧 Important Commands

### Regex

```bash
[[ "$text" =~ REGEX ]]
```

### Globbing

```bash
*.log
app*
error.*
```

### grep

```bash
grep "ERROR" file.txt
grep -i "warning" file.txt
grep -n "ERROR" file.txt
```

### sed

```bash
sed 's/old/new/' file.txt
sed -n '1,3p' file.txt
```

### awk

```bash
awk '{print}' file.txt
awk '{print $1}' file.txt
awk '{print $2}' file.txt
awk '{print $1, $2}' file.txt
```

## 🔄 Text Processing Flow

The tools introduced in Day 10 have different purposes:

```text
Regex
  ↓
Pattern Matching

Globbing
  ↓
File Matching

grep
  ↓
Filtering

sed
  ↓
Text Transformation

awk
  ↓
Field Extraction
```

These tools can later be combined into pipelines for more advanced automation.

Example:

```bash
grep "ERROR" server.log
```

can eventually be combined with other text-processing commands:

```text
grep → sed → awk
```

This forms the foundation for log analysis and automation pipelines covered in later scripts.

## 🧪 Testing Environment

* OS: Ubuntu on WSL2
* Shell: Bash
* Architecture: x86_64

## 🎯 Practical Applications

String and text-processing commands are commonly used in:

* Log analysis
* Server monitoring
* Configuration file processing
* System administration
* Data extraction
* Automation scripts
* DevOps pipelines
* Troubleshooting Linux systems

For example, an administrator can use `grep` to find errors in a server log, `sed` to transform the output, and `awk` to extract specific fields.

## ✅ Day 10 Progress

**5 / 5 scripts completed**

* [x] Regex Pattern Matching
* [x] Globbing File Matching
* [x] grep Filtering
* [x] Basic sed
* [x] Basic awk

## 🚀 Next Steps

Day 10 introduces the fundamentals of text-processing tools. Future scripts will build on these concepts by covering more advanced `grep`, `sed`, and `awk` operations, followed by combined pipelines and practical automation tasks.

## 📌 Key Takeaway

Day 10 builds the foundation for processing and analyzing text in Bash. Regex is used for pattern matching, globbing is used for filename matching, `grep` filters text, `sed` transforms text, and `awk` extracts fields. These tools are essential for Linux administration, DevOps, log analysis, and shell automation.

