#! /bin/bash
echo -n "Nhap A = "
read A;
echo -n "Nhap B = "
read B;
echo -n "Nhap C = "
read C;
if [ $A = 0 ]; then
    echo "Status: -1 Equation invalid ";
    exit 0;
fi

D=$(( ($B)*($B)-4*($A)*($C) ));
if [ $D = 0 ]; then
    echo -n "x = "
    echo -e "scale=3\n-0.5*($B)/($A)" | bc
    echo "Status: 1 Equation has 1 experimental";	
    exit 0;
fi
if [ $D -gt 0 ]; then
    echo -n "x1 = "
    echo -e "scale=3\n0.5*(-($B)+sqrt($D))/($A)" | bc
    echo -n "x2 = "
    echo -e "scale=3\n0.5*(-($B)-sqrt($D))/($A)" | bc
    echo "Status: 2 Equation has 2 experimentals";	
else
    echo "Status: 0 Equation has no experimental";
fi
