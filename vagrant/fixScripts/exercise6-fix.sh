#!/bin/bash
#add fix to exercise6-fix here
#check you have at least 2 params
if [ "$#" -lt 2 ]; then
    echo "You must enter minimum 2 command line arguments"
fi
for destination; do true; done

host=`hostname`
echo "host is $host"
server1="server1"
server2="server2"
#find remote hostname
if [ "$host" == "$server1" ]; then
   remote="server2"
fi
if [ "$host" == "$server2" ]; then
   remote="server1"
fi
#Go over the parameters and copy to destination folder
var=0
for ((i=1; i<"$#"; i++))
do
 i="$i"
 scp "${!i}" vagrant@$remote:/$destination/
 var=$((var+$(stat -c%s "${!i}")))
done
echo "$var"