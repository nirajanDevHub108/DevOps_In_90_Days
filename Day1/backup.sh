#!/bin/bash

#creating a backup sh file to take backup of file or directory

#create a backup directory
create_backupDir(){
	backup_dir="backup_$(date +%Y%m%d_%H%M%S)"
	mkdir "$backup_dir"
	echo "✔ Backup directory created: $backup_dir"
}

# Function 2: Copy files to backup directory

copy_files(){
	for file in "$@"; do
		if [ -f "$file" ]; then
			cp "$file" "$backup_dir/"
			echo "✔ Copied: $file"
		else
			echo "✘ File not found: $file"
		fi
	done
}

# Function 3: Log backup details
log_backup() {
    echo "$(date) - Backup created: $backup_dir - Files: $*" >> backup.log
    echo "✔ Log written to backup.log"
}
# MAIN SCRIPT
create_backupDir
copy_files "$@"      # All arguments passed to script
log_backup "$@"      # Log all files

echo "🎉 Backup completed successfully!"
