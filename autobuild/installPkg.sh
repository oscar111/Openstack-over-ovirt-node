#! /bin/bash

for line in `cat pkg.cfg`;
do
	echo "-----------Install: $line------------------"
	yum install -y $line
done

rpm -ivh appliance-tools-006.2-1.el6.noarch.rpm
rpm -ivh appliance-tools-minimizer-006.2-1.el6.noarch.rpm
