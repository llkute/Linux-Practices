#! /bin/bash

TH1 () {
	echo -n "Input the number of '*': "
	read n;
	i=1;
	while [ $i -le $n ]
	do
	   j=1
	   while [ $j -le $i ]; do
	    	#statements
	    	echo -n "*"
	    	j=$(($j+1));
	    done 
	    echo ""
	   i=$(($i+1));
	done
}

TH2 () {
	echo -n "Input the number of array 1-2-3-4-5: "
	read n;
	i=1;
	while [ $i -le $n ]
	do
	   echo "1	2	3	4	5"
	   i=$(($i+1));
	done
}

th=1
while [ "$th" != "exit" ] 
do
	echo -n "Input case ( 1 or 2 or exit): "
	read th
	case "$th" in
	"1") 
		TH1
	;;	
	"2") 
		TH2
	;;
	esac
done	