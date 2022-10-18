#!/bin/bash

c=`/usr/bin/upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage" | awk '{print $2}' | cut -d '%' -f1`


/usr/bin/upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "state" | awk '{print $2}' | grep ^charging >/dev/null

if [ $? -eq 0 ]
then

  if [ $c -le 20 ]
  then

    echo "%{F#A40505}%{F#A40505} $(/usr/bin/upower -i `upower -e | grep 'BAT'` | grep "percentage" | awk '{print $2}')"

  elif [ $c -le 40 ]
  then

    echo "%{F#FEEE00}%{F#ffffff} $(/usr/bin/upower -i `upower -e | grep 'BAT'` | grep "percentage" | awk '{print $2}')"

  elif [ $c -le 60 ]
  then

    echo "%{F#ffffff}%{F#ffffff} $(/usr/bin/upower -i `upower -e | grep 'BAT'` | grep "percentage" | awk '{print $2}')"

  elif [ $c -lt 80 ]
  then

    echo "%{F#7BA405}%{F#ffffff} $(/usr/bin/upower -i `upower -e | grep 'BAT'` | grep "percentage" | awk '{print $2}')"

  else

    echo "%{F#00ff00}%{F#ffffff} $(/usr/bin/upower -i `upower -e | grep 'BAT'` | grep "percentage" | awk '{print $2}')"

  fi

else

  if [ $c -le 20 ]
  then

    echo "%{F#A40505}%{F#A40505} $(/usr/bin/upower -i `upower -e | grep 'BAT'` | grep "percentage" | awk '{print $2}')"

  elif [ $c -le 40 ]
  then

    echo "%{F#FEEE00}%{F#ffffff} $(/usr/bin/upower -i `upower -e | grep 'BAT'` | grep "percentage" | awk '{print $2}')"

  elif [ $c -le 60 ]
  then

    echo "%{F#ffffff}%{F#ffffff} $(/usr/bin/upower -i `upower -e | grep 'BAT'` | grep "percentage" | awk '{print $2}')"

  elif [ $c -lt 80 ]
  then

    echo "%{F#7BA405}%{F#ffffff} $(/usr/bin/upower -i `upower -e | grep 'BAT'` | grep "percentage" | awk '{print $2}')"

  else

    echo "%{F#00ff00}%{F#ffffff} $(/usr/bin/upower -i `upower -e | grep 'BAT'` | grep "percentage" | awk '{print $2}')"

  fi

fi
