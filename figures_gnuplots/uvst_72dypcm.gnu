#!/usr/bin/gnuplot

reset
unset key

set terminal pdf enhanced color font 'Times New Roman, 24' size 9,3
set output 'uvst_72dypcm.pdf'
 
set border linewidth 4
set multiplot layout 1,3

# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize
set style line 1 lc rgb '#0060ad' lt 1 lw 4 pt 7 ps 1

set ylabel 'v (cm s^{-1})' offset +1, 0
set xrange [0:5]
set yrange [2.4:4.4]

set xtics 1, 1, 4
# set ytics 0, 0.4, 1.2
set tics scale 0.5

set xlabel ' '; unset label
set lmargin at screen 0.1; set rmargin screen 0.39
set label 'a' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
plot 'DSC_0969_vvst_cmps_257s.dat' using 1:2 notitle with lines linestyle 1 

set xlabel 't (s)'; unset label
set lmargin at screen 0.39; set rmargin at screen 0.68
set format y ''; unset ylabel
set label 'b' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
plot 'DSC_0969_vvst_cmps_434s.dat' using 1:2 notitle with lines linestyle 1

set xlabel ' '; unset label
set lmargin at screen 0.68; set rmargin screen 0.97
set label 'c' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
plot 'DSC_0969_vvst_cmps_951s.dat' using 1:2 notitle with lines linestyle 1

unset multiplot


