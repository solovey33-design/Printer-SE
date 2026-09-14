#!/bin/bash

mkdir -p ~/klipper-backup
cp -r ~/printer_data/config/* ~/klipper-backup/
cd ~/klipper-backup
if [ ! -d .git ]; then
    git init
    git config user.name "Klipper Backup"
    git config user.email "backup@klipper.local"
fi

git add .
git commit -m "Автоматичний бекап конфігурації Klipper: $(date +'%Y-%m-%d %H:%M:%S')"
git branch -M main

TOKEN=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
USER="solovey33-design"
REPO="Printer-SE"

git push -f https://solovey33-design:${TOKEN}@github.com/solovey33-design/Printer-SE.git main


