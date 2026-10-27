# Day 07 – Bash Redirection, Pipes & Command Chaining

## 📌 Overview

Day 07 focuses on **Bash redirection, pipes, and command chaining**.

These concepts are important in Linux because they allow us to control where command input/output goes and combine multiple commands together to perform useful tasks.

---

## 🎯 Topics Covered

* Output Redirection
* Input Redirection
* Append Redirection
* Pipes
* Command Chaining
* Combining Linux Commands
* Basic System Information Pipelines

---

## 📂 Scripts

| Script                       | Description                                        |
| ---------------------------- | -------------------------------------------------- |
| `31-output-redirection.sh`   | Demonstrates output redirection using `>` and `>>` |
| `32-input-redirection.sh`    | Reads input from a file using `<`                  |
| `33-pipe-basic.sh`           | Demonstrates the pipe `\|` operator                |
| `34-command-chaining.sh`     | Demonstrates `&&`, `\|\|`, and `;`                 |
| `35-pipeline-system-info.sh` | Combines multiple Linux commands using pipes       |

---

## 🧠 Concepts Learned

### 1. Output Redirection

The `>` operator redirects command output to a file.

```bash
echo "Hello" > file.txt
```

It creates the file if it does not exist and overwrites it if it already exists.

The `>>` operator appends output to an existing file.

```bash
echo "Hello Again" >> file.txt
```

---

### 2. Input Redirection

The `<` operator takes input from a file.

```bash
while read name
do
    echo "$name"
done < names.txt
```

Instead of receiving input from the keyboard, the script reads the input from `names.txt`.

---

### 3. Pipes

The pipe `|` sends the output of one command to another command.

```bash
ls | wc -l
```

Here:

```text
ls → output → wc -l → count
```

Pipes are very useful for combining Linux commands.

---

### 4. Command Chaining

Multiple commands can be executed together.

#### `&&`

Runs the next command only if the previous command succeeds.

```bash
mkdir test && echo "Directory created"
```

#### `||`

Runs the next command if the previous command fails.

```bash
cd test || echo "Directory not found"
```

#### `;`

Runs commands sequentially regardless of whether the previous command succeeds or fails.

```bash
echo "Command 1"; echo "Command 2"
```

---

## ⚙️ Commands Practiced

```text
echo
cat
ls
wc
grep
ps
whoami
uname
lscpu
free
df
mkdir
cd
```

---

## 🚀 Practical Application

These concepts are commonly used in:

* Linux administration
* DevOps automation
* Log analysis
* System monitoring
* Shell scripting
* CI/CD pipelines
* Server management

For example:

```bash
cat /etc/os-release | grep "^PRETTY_NAME"
```

This combines `cat` and `grep` to extract the operating system name.

---

## 📚 Key Takeaways

* `>` → Write/overwrite output
* `>>` → Append output
* `<` → Take input from a file
* `|` → Pass output to another command
* `&&` → Run if previous command succeeds
* `||` → Run if previous command fails
* `;` → Run commands sequentially
* Pipes can combine multiple Linux commands into useful workflows

---

## ✅ Day 07 Completed

Successfully practiced:

**Redirection → Input/Output → Pipes → Command Chaining → System Information Pipelines**

This builds the foundation for more advanced Bash automation and Linux/DevOps scripting.

