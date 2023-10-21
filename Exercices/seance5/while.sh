#!/bin/bash
N=0

while [ $N -lt 10 ]
do
	echo "on est à $N"
	N=$(expr $N + 1)
done

echo "on a fini"