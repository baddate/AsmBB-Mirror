#!/bin/bash
echo -e "========================CONFIG GIT"
git config --global user.name "baddate"
git config --global user.email "badgatex@outlook.com"
echo -e "========================INSTALL FOSSIL"

#sudo wget -c https://www.fossil-scm.org/fossil/uv/fossil-src-2.13.tar.gz
#tar zxvf fossil-src-2.13.tar.gz
#cd fossil-2.13
wget -c https://www.fossil-scm.org/fossil/uv/fossil-linux-x64-2.13.tar.gz
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
mv fossil asmbb
mv asmbb.fossil asmbb
ls -l

cd asmbb
sudo chmod 777 asmbb.fossil
echo -e "========================OPEN FOSSIL"
./fossil open asmbb.fossil

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
