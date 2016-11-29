#!/usr/bin/gnuplot

reset

set terminal pdf enhanced color font 'Times New Roman, 24' size 4,3
set output 'urvsr_steady.pdf'
set border linewidth 3

# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize
set style line 1 lc rgb '#0060ad' lt -1 lw 2 pt 2 ps 0.5
set style line 2 lc rgb '#dd181f' lt 0 lw 2 pt 7 ps 0.5
# set style line 3 lc rgb '#00ad06' lt 1 lw 2 pt 9 ps 1
set style line 4 lc rgb 'black' lt 2 lw 4 pt 0 ps 1

# fc = fillcolor; fs = fillstyle

set xlabel '{r (cm)' offset 0, +0.5
set ylabel 'v(r) (cm s^{-1})' offset +1.5, 0
set xrange [0.4:6]
set yrange [0.4:2.1]
set logscale xy 10
set xtics add (0.5, 2, 5) 
set ytics add (0.5, 2)
set label 'r^{-0.61}' at 2.3, 1.3
set tics scale 0.5
set grid front
unset grid

plot 'rvsvr_all.dat' using 1:2 notitle with points linestyle 1,\
     'rvsvr_bin.dat' using 1:2 notitle with points linestyle 2,\
     1.33*x**(-0.609) notitle with lines linestyle 4


