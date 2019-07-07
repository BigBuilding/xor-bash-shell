#!/bin/sh
function ord {
        printf %d "'$1";
}
str="HB8sK28tbns"
key="qwera"
#len
keylen=`echo ${#key}`
#echo $keylen
strlen=`echo ${#str}`
#echo $strlen
n=$[strlen/keylen]
m=$[strlen%keylen]
echo $n
echo $m
tmp=''
for((i=1;i<=n;i++));
do 
tmp=`echo $tmp$key`
done
keyo=`echo $tmp${key:0:m}`
echo "++++++++++++"
ret=''
for((i=0;i<strlen;i++));
do 
t=`echo ${str:$i:1}`
g=`echo ${keyo:$i:1}`
zz=`ord $t`
xx=`ord $g`
cc=`echo $[zz^xx]`
vv=`echo $cc | awk '{printf("%c", $1)}'`
#echo $ret
echo $vv
#$ret=`echo $ret$vv`
done
