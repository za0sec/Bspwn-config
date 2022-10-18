#!/bin/bash

#(/usr/sbin/ifconfig wlp4s0 | grep "inet " )2>/dev/null

#a=$?

#if [ $a == 0 ]; then

echo "%{F#ff0000} %{F#ffd900}$(/usr/sbin/ifconfig wlp1s0 | grep "inet " | awk '{print $2}')%{u-}"

#else

#echo "%{F#ff0000} %{F#ffd900}$(/usr/sbin/ifconfig enp5s0 | grep "inet " | awk '{print $2}')%{u-}"

#fi
