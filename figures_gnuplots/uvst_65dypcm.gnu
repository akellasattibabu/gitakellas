#!/usr/bin/gnuplot

reset
unset key

set terminal pdf enhanced color font 'Times New Roman, 24' size 9,3
set output 'uvst_65dypcm.pdf'
 
set border linewidth 4
set multiplot layout 1,3

# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize
set style line 1 lc rgb '#0060ad' lt 1 lw 4 pt 7 ps 1

set ylabel 'v (cm s^{-1})' offset 0, 0
# set xrange [0:5]
set yrange [0:3]

set ytics 0, 1, 3
set tics scale 0.5

set xlabel ' '; unset label
set xtics 0, 20, 40
set lmargin at screen 0.1; set rmargin screen 0.39
set label 'a' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
plot '_DSC1093_01_vvst_cmps.dat' using 1:2 notitle with lines linestyle 1 

set xlabel 't (s)'; unset label
set xtics 0, 20, 60
set lmargin at screen 0.39; set rmargin at screen 0.68
set format y ''; unset ylabel
set label 'b' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
plot '_DSC1095_01_vvst_cmps.dat' using 1:2 notitle with lines linestyle 1

set xlabel ' '; unset label
set xtics 0, 30, 90
set lmargin at screen 0.68; set rmargin screen 0.97
set label 'c' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
plot '_DSC1095_03_vvst_cmps.dat' using 1:2 notitle with lines linestyle 1

unset multiplot


