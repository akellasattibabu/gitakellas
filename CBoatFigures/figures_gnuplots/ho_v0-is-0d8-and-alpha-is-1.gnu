#!/usr/bin/gnuplot

reset
unset key

set terminal pdf enhanced color font 'Times New Roman, 24' size 9,3
set output 'ho_v0-is-0d8-and-alpha-is-1.pdf'
 
set border linewidth 4
set multiplot layout 1,3

# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize
set style line 1 lc rgb '#0060ad' lt 1 lw 4 pt 7 ps 1

set tics scale 0.5

set xlabel 't'; 
set ylabel 'v'; 
set xtics 0, 10000, 50000
set lmargin at screen 0.1; set rmargin screen 0.48
set label 'a' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
plot 'ho_v0-is-0d8-and-alpha-is-1.dat' using 1:2 notitle with lines linestyle 1 

unset label;
set xlabel 't'; 
set ylabel 'k'
set xtics 0, 10000, 50000
set lmargin at screen 0.6; set rmargin at screen 0.98
set label 'b' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
plot 'ho_v0-is-0d8-and-alpha-is-1.dat' using 1:3 notitle with lines linestyle 1

unset multiplot


