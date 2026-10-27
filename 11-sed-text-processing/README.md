# Day 11 — Advanced Text Processing with sed

Day 11 focuses on advanced text processing using `sed` (Stream Editor). Building on the basic `sed` concepts introduced in Day 10, this day covers global replacements, multiple editing commands, pattern-based deletion, inserting and appending text, and in-place file modification. These operations are commonly used in Linux administration, configuration management, log processing, and DevOps automation.

## 📌 Topics Covered

* Global text replacement using `sed`
* Multiple `sed` commands using `-e`
* Pattern-based line deletion
* Inserting text before a matching line
* Appending text after a matching line
* In-place file editing using `sed -i`
* Combining `sed` operations in Bash scripts
* Using `sed` for configuration and log file processing

## 📂 Scripts

| **#** | **Script**                    | **Concepts**                                                 |
| ----- | ----------------------------- | ------------------------------------------------------------ |
| 51    | `51-global-replacement.sh`    | Global substitution, `s///g`, replacing multiple occurrences |
| 52    | `52-multiple-sed-commands.sh` | Multiple substitutions, `-e`, chained `sed` operations       |
| 53    | `53-delete-pattern-lines.sh`  | Pattern matching, `d`, deleting matching lines               |
| 54    | `54-insert-append-text.sh`    | `i`, `a`, inserting and appending text                       |
| 55    | `55-inplace-edit.sh`          | `-i`, modifying files directly, configuration editing        |

## 🧠 Key Learnings

### 1. Global Replacement

By default, the `sed` substitution command replaces only the first matching occurrence on each line.

Basic syntax:

```bash
sed 's/old/new/' file.txt
```

To replace every occurrence on a line, use the `g` flag:

```bash
sed 's/old/new/g' file.txt
```

Example:

```bash
sed 's/ERROR/WARNING/g' server.log
```

If a line contains:

```text
ERROR: Database ERROR detected
```

the result becomes:

```text
WARNING: Database WARNING detected
```

Important parts:

```text
s       → Substitute
old     → Text to search
new     → Replacement text
g       → Replace all occurrences
```

Global replacement is useful when processing logs, configuration files, and large text files.

### 2. Multiple sed Commands

Multiple `sed` operations can be performed on the same file using the `-e` option.

Example:

```bash
sed -e 's/localhost/192.168.1.10/' \
    -e 's/8080/80/' \
    config.txt
```

The first command replaces `localhost`.

The second command replaces the port number.

Multiple commands are useful when several different transformations need to be performed in a single operation.

Another form is:

```bash
sed 's/localhost/192.168.1.10/; s/8080/80/' config.txt
```

This allows multiple editing commands to be combined in one `sed` expression.

### 3. Delete Lines Using Patterns

The `d` command is used to delete lines matching a pattern.

Syntax:

```bash
sed '/pattern/d' file.txt
```

Example:

```bash
sed '/DEBUG/d' server.log
```

This removes every line containing `DEBUG` from the displayed output.

For example:

```text
INFO Server Started
DEBUG Cache Loaded
ERROR Database Failed
DEBUG Memory Check
```

becomes:

```text
INFO Server Started
ERROR Database Failed
```

Important parts:

```text
/pattern/ → Search for the pattern
d         → Delete matching lines
```

This is useful for removing unwanted entries from logs and filtering configuration files.

### 4. Insert and Append Text

`sed` can insert or append text around matching lines.

The `i` command inserts text **before** a matching line:

```bash
sed '/ERROR/i WARNING: Check the server' server.log
```

The `a` command appends text **after** a matching line:

```bash
sed '/ERROR/a ACTION: Investigate database connection' server.log
```

Important commands:

```text
i → Insert before the matched line
a → Append after the matched line
```

For example:

```text
INFO Server Started
ERROR Database Failed
```

Using:

```bash
sed '/ERROR/i WARNING: Server issue detected' server.log
```

produces:

```text
INFO Server Started
WARNING: Server issue detected
ERROR Database Failed
```

These operations are useful for modifying configuration files and adding information to generated text.

### 5. In-Place Editing

Normally, `sed` displays the modified output without changing the original file.

Example:

```bash
sed 's/dev/prod/' config.txt
```

The original file remains unchanged.

To modify the file directly, use the `-i` option:

```bash
sed -i 's/dev/prod/' config.txt
```

For example, a configuration file containing:

```text
ENV=dev
DEBUG=true
```

can be modified using:

```bash
sed -i 's/dev/prod/' config.txt
sed -i 's/true/false/' config.txt
```

The file becomes:

```text
ENV=prod
DEBUG=false
```

The `-i` option is especially useful in automation scripts where configuration files need to be updated automatically.

## 🔧 Important Commands

### Global Replacement

```bash
sed 's/old/new/g' file.txt
```

### Multiple Commands

```bash
sed -e 's/old/new/' -e 's/foo/bar/' file.txt
```

### Delete Matching Lines

```bash
sed '/pattern/d' file.txt
```

### Insert Before a Match

```bash
sed '/pattern/i Text to insert' file.txt
```

### Append After a Match

```bash
sed '/pattern/a Text to append' file.txt
```

### In-Place Editing

```bash
sed -i 's/old/new/' file.txt
```

## 🔄 sed Processing Flow

The advanced `sed` operations introduced in Day 11 can be viewed as:

```text
Input File
    ↓
Pattern Matching
    ↓
┌─────────────────────┐
│ Replace Text        │
│ Delete Lines        │
│ Insert Text         │
│ Append Text         │
│ Modify File         │
└─────────────────────┘
    ↓
Processed Output
```

`sed` processes the input line by line and applies the specified editing commands.

## 🧪 Testing Environment

* OS: Ubuntu on WSL2
* Shell: Bash
* Architecture: x86_64

## 🎯 Practical Applications

Advanced `sed` operations are commonly used in:

* Linux system administration
* Configuration file management
* Log processing
* Server administration
* DevOps automation
* CI/CD pipelines
* Deployment scripts
* Environment configuration
* Automated text transformation

For example, a deployment script can use `sed -i` to automatically change development configuration values into production values.

A log-processing script can use pattern-based deletion to remove unnecessary `DEBUG` entries and global replacement to standardize log messages.

## 🔗 Combining sed with Other Commands

`sed` can be combined with other Linux text-processing commands using pipes.

Example:

```bash
grep "ERROR" server.log | sed 's/ERROR/WARNING/g'
```

The pipeline works as:

```text
server.log
    ↓
grep
    ↓
ERROR lines
    ↓
sed
    ↓
Modified output
```

This forms the foundation for more advanced Linux text-processing pipelines.

## ✅ Day 11 Progress

**5 / 5 scripts planned**

* [ ] Global Replacement
* [ ] Multiple sed Commands
* [ ] Delete Pattern-Matching Lines
* [ ] Insert and Append Text
* [ ] In-Place File Editing

## 🚀 Next Steps

Day 12 will focus entirely on `awk` and build on the basic `awk` concepts introduced in Day 10.

The next scripts will cover:

* Field-based processing
* Conditions and filtering
* Calculations
* Counting and aggregation
* Practical log and data processing using `awk`

## 📌 Key Takeaway

Day 11 builds on the basic `sed` concepts from Day 10 and introduces more powerful text-editing operations. Global replacement, multiple commands, pattern-based deletion, insertion, appending, and in-place editing make `sed` useful for Linux administration, configuration management, log processing, and DevOps automation.

