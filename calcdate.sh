#!/bin/bash
#
#$ -cwd
#

echo "Calculation of MOID... (wait for a while until done, please)";
./moid.exes
echo "Calculation of relative velocity and angle between";
echo "  the velocity vectors...";
./relvel.exes
echo "Calculation of basic date of passage...";
./basicdate.exes
echo "Creation of the list of passages in year under interest...";
./datelist.exes
echo "Arranging the passages in order of increasing date...";
./arrange.exes

jyear=$(< year.d);

echo " ";
echo "For the input parameters given in files <object.d> and";
echo "<allshowers.d>, the prediction of the passages of object";
echo "through the meteoroid stream in year "`printf "%04d" $jyear`" is written";
echo "in files <datelist"`printf "%04d" $jyear`".dat> and <vectors"`printf "%04d" $jyear`".dat>.";
echo " ";
echo "Program successfully terminated.";
