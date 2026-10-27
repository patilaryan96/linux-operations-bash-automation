# Day 12 — Advanced AWK Operations

Day 12 focuses on advanced text processing and data manipulation using `awk`. Building on the foundational AWK concepts introduced in Day 10, this day covers custom field separators, `BEGIN` and `END` blocks, accumulators, conditional logic, and built-in AWK variables.

These operations are essential for log analysis, report generation, system auditing, and DevOps automation.

## 📌 Topics Covered

* Custom Field Separators (`-F`) for parsing CSV and structured text files
* Execution flow using `BEGIN` and `END` blocks
* Calculating cumulative sums and record counters
* Conditional logic using `if-else` statements
* Built-in AWK variables (`$0`, `NF`, `$NF`, `NR`, `FILENAME`)
* Field-based column manipulation and inline arithmetic
* Combining AWK with standard Linux commands and pipelines

## 📂 Scripts

| #  | Script                      | Concepts                                            |
| -- | --------------------------- | --------------------------------------------------- |
| 56 | `56-field-separator-awk.sh` | Custom field separators, column parsing, arithmetic |
| 57 | `57-begin-end-awk.sh`       | Execution order, report headers, and summaries      |
| 58 | `58-awk-counters.sh`        | Running totals, accumulators, and record counting   |
| 59 | `59-awk-if-else.sh`         | Conditional logic, filtering, and threshold checks  |
| 60 | `60-awk-variables.sh`       | Built-in variables and dynamic field access         |

## 🧠 Key Learnings

### 1. Custom Field Separators

By default, AWK separates fields using whitespace. The `-F` option allows us to specify a custom delimiter, such as a comma, colon, or pipe.

**Example:**

```bash
awk -F',' 'NR > 1 { print $1 " costs ₹" $3 }' sales.csv
```

For the input:

```text
Item,Quantity,Price
Laptop,2,45000
```

Output:

```text
Laptop costs ₹45000
```

**Important concepts:**

* `-F','` — Sets the field separator to a comma.
* `NR > 1` — Skips the first record, usually the header.
* `$1` — Refers to the first field.
* `$3` — Refers to the third field.

Custom field separators are useful for processing CSV files, `/etc/passwd`, and structured log data.

### 2. Execution Flow with BEGIN and END

AWK provides three stages of execution:

* `BEGIN` — Executes once before input records are processed.
* Main processing block — Executes for each input record.
* `END` — Executes once after all input records have been processed.

**Example:**

```bash
awk -F',' '
BEGIN {
    print "--- START OF REPORT ---"
}
NR > 1 {
    print "Processing item: " $1
}
END {
    print "--- END OF REPORT ---"
}
' sales.csv
```

These blocks are useful for generating formatted reports with headers, processed records, and summary information.

### 3. Accumulators and Counters

AWK can maintain variables across records to calculate totals, counts, and averages without requiring external loops.

**Example:**

```bash
awk -F',' '
BEGIN {
    count = 0
    total = 0
}
NR > 1 {
    count++
    total += ($2 * $3)
}
END {
    print "Total Items:", count
    print "Grand Total: ₹" total
}
' sales.csv
```

**Important concepts:**

* `count++` — Increments the record counter.
* `total += ($2 * $3)` — Multiplies quantity by price and adds the result to the running total.
* `END` — Prints the final count and total.

Accumulators are useful for calculating sales totals, average response times, and system resource statistics.

### 4. Conditional Logic Using if-else

AWK supports `if-else` statements for making decisions based on field values or calculated results.

**Example:**

```bash
awk -F',' '
NR > 1 {
    item_total = $2 * $3

    if (item_total > 5000) {
        print "[HIGH EXPENSE] " $1 " costs ₹" item_total
    } else {
        print "[LOW EXPENSE] " $1 " costs ₹" item_total
    }
}
' sales.csv
```

**Important operators:**

| Operator | Purpose                  |
| -------- | ------------------------ |
| `>`      | Greater than             |
| `<`      | Less than                |
| `==`     | Equal to                 |
| `!=`     | Not equal to             |
| `>=`     | Greater than or equal to |
| `<=`     | Less than or equal to    |

Conditional logic is useful for identifying high expenses, filtering records, and checking whether system metrics exceed predefined thresholds.

### 5. Built-in AWK Variables

AWK provides built-in variables that describe the current record, its fields, and the input being processed.

**Example:**

```bash
awk -F',' '
NR > 1 {
    print "Line:", NR
    print "File:", FILENAME
    print "Number of Fields:", NF
    print "Full Line:", $0
    print "Last Column:", $NF
}
' sales.csv
```

**Important variables:**

| Variable   | Description                                   |
| ---------- | --------------------------------------------- |
| `$0`       | The entire current input record               |
| `NF`       | Number of fields in the current record        |
| `$NF`      | Value of the last field in the current record |
| `NR`       | Total number of records read so far           |
| `FILENAME` | Name of the current input file                |

These variables make it easier to process variable-length records, inspect files, and analyze structured data.

## 🔧 Important AWK Commands

### Custom Field Separator

```bash
awk -F',' 'NR > 1 { print $1, $3 }' data.csv
```

### Report Generation

```bash
awk 'BEGIN { print "Header" } { print $0 } END { print "Footer" }' file.txt
```

### Cumulative Sum

```bash
awk '{ sum += $1 } END { print "Total:", sum }' data.txt
```

### Conditional Line Inspection

```bash
awk '{ if ($3 > 50) print $1 " Passed"; else print $1 " Failed" }' scores.txt
```

### Extract the Last Column

```bash
awk '{ print $NF }' access.log
```

## 🔄 AWK Processing Flow

```text
       Input File / Stream
                |
                v
           BEGIN Block
       (Executed only once)
                |
                v
       Record Processing Loop
                |
       +----------------------+
       | Split fields using -F|
       | Check patterns       |
       | Apply if-else logic  |
       | Update counters      |
       | Calculate totals     |
       +----------------------+
                |
                v
            END Block
       (Executed only once)
                |
                v
       Processed Output / Report
```

AWK reads input records sequentially, processes their fields, updates variables, and generates output through the defined processing blocks.

## 🧪 Testing Environment

* **Operating System:** Ubuntu on WSL2
* **Shell:** Bash
* **Architecture:** x86_64
* **Tools:** AWK and standard Linux command-line utilities

## 🎯 Practical Applications

Advanced AWK operations are useful for:

* **Log Analysis:** Extracting IP addresses, HTTP status codes, and URLs from Nginx or Apache logs.
* **CSV Processing:** Parsing reports exported from databases and spreadsheets.
* **System Monitoring:** Processing CPU, memory, and other resource utilization metrics.
* **Security Auditing:** Inspecting authentication logs and identifying suspicious activity.
* **Report Generation:** Creating formatted summaries for automated email reports.
* **DevOps Automation:** Building lightweight data-processing pipelines for infrastructure monitoring.

For example, AWK can analyze server metrics stored in a CSV file, identify values exceeding a threshold, and calculate summary statistics in a single command.

## 🔗 Combining AWK with Other Commands

AWK works well with commands such as `grep`, `sort`, and `uniq` to create efficient text-processing pipelines.

**Example:**

```bash
grep 'HTTP/1.1" 200' access.log |
awk '{ print $1, $7 }' |
sort |
uniq -c
```

**Pipeline workflow:**

1. `grep` — Filters log entries containing the specified HTTP response pattern.
2. `awk` — Extracts the IP address (`$1`) and requested URL (`$7`).
3. `sort` — Sorts the extracted IP-URL pairs.
4. `uniq -c` — Counts consecutive identical pairs.

This pipeline helps summarize repeated requests in web server logs.

## ✅ Day 12 Progress

**Scripts Planned: 5 / 5**

* [ ] Custom Field Separators (`-F`)
* [ ] Execution Flow (`BEGIN` and `END`)
* [ ] Accumulation and Counters
* [ ] Conditional Logic (`if-else`)
* [ ] Built-in AWK Variables

## 🚀 Summary

Day 12 strengthened AWK skills for advanced text processing, calculations, conditional filtering, and report generation. These concepts provide a foundation for automating log analysis, monitoring infrastructure, and processing structured data in Linux and DevOps environments.

**Next:** Day 13 — Continue building practical Bash scripting and Linux automation skills.

