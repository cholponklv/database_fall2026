#!/bin/bash
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="$HOME/backups/postgresql"
DB_NAME="lab17"

mkdir -p "$BACKUP_DIR"

pg_dump -h localhost -U cholponklv -d $DB_NAME -Fc > "$BACKUP_DIR/${DB_NAME}_${DATE}.dump"

find "$BACKUP_DIR" -name "${DB_NAME}_*.dump" -mtime +7 -delete
