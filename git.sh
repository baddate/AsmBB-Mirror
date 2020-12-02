#!/bin/bash
echo -e "========================CONFIG GIT"
git config --global user.name "baddate"
git config --global user.email "badgatex@outlook.com"
echo -e "========================INSTALL FOSSIL"
sudo apt-get install fossil

echo -e "========================CLONE REPO"
fossil help
# fossil clone https://asm32.info/fossil/repo/asmbb asmbb.fossil

echo -e "========================MKDIR"
mkdir asmbb
cd asmbb
echo -e `pwd`
echo -e "========================OPEN FOSSIL"
fossil open ../asmbb.fossil

git add .
git commit -m "update"
git push -f
