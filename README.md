# 🚀 DevOps in 90 Days

A structured, day-by-day learning journey covering Linux, Shell Scripting, DevOps tools, Cloud, CI/CD, Automation, and more.

---

## 📅 Week 01 — Linux & Shell Scripting

### ✅ Day 1 — Linux Basics

* Learned Linux **history and evolution**
* Understood **Linux distributions**
* Practiced file-handling commands:

  * `ls`, `pwd`, `cd`
  * `cp`, `mv`, `rm`, `mkdir`, `rmdir`
  * Viewing files: `cat`, `less`, `more`, `head`, `tail`
* Explored **permission commands**: `chmod`, `chown`

---

### ✅ Day 2 — Shell Scripting & Bash Fundamentals

* Introduction to **Shell & Bash**
* Creating and executing scripts:

  * `touch script.sh`
  * `chmod +x script.sh`
  * `./script.sh`
* Learned about:

  * **Variables** (User-defined & Environment)
  * `export` and `source`
  * `echo` with flags (`-e`, newline, tab, colors)
  * Shebang (`#!/bin/bash`)
  * Input/output operations
* Wrote basic automation scripts

---

### 🟡 Day 3 — Bash Arrays, Redirection & Exit Status

* **Arrays in Bash**:

  * `arr=(val1 val2 val3)`
  * Access: `${arr[0]}`, `${arr[@]}`
  * Size: `${#arr[@]}`
  * Modify: `arr[1]=new_val`
* **Associative arrays**:

  * `declare -A map`
  * `map[key]=value`
  * Access: `${map[key]}`
* **Redirection**:

  * Output/input: `>`, `>>`, `<`, `<<<`
  * Errors: `2>`, `2>>`
  * Combined: `&>`
* **Exit status**:

  * `$?` for last command
  * `0` = success, non-zero = failure

---

### 🟦 Day 4 — Command Chaining, Pipes & Grouping

* **Command chaining**:

  * `cmd1 ; cmd2` — run sequentially
  * `cmd1 && cmd2` — run if previous succeeds
  * `cmd1 || cmd2` — run if previous fails
  * Mixed: `cmd1 && cmd2 || cmd3`
* **Pipes (`|`)**:

  * Send output of one command to another
  * Example: `ps aux | grep nginx`
* **Finding command location**:

  * `command -v <cmd>`
* **Command grouping**:

  * Subshell: `( command1; command2 )`
  * Same-shell: `{ command1; command2; }`

---

## 📘 Notes

This repository tracks daily progress with clear summaries and code examples.

---

## ⭐ Keep Learning

Update this file daily — consistency builds mastery!
