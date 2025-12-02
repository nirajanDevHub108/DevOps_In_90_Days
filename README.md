


# 🚀 DevOps in 90 Days

A structured, day-by-day learning journey covering Linux, Shell Scripting, DevOps tools, Cloud, CI/CD, Automation, and more.

---

## 📅 Week 01 — Linux & Shell Scripting

### ✅ Day 1 — Linux Basics  
- Learned about **Linux history and evolution**  
- Understood **Linux distributions**  
- Practiced basic file-handling commands:  
  - `ls`, `pwd`, `cd`  
  - `cp`, `mv`, `rm`, `mkdir`, `rmdir`  
  - File viewing: `cat`, `less`, `more`, `head`, `tail`  
- Explored basic **permission commands**: `chmod`, `chown`  

---

### ✅ Day 2 — Shell Scripting & Bash Fundamentals  
- Introduction to **Shell & Bash**  
- Creating and executing shell scripts using:  
  - `touch script.sh`  
  - `chmod +x script.sh`  
  - `./script.sh`  
- Learned about:  
  - **Variables** (User-defined & Environment)  
  - `export` and `source`  
  - Using `echo` with flags (`-e`, newline, tab, colors, etc.)  
  - Script shebang (`#!/bin/bash`)  
  - Simple input/output operations  
- Wrote basic automation scripts  

---
### 🟡 Day 3 — Bash Arrays, File Redirection & Exit Status
- Learned about **arrays in Bash**:  
  - Indexed arrays: `arr=(value1 value2 value3)`  
  - Accessing elements: `${arr[0]}`, `${arr[@]}`, `${#arr[@]}`  
  - Modifying elements: `arr[1]=new_value`  
- Explored **associative arrays** (key-value pairs):  
  - Declaring: `declare -A assoc_array`  
  - Assigning values: `assoc_array[key]=value`  
  - Accessing values: `${assoc_array[key]}`, `${!assoc_array[@]}`  
- **File redirection and descriptors**:  
  - Standard input/output: `>`, `>>`, `<` ,`<<<`
  - Redirecting stderr: `2>`, `2>>`  
  - Combining stdout and stderr: `&>`, `2>&1`  
- Learned about **exit status**:  
  - `$?` stores the exit status of the last command  
  - `0` indicates success, non-zero indicates failure  
  - Using `exit` in scripts to return specific status  
- Applied these concepts in scripts to handle **arrays, I/O redirection, and error checking**.

---

## 📘 Notes   
This repository tracks daily progress with clear summaries, examples, and code snippets to support a complete 90-day DevOps roadmap.

---

## ⭐ Keep Learning  
Update this file as your journey continues—consistency is the key to mastering DevOps!
