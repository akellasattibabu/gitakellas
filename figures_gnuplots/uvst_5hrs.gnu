#!/usr/bin/gnuplot

reset

set terminal pdf enhanced color font 'Times New Roman, 24' size 9,6
set output 'uvst_5hrs.pdf'
set border linewidth 3

# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize
set style line 1 lc rgb '#0060ad' lt -1 lw 2 pt 0 ps 1
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 6 ps 1
set style line 201 lc rgb '#000000' lt 1 lw 2 # black

# fc = fillcolor; fs = fillstyle

set object 1 rectangle from 0, 2.5 to 0.3, graph 1 back fc rgb 'red' fs solid 0.1 noborder

set object 2 rectangle from 0.3, 0.3 to 4.2, 2.5 back fc rgb 'blue' fs solid 0.1 noborder

set object 3 rectangle from 4.2, 0 to 6, 2.5 back fc rgb 'green' fs solid 0.1 noborder
set datafile missing 'NaN'

set multiplot

# --- whole plot ---
set ytics 0, 1, 5
set size 1, 1
set origin 0, 0
set xlabel '{t (hrs)' offset 0, +0.5
set ylabel 'v (cm/s)' offset +1.5, 0

plot 'uvst_5hrs.dat' every 25 using 1:2 notitle with points linestyle 1

# --- inset plot 01 ---
set size 0.35, 0.4
set origin 0.06, 0.575
set xlabel 't (sec)' font 'Times New Roman, 16'
set ylabel 'v (cm/s)' offset +3, 0 font 'Times New Roman, 16'
set xtics 8, 1, 10 font 'Times New Roman, 16'
set ytics 4, 0.2, 5 font 'Times New Roman, 16'

set object 1 rectangle from graph 0, graph 0 to graph 1, graph 1 back fc rgb 'red' fs solid 0.1 noborder

# set format x '%s' 

plot 'uvst_5hrs.dat' every ::65::85 using ($1*3600):($2) notitle with lines linestyle 2

# --- inset plot 02 ---
set size 0.36, 0.4
set origin 0.33, 0.575
set xlabel 't (min)'
set ylabel ''
set xtics 98, 0.1, 98.3
set ytics 1.4, 0.05, 1.6
set object 2 rectangle from graph 0, graph 0 to graph 1, graph 1 back fc rgb 'blue' fs solid 0.1 noborder

plot 'uvst_5hrs.dat' every ::45461::45608 using ($1*60):($2) notitle with lines linestyle 2

# --- inset plot 03 ---
set size 0.35, 0.4
set origin 0.63, 0.575
set xlabel 't (min)'
set ylabel ''
set xtics 324, 0.5, 325.6
set ytics 0, 0.6, 2
set object 3 rectangle from graph 0, graph 0 to graph 1, graph 1 back fc rgb 'green' fs solid 0.1 noborder

plot 'uvst_5hrs.dat' every ::150251::151000 using ($1*60):($2) notitle with lines linestyle 2

unset multiplot

