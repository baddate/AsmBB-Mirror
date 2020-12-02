#!/bin/bash
echo -e "========================CONFIG GIT"
git config --global user.name "baddate"
git config --global user.email "badgatex@outlook.com"
echo -e "========================INSTALL FOSSIL"

#sudo wget -c https://www.fossil-scm.org/fossil/uv/fossil-src-2.13.tar.gz
#tar zxvf fossil-src-2.13.tar.gz
#cd fossil-2.13
sudo wget -c https://www.fossil-scm.org/fossil/uv/fossil-linux-x64-2.13.tar.gz
tar zxvf fossil-linux-x64-2.13.tar.gz
echo -e "========================LS"
ls
chmod a+x ./fossil

echo -e "========================CLONE REPO"

sudo ./fossil clone https://asm32.info/fossil/repo/asmbb asmbb.fossil

echo -e "========================MKDIR"

# MY_VAR='/home/runner/work/AsmBB-Mirror/AsmBB-Mirror/fossil'
# export MY_VAR




export PATH=$PATH:/home/runner/work/AsmBB-Mirror/AsmBB-Mirror/fossil
echo $PATH
mkdir asmbb
echo -e "========================OPEN FOSSIL"
sudo ./fossil open asmbb.fossil -f

echo -e "========================LS"
sudo rm -f fossil fossil-linux-x64-2.13.tar.gz asmbb.fossil
ls -l asmbb
echo -e "========================MV"
sudo mv asmbb/ ../ -f
ls -l
echo -e "========================GIT"
git status
# git add asmbb/
# git commit -m "update"
# git push
