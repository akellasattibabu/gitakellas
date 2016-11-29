#!/usr/bin/gnuplot

reset

set terminal pdf enhanced color font 'Times New Roman, 30' size 9,6
set output 'uvst_5hrs_1minfilter_nolabel.pdf'
set border linewidth 3

# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize
set style line 1 lc rgb '#0060ad' lt -1 lw 2 pt 0 ps 1
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 6 ps 1
set style line 201 lc rgb '#000000' lt 1 lw 2 # black

# fc = fillcolor; fs = fillstyle

set object 1 rectangle from graph 0, graph 0 to 0.7, graph 1 back fc rgb 'red' fs solid 0.1 noborder

set object 2 rectangle from 0.7, graph 0 to 4.5, 2 back fc rgb 'blue' fs solid 0.1 noborder

set object 3 rectangle from 4.5, graph 0 to 6, 0.75 back fc rgb 'green' fs solid 0.1 noborder
set datafile missing 'NaN'

set multiplot

# --- whole plot ---
set ytics 0, 1, 5
set size 1, 1
set origin 0, 0
set xlabel '{t (hrs)' offset 0, +0.5
set ylabel 'v (cm/s)' offset +1.5, 0

plot 'uvst_5hrs_1minfilter.dat' every 25 using 1:2 notitle with points linestyle 1

# --- inset plot 01 ---
set size 0.35, 0.4
set origin 0.06, 0.575
set xlabel 't (sec)' font 'Times New Roman, 20'
set ylabel 'v (cm/s)' offset +3, 0 font 'Times New Roman, 20'
set xrange [0:8]; set xtics 0, 2, 8 font 'Times New Roman, 20'
set yrange [2.3:3.5]; set ytics 2.3, 0.4, 3.5 font 'Times New Roman, 20'

set object 1 rectangle from graph 0, graph 0 to graph 1, graph 1 back fc rgb 'red' fs solid 0.1 noborder
# set label 1 '{/Symbol x} > 1' at 9.5, 4.8
# set format x '%s' 

plot 'DSC_3816_v-vs-t.dat' every ::31880::32073 using ($1-1275.2):2 notitle with lines linestyle 2

# --- inset plot 02 ---
set size 0.36, 0.4
set origin 0.33, 0.575
set xlabel 't (s)'
set ylabel ''; 
set xrange [0:18]; set xtics 0, 4, 18
set yrange [0.9:2.1]; set ytics 0.9, 0.4, 2.1
set object 2 rectangle from graph 0, graph 0 to graph 1, graph 1 back fc rgb 'blue' fs solid 0.1 noborder
# set label 2 '{/Symbol x} \~ 1' at 98.15, 1.55

plot 'uvst_5hrs.dat' every ::47524::47677 using (($1-1.7022)*3600):($2) notitle with lines linestyle 2

# --- inset plot 03 ---
set size 0.35, 0.4
set origin 0.63, 0.575
set xlabel 't (min)'
set ylabel ''
set xrange [0:1.5]; set xtics 0, 0.5, 1.5
set yrange [0:2]; set ytics 0, 0.5, 2
set object 3 rectangle from graph 0, graph 0 to graph 1, graph 1 back fc rgb 'green' fs solid 0.1 noborder
# set label 3 '{/Symbol x} < 1' at 324.4, 1.5

plot 'uvst_5hrs.dat' every ::150251::151000 using (($1-5.402)*60):($2) notitle with lines linestyle 2

unset multiplot

