#!/bin/bash
set -euo pipefail

echo "Ищем скрипты в: $(pwd)"
count=0
for file in *.sh; do
  if [ -f "$file" ]; then
    echo "Найден скрипт: $file"
    count=$((count+1))
  fi
done
echo "Всего скриптов: $count"
