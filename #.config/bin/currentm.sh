#!/bin/bash

ipadress=$(cat /home/za0s/.config/bin/target/target.txt | awk '{print $1}')
name=$(cat /home/za0s/.config/bin/target/target.txt | awk '{print $2}')


if [ $ipadress ] && [ $name ];
then
  echo "%{F#ff0000}什%{-u} %{F#ffd900}$ipadress | $name"
else
  echo "%{F#ff0000}什%{-u} %{F#ff0000}NO TARGET"
fi
