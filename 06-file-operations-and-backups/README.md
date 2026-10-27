# Day 06 — Bash File Handling & Text Processing

Day 6 focuses on **file handling and text processing in Bash**. Files are an important part of Linux administration and DevOps automation, so Bash provides commands to create, read, search, count, and back up files.

This day builds on conditions, loops, and commands learned previously and introduces practical techniques for working with files and their contents.

---

## 📌 Topics Covered

* Creating and writing files
* File variables
* Reading files line by line
* `while` loops with `read`
* Counting lines, words, and characters
* Using the `wc` command
* Searching text inside files
* Using `grep`
* Checking whether a file exists
* Creating file backups
* Using `cp` for file copying
* Basic file automation

---

## 📂 Scripts

| **#** | **Script**          | **Concepts**                                           |
| ----- | ------------------- | ------------------------------------------------------ |
| 26    | `26-create-file.sh` | Creating files, writing text, `echo`, redirection      |
| 27    | `27-read-file.sh`   | Reading files, `while` loop, `read`, input redirection |
| 28    | `28-file-count.sh`  | `wc`, counting lines, words and characters             |
| 29    | `29-search-file.sh` | `grep`, text searching, pattern matching, exit status  |
| 30    | `30-file-backup.sh` | File checking, `cp`, backup creation, `cat`            |

---

## 🧠 Key Learnings

### 1. Creating and Writing to a File

A file can be created and written to using the `>` redirection operator.

Example:

```bash
echo "Hello from Bash!" > sample.txt
```

The `>` operator creates the file if it does not exist and writes the text into it.

To add more content without replacing the existing content, use `>>`.

```bash
echo "Learning Linux" >> sample.txt
```

The `>>` operator appends content to the end of the file.

---

### 2. Using Variables for File Names

A file name can be stored inside a variable.

Example:

```bash
FILE="sample.txt"
```

The variable can then be used throughout the script:

```bash
echo "Reading $FILE"
cat "$FILE"
```

This makes scripts easier to modify because the file name only needs to be changed in one place.

---

### 3. Reading a File Line by Line

A file can be processed one line at a time using a `while` loop and the `read` command.

Example:

```bash
while IFS= read -r line
do
    echo "$line"
done < "$FILE"
```

Here:

* `while` repeats the operation.
* `read` reads one line.
* `line` stores the current line.
* `IFS=` helps preserve the line as it is.
* `-r` prevents backslashes from being interpreted.
* `< "$FILE"` provides the file as input.

This method is useful when every line needs to be processed separately.

---

### 4. Counting File Contents

The `wc` command is used to count information about a file.

Examples:

```bash
wc -l sample.txt
```

Counts the number of lines.

```bash
wc -w sample.txt
```

Counts the number of words.

```bash
wc -m sample.txt
```

Counts the number of characters.

These commands are useful when analyzing text files.

---

### 5. Command Substitution

Command substitution allows the output of a command to be stored or displayed as part of another command.

Example:

```bash
echo "Number of lines: $(wc -l < "$FILE")"
```

The command:

```bash
wc -l < "$FILE"
```

runs first, and its output is inserted into the `echo` command.

The syntax is:

```bash
$(command)
```

---

### 6. Searching Text Using grep

The `grep` command is used to search for specific text inside files.

Example:

```bash
grep "Bash" sample.txt
```

This displays lines containing the word `Bash`.

To display the matching line numbers:

```bash
grep -n "Bash" sample.txt
```

The `-n` option shows the line number along with the matching line.

---

### 7. Using grep with if

`grep` can also be used inside an `if` statement.

Example:

```bash
if grep -q "Bash" "$FILE"
then
    echo "Text found in the file!"
else
    echo "Text not found in the file."
fi
```

The `-q` option performs the search quietly without displaying the matching lines.

The result of `grep` is then used by the `if` statement.

* Exit status `0` → text found
* Non-zero exit status → text not found

This allows Bash scripts to make decisions based on search results.

---

### 8. Checking if a File Exists

Bash can check whether a regular file exists using:

```bash
[ -f "$FILE" ]
```

Example:

```bash
if [ -f "$FILE" ]
then
    echo "File exists."
else
    echo "File not found."
fi
```

This is useful before performing operations such as reading, copying, or deleting a file.

---

### 9. Creating a File Backup

The `cp` command is used to copy files.

Example:

```bash
cp "$FILE" "$BACKUP"
```

If:

```text
FILE="sample.txt"
BACKUP="sample_backup.txt"
```

The command creates a copy of:

```text
sample.txt
```

as:

```text
sample_backup.txt
```

This is a simple example of file backup automation.

---

### 🔧 Important Commands / Syntax Used

| **Command / Syntax** | **Purpose**                                 |
| -------------------- | ------------------------------------------- |
| `>`                  | Creates/overwrites a file                   |
| `>>`                 | Appends content to a file                   |
| `cat`                | Displays file contents                      |
| `while`              | Repeats commands while a condition succeeds |
| `read`               | Reads input or file lines                   |
| `IFS=`               | Helps preserve input formatting             |
| `read -r`            | Reads text without interpreting backslashes |
| `<`                  | Redirects file contents as input            |
| `wc -l`              | Counts lines                                |
| `wc -w`              | Counts words                                |
| `wc -m`              | Counts characters                           |
| `$(...)`             | Performs command substitution               |
| `grep`               | Searches text                               |
| `grep -q`            | Searches quietly                            |
| `grep -n`            | Shows matching line numbers                 |
| `[ -f "$FILE" ]`     | Checks whether a file exists                |
| `cp`                 | Copies a file                               |

---

## 🧪 Testing Environment

* OS: Ubuntu on WSL2
* Shell: Bash
* Architecture: x86_64

---

## ✅ Day 06 Progress

**5 / 5 scripts completed**

* Create & Write File
* Read File Line by Line
* Count File Contents
* Search Text in File
* Create File Backup

---

## 🚀 Key Takeaway

Bash file handling allows scripts to create, read, analyze, search, and back up files automatically. These operations are commonly used in **Linux administration, system monitoring, log analysis, backups, and DevOps automation**.

