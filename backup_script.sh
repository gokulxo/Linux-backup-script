#!/bin/bash

# Defining variables

BACKUP_SRC="/tmp/"
BACKUP_DST="/backup"
BACKUP_DATE=$(date +%Y%m%d%H%M%S)
BACKUP_FILENAME="backup_$BACKUP_DATE.tar.gz"
mkdir -p "$BACKUP_DST/$BACKUP_DATE"

# archive the source dirctory

tar -czf "$BACKUP_DST/$BACKUP_DATE/$BACKUP_FILENAME" "$BACKUP_SRC"
# verify the backup was created successfully

if [ $? -eq 0 ]; then
	echo "backup sucessfully:$BACKUP_FILENAME"
else
	echo "backup failed"
fi
