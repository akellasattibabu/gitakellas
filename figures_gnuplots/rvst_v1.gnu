#!/usr/bin/gnuplot

reset

set terminal pdf enhanced color font 'Times New Roman, 24' size 4,3
set output 'rvst_transient.pdf'
set border linewidth 3

# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize

set style line 1 lt -1 lw 2 pt 4 ps 0.8
set style line 2 lt 0 lw 2 pt 6 ps 0.8
set style line 3 lt 1 lw 2 pt 8 ps 0.8
set style line 4 lt 2 lw 2 pt 10 ps 0.8
set style line 5 lt 3 lw 2 pt 12 ps 0.8
set style line 6 lc rgb 'black' lt 4 lw 4 pt 1 ps 1

# fc = fillcolor; fs = fillstyle

set xlabel '{t (s)' offset 0, +0.5
set ylabel 'R(t) (cm)' offset +3, 0
set xrange [0.005:1]
set yrange [0.5:9]
set logscale xy 10
# set xtics add (0.5, 2, 5) 
set ytics add (0.5, 2, 5)
set label 't^{1/2}' at 0.05, 3
set tics scale 0.5
set grid front
unset grid

plot 'rvst_noSDS_cmvss.dat' using 1:2 notitle with points linestyle 1,\
     'rvst_noSDS_cmvss.dat' using 3:4 notitle with points linestyle 2,\
     'rvst_noSDS_cmvss.dat' using 5:6 notitle with points linestyle 3,\
     'rvst_noSDS_cmvss.dat' using 7:8 notitle with points linestyle 4,\
     'rvst_noSDS_cmvss.dat' using 11:12 notitle with points linestyle 5,\
     7.85*x**(0.5) notitle with lines linestyle 6


