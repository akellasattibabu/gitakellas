#!/usr/bin/gnuplot

reset

set terminal pdf enhanced color font 'Times New Roman, 24' size 4,3
set output 'freqvst.pdf'
 
set border linewidth 3

# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize
set style line 1 lc rgb '#0060ad' lt 0 lw 2 pt 7 ps 1

# fc = fillcolor; fs = fillstyle
set style rectangle back fc rgb 'black' fs solid 0.1 noborder

set object rectangle from first 0, first 0 to second 5, second 1.5

set xlabel 't (min)' offset 0, +0.5
set ylabel 'f (s^{-1})' offset +1.5, 0
set xrange [0:18]
set yrange [0:1.5]

set xtics 0, 5, 15
set ytics 0, 0.4, 1.2
set tics scale 0.5
set grid front
unset grid

plot '_DSC1095_freqvst.dat' using 1:2 notitle with points linestyle 1


