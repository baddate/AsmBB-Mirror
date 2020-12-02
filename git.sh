#!/bin/bash
echo -e "========================CONFIG GIT"
git config --global user.name "baddate"
git config --global user.email "badgatex@outlook.com"
echo -e "========================INSTALL FOSSIL"
mkdir fos
sudo wget -c https://www.fossil-scm.org/home/uv/fossil-linux-x64-2.14-preview-20201125.tar.gz
tar zxvf fossil-linux-x64-2.14-preview-20201125.tar.gz
chmod +x fossil

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
