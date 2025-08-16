#!/bin/bash
set -euo pipefail

OUTFILE="system_report.txt"

{
  echo "===== Системный отчёт ====="
  echo "Дата: $(date)"
  echo "Имя хоста: $(hostname)"
  echo "Версия ядра: $(uname -r)"
  echo
  echo "Свободное место на дисках:"
  df -h
  echo
  echo "Использование памяти:"
  free -h || true
  echo
  echo "Топ-5 процессов по памяти:"
  ps aux --sort=-%mem | head -n 6
} > "$OUTFILE"

echo "Отчёт сохранён в $(pwd)/$OUTFILE"
