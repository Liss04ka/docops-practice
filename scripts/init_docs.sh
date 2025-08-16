#!/bin/bash
set -euo pipefail

# Определяем корень week2 относительно расположения скрипта
SCRIPT_DIR="$(dirname "$(realpath "$0")")"
WEEK2_ROOT="$(realpath "$SCRIPT_DIR/..")"

cd "$WEEK2_ROOT"

if [ -d "docs" ]; then
  echo "Папка $(pwd)/docs уже существует — ничего не делаю."
  exit 0
fi

mkdir -p docs/{user-guide,api,architecture}

# Создаём/дополняем README.md только если его нет
if [ ! -f "README.md" ]; then
  cat > README.md <<'EOF'
# Проектная документация

Этот репозиторий содержит документацию проекта.
Структура:
- docs/user-guide — руководство пользователя
- docs/api — описание API
- docs/architecture — архитектурные материалы
EOF
fi

# Создаём стартовые разделы
cat > docs/user-guide/intro.md <<'EOF'
# Руководство пользователя — Введение

Опишите целевую аудиторию, требования к окружению и первые шаги.
EOF

cat > docs/api/intro.md <<'EOF'
# API — Введение

Опишите общую концепцию API, схему аутентификации и базовые примеры.
EOF

cat > docs/architecture/intro.md <<'EOF'
# Архитектура — Введение

Опишите ключевые компоненты системы и их взаимодействие.
EOF

echo "Структура документации создана в: $WEEK2_ROOT/docs"
