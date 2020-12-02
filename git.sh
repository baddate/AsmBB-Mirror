#!/bin/bash
echo -e "========================CONFIG GIT"
git config --global user.name "baddate"
git config --global user.email "badgatex@outlook.com"
echo -e "========================INSTALL FOSSIL"

#sudo wget -c https://www.fossil-scm.org/fossil/uv/fossil-src-2.13.tar.gz
#tar zxvf fossil-src-2.13.tar.gz
#cd fossil-2.13
wget -c https://www.fossil-scm.org/fossil/uv/fossil-linux-x64-2.13.tar.gz
tar zxvf fossil-linux-x64-2.13.tar.gz > tar.log.gz
echo -e "========================LS"
chmod a+x ./fossil
./fossil open https://asm32.info/fossil/repo/asmbb
ls -l
 echo -e "========================CLONE REPO"

./fossil clone https://asm32.info/fossil/repo/asmbb asmbb.fossil 1> log.gz

 echo -e "========================MKDIR"
# mkdir asmbb
# mv fossil asmbb
# mv asmbb.fossil asmbb
# echo -e "========================CD"
# cd asmbb
# sudo chmod 777 asmbb.fossil
echo -e "========================OPEN FOSSIL"
ls -l
# ./fossil open asmbb.fossil --workdir ./asmbb
echo -e ".fossil\n fossil\n *.gz" > .gitignore
file="fossil"



if [ ! -f "fossil" ]; then
rm -f fossil
elif [ ! -f "fossil-linux-x64-2.13.tar.gz" ]; then
rm -f fossil-linux-x64-2.13.tar.gz
elif [ ! -f "log.gz" ]; then
rm -f log.gz
elif [ ! -f "tar.log.gz" ]; then
rm -f tar.log.gz
else
echo "===========NONE======="
fi

cat .gitignore
echo -e "========================LS"
ls -a
git add .
git commit -m "update on `date`"
git push -f
# sudo rm -f fossil fossil-linux-x64-2.13.tar.gz asmbb.fossil
# ls -l ./asmbb
# # echo -e "========================MV"
# # sudo mv asmbb/ ../ -f
# # ls -l
# echo -e "========================GIT"
# git status
# # git add asmbb/
# # git commit -m "update"
# # git push
