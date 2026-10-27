# Day 05 — Bash Arrays & String Manipulation

Day 5 focuses on **Bash arrays and string manipulation**. Arrays allow multiple values to be stored and processed using a single variable, while string operations are useful for working with text, user input, and searching data.

This day builds on loops and functions learned previously and introduces practical techniques for handling collections of data and text in Bash scripts.

---

## 📌 Topics Covered

* Bash arrays
* Creating and accessing arrays
* Array indexing
* Accessing all array elements
* Counting array elements
* Looping through arrays
* String length
* String slicing
* String comparison
* Taking string input from the user
* Searching for text inside a string
* Pattern matching using `[[ ]]`

---

## 📂 Scripts

| **#** | **Script**                | **Concepts**                                   |
| ----- | ------------------------- | ---------------------------------------------- |
| 21    | `21-array-basic.sh`       | Arrays, indexing, `${array[@]}`, array length  |
| 22    | `22-array-loop.sh`        | Arrays, `for` loop, array iteration            |
| 23    | `23-string-length.sh`     | String length, string slicing                  |
| 24    | `24-string-comparison.sh` | User input, string comparison, `if/else`       |
| 25    | `25-string-search.sh`     | User input, pattern matching, string searching |

---

## 🧠 Key Learnings

### 1. Bash Arrays

An array can store multiple values inside a single variable.

Example:

```bash
tools=("Linux" "Git" "Docker" "AWS" "Terraform")
```

Each value is stored at an index.

Bash arrays use **zero-based indexing**, meaning the first element is at index `0`.

```bash
echo "${tools[0]}"
```

Output:

```text
Linux
```

The indexes are:

```text
0 → Linux
1 → Git
2 → Docker
3 → AWS
4 → Terraform
```

---

### 2. Accessing Array Elements

A specific array element can be accessed using its index:

```bash
echo "${tools[0]}"
echo "${tools[1]}"
```

To access all elements:

```bash
echo "${tools[@]}"
```

The `@` represents all elements of the array.

---

### 3. Counting Array Elements

The number of elements in an array can be found using:

```bash
${#tools[@]}
```

Example:

```bash
echo "Total tools: ${#tools[@]}"
```

Output:

```text
Total tools: 5
```

The `#` is used to obtain the number of elements when combined with `[@]`.

---

### 4. Looping Through an Array

Arrays can be processed using a `for` loop:

```bash
for tool in "${tools[@]}"
do
    echo "Tool: $tool"
done
```

The loop takes each element from the array and stores it temporarily in the `tool` variable.

Example output:

```text
Tool: Linux
Tool: Git
Tool: Docker
Tool: AWS
Tool: Terraform
```

This is useful when the same operation needs to be performed on multiple values.

---

### 5. String Length

Bash can determine the number of characters in a string using:

```bash
${#string}
```

Example:

```bash
name="Aryan Patil"

echo "Length: ${#name}"
```

Output:

```text
Length: 11
```

Spaces are also counted as characters.

---

### 6. String Slicing

A portion of a string can be extracted using:

```bash
${string:start:length}
```

Example:

```bash
name="Aryan Patil"

echo "${name:0:5}"
```

Output:

```text
Aryan
```

The starting position uses zero-based indexing.

A starting position can also be used without specifying the length:

```bash
echo "${name:6}"
```

Output:

```text
Patil
```

This extracts the string starting from index `6` until the end.

---

### 7. String Comparison

Strings can be compared using the `=` operator.

Example:

```bash
if [ "$username" = "$entered_name" ]
then
    echo "Names match."
else
    echo "Names do not match."
fi
```

The values are compared exactly.

For example:

```text
Aryan = Aryan  → Match
Aryan = aryan  → No match
```

Bash string comparison is **case-sensitive**.

---

### 8. Taking String Input

The `read` command can be used to accept text from the user.

Example:

```bash
read -p "Enter the username: " entered_name
```

The entered value is stored in the `entered_name` variable.

This allows scripts to interact with users instead of using only predefined values.

---

### 9. Searching Inside a String

Bash can check whether a string contains specific text using pattern matching.

Example:

```bash
if [[ "$message" == *"$search"* ]]
then
    echo "Text found: $search"
else
    echo "Text not found: $search"
fi
```

The `*` wildcard allows other characters to appear before or after the searched text.

For example:

```text
Message: I am learning Bash scripting and DevOps.

Search: DevOps
Result: Text found
```

If the text does not exist:

```text
Search: hello
Result: Text not found
```

---

## 🔧 Important Commands / Syntax Used

| **Command / Syntax**     | **Purpose**                        |
| ------------------------ | ---------------------------------- |
| `array=(...)`            | Creates a Bash array               |
| `${array[index]}`        | Accesses a specific array element  |
| `${array[@]}`            | Accesses all array elements        |
| `${#array[@]}`           | Counts array elements              |
| `for ... in`             | Iterates through array elements    |
| `${#string}`             | Finds string length                |
| `${string:start:length}` | Extracts part of a string          |
| `read`                   | Takes user input                   |
| `[ "$a" = "$b" ]`        | Compares strings                   |
| `[[ ... ]]`              | Performs Bash conditional testing  |
| `*`                      | Wildcard used for pattern matching |

---

## 🧪 Testing Environment

* OS: Ubuntu on WSL2
* Shell: Bash
* Architecture: x86_64

---

## ✅ Day 05 Progress

**5 / 5 scripts completed**

* Basic Array
* Array Loop
* String Length & Slicing
* String Comparison
* String Search

---

## 🚀 Key Takeaway

Bash arrays make it easier to store and process multiple values, while string operations allow scripts to analyze and manipulate text. These concepts are useful for Linux administration, automation, and DevOps scripting.

