#!/usr/bin/gnuplot

reset

set terminal pdf enhanced color font 'Times New Roman, 24' size 4,3
set output 'lifetime.pdf'
set border linewidth 3

# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize
set style line 1 lc rgb '#0060ad' lt -1 lw 2 pt 4 ps 0.8
set style line 2 lc rgb '#dd181f' lt 0 lw 2 pt 6 ps 1
set style line 3 lc rgb '#00ad06' lt 1 lw 2 pt 9 ps 1
set style line 4 lc rgb 'black' lt 2 lw 4 pt 0 ps 1

# fc = fillcolor; fs = fillstyle

set xlabel '{t (min)' offset 0, +0.5
set ylabel 'v/v_{0}' offset +1.5, 0
set xrange [0:20]
set yrange [0.3:1.1]

set xtics 0, 6, 18
set ytics 0.2, 0.3, 1.1
set tics scale 0.5
set grid front
unset grid

plot 'DSC_0968_vvst_4secavg_cmps.dat' every 10 using 1:2 notitle with points linestyle 1,\
     'DSC_0969_vvst_4secavg_cmps.dat' every 10 using 1:2 notitle with points linestyle 2,\
     'DSC_0970_vvst_4secavg_cmps.dat' every 10 using 1:2 notitle with points linestyle 3,\
     0.9119*exp(-0.0288*x) notitle with lines linestyle 4


