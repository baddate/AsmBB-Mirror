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
f1=fossil
f2=fossil-linux-x64-2.13.tar.gz
f3=log.gz
f4=tar.log.gz
f5=asmbb.fossil
echo "============="
which $f1
echo "============="
if [  -f "$f1" ]
then
rm -f $f1
elif [  -f "$f2" ]
then
rm -f $f2
elif [  -f "$f3" ]
then
rm -f $f3
elif [  -f "$f4" ]
then
rm -f $f4
elif [  -f "$f5" ]
then
rm -f $f5
else
echo "===========NONE======="
fi

cat .gitignore
echo -e "========================LS"
ls -a
echo -e "========================GIT"
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
