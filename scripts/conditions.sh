#!/bin/bash
set -euo pipefail

FILE="/etc/passwd"

if [ -f "$FILE" ]; then
  echo "Файл $FILE существует"
else
  echo "Файл $FILE не найден"
fi
