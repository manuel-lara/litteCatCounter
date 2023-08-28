#!/bin/bash
if [[ $1 == "" ]]
then
    echo "Pass app path to test as argument "
    exit 0
else
    echo "Starting test 1 of 5..."
fi


function check() {
if [[ $1 == $2 || $2 == "no input or args, BYE" ]]
then
    echo "PASS"
else
    echo "FAIL"
fi
}


echo
echo
arg="cat"
exp=1
echo "TEST 1 args: ${arg}" 
echo "EXPECTED: $exp"
echo "ACTUAL: "
exe="${1} ${arg}"
actual=$(eval $exe)
echo $actual


echo
echo
arg='cat notcat dog cat'
echo "TEST 2 args: ${arg}"
exp=2
echo "EXPECTED: $exp"
echo "ACTUAL: "
exe="${1} ${arg}"
actual=$(eval $exe)
echo $actual
check "$exp" "$actual"


echo
echo
arg="cat.txt"
exp=4
echo "TEST 3 args: ${arg}"
echo "EXPECTED: $exp"
echo "ACTUAL: "
exe="${1} ${arg}"
actual=$(eval $exe)
echo $actual
check "$exp" "$actual"


echo
echo
arg="cat2.txt"
exp=0
echo "TEST 4 args: ${arg}"
echo "EXPECTED: $exp"
echo "ACTUAL: "
exe="${1} ${arg}"
actual=$(eval $exe)
echo $actual
check "$exp" "$actual"


echo
echo
arg=""
exp="no input or args, BYE"
echo "TEST 5 args: ${arg}"
echo "EXPECTED: $exp"
echo "ACTUAL: "
exe="${1} ${arg}"
actual=$(eval $exe)
echo $actual
check "$exp" "$actual"