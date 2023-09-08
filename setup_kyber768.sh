#!/bin/bash

echo "Insert which part of CRYSTALS-kyber768 do you want to simulate:"
echo "	- keygen"
echo "	- enc"
echo "	- dec"
read kyber768

folder=$kyber768

if [ "$folder" != "keygen" ] && [ "$folder" != "enc" ] && [ "$folder" != "dec" ]
then
	echo "Wrong input: simulation stopped!"
	exit -1
fi


source $QUESTA_PATH
export PULP_RISCV_GCC_TOOLCHAIN=$RISCV_PATH
export PATH=$PULP_RISCV_GCC_TOOLCHAIN/bin:$PATH

source pulp-runtime/configs/pulpissimo.sh

cd pulpissimo
make checkout
source setup/vsim.sh
env | grep VSIM
make clean build  



cd ../test/kyber768/$folder
make clean all
make dis > kyber768_$folder.s
make -f Makefile run
