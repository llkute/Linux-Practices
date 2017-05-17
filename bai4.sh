#! /bin/bash
echo -n "Input number n: "
read n
i=1
mkdir -p ./my-folder
rm -rf ./my-folder
while [ $i -le $n ]; do
	mkdir -p ./my-folder/current_user_$i
	i=$(($i + 1 ))
done