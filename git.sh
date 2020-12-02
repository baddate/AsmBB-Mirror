#!/bin/bash
echo "config git"
git config --global user.name "baddate"
git config --global user.email "badgatex@outlook.com"
echo "install fossil"
sudo apt install fossil

fossil clone https://asm32.info/fossil/repo/asmbb asmbb.fossil
echo "mkdir"
mkdir asmbb
cd asmbb
echo "open fossil"
fossil open ../asmbb.fossil

git add .
git commit -m "update"
git push -f
