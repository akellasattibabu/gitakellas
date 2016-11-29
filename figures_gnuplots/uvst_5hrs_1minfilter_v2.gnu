#!/usr/bin/gnuplot

reset

set terminal pdf enhanced color font 'Times New Roman, 30' size 9,4.5
set output 'uvst_5hrs_1minfilter_nolabel_v2.pdf'
set border linewidth 3

# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize
set style line 1 lc rgb '#0060ad' lt -1 lw 2 pt 0 ps 1
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 6 ps 1
set style line 201 lc rgb '#000000' lt 1 lw 2 # black

# fc = fillcolor; fs = fillstyle

set object 1 rectangle from graph 0, graph 0 to 0.7, graph 1 back fc rgb 'red' fs transparent solid 0.1 noborder

set object 2 rectangle from 0.7, graph 0 to 4.5, graph 1 back fc rgb 'blue' fs transparent solid 0.1 noborder

set object 3 rectangle from 4.5, graph 0 to 6, graph 1 back fc rgb 'green' fs transparent solid 0.1 noborder

set datafile missing 'NaN'

# --- whole plot ---
set ytics 0, 1, 5
set size 1, 1
set origin 0, 0
set xlabel '{t (hrs)' offset 0, +0.5
set ylabel 'v (cm/s)' offset +1.5, 0

plot 'uvst_5hrs_1minfilter.dat' every 25 using 1:2 notitle with points linestyle 1

