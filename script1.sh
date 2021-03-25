#!/bin/bash

#variables
py2 = $(python2 --version 2>&1 | cut -c 8)
py3 = $(python3 --version | cut -c 8)

#code
echo "Hello"
echo "On your computer were installed newt versions of Python:"
echo "Python2:" $(python2 -V 2>&1 | cut -c 8-)
echo "Python3:" $(python3 -V | cut -c 8-)

if [[ $py3 == $py2 ]]
   then
       echo "It's better to use Python3 "$py3" due to its higher functionality" $py2 
       else
       echo "It's better to use Python3 "$py3" due to its higher functionality" $py2
       
fi