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
mkdir asmbb

echo -e `pwd`
echo -e "========================OPEN FOSSIL"
echo ../
./fossil open ../asmbb.fossil --workdir /asmbb
# echo -e "========================GIT"
# git add .
# git commit -m "update"
# git push -f
