#!/bin/bash
git config --global user.name "baddate"
git config --global user.email "badgatex@outlook.com"

sudo apt install fossil

fossil clone https://asm32.info/fossil/repo/asmbb asmbb.fossil
mkdir asmbb
cd asmbb
fossil open ../asmbb.fossil

git add .
git commit -m "update"
git push -f
