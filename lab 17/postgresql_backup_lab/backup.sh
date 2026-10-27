#!/bin/bash

DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="$HOME/Desktop/postgresql_backup_lab/daily_backups"
DB_NAME="transactions_lab"

mkdir -p "$BACKUP_DIR"

pg_dump -U postgres -d "$DB_NAME" -Fc \
  -f "$BACKUP_DIR/${DB_NAME}_${DATE}.dump"

find "$BACKUP_DIR" -name "${DB_NAME}_*.dump" -mtime +7 -delete
