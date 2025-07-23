#!/bin/bash

cd ~/Lotus-Pack || exit 1

# Проверяем наличие изменений
if [[ $(git status --porcelain) ]]; then
    git add .
    git commit -m "Автосинхронизация: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
else
    echo "Нет изменений для коммита: $(date '+%Y-%m-%d %H:%M:%S')"
fi
