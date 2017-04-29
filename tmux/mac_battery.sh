#!/bin/sh

/usr/bin/pmset -g ps | awk '{ if (NR == 2) print "Batteries: " $3}' | sed "s/;//g"
