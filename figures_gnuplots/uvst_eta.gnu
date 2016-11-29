#!/usr/bin/gnuplot

reset
unset key

set terminal pdf enhanced color font 'Times New Roman, 24' size 10,3
set output 'uvst_eta_1sec-filtered.pdf'
 
set border linewidth 4
set multiplot layout 1,3
set datafile missing "NaN"
# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize
set style line 1 lc rgb '#0060ad' lt 1 lw 4 pt 7 ps 1

set ylabel 'v (cm s^{-1})' offset +1, 0
# set xrange [0:5]
# set yrange [0:4.4]

# set xtics 1, 1, 4
# set ytics 0, 0.4, 1.2
set tics scale 0.5

set xlabel 't (s)'; unset label
set yrange [3:3.9]; set ytics 3, 0.3, 3.9
set xrange [0:30]; set xtics 0, 10, 30
set lmargin at screen 0.1; set rmargin screen 0.34
set label 1 'a' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
# set label 2 '{/Symbol s} = 72 dy cm^{-1}' at graph 0.3, 0.2 font 'Times New Roman, 24'
plot 'DSC_3894_10250-to-11250_v-vs-t.dat' using 1:3 notitle with lines linestyle 1 

set xlabel 't (s)'; unset label
set yrange [0.4:1.3]; set ytics 0.4, 0.3, 1.3
set xrange [0:30]; set xtics 0, 10, 30
unset ylabel
set lmargin at screen 0.42; set rmargin at screen 0.66
set label 1 'b' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
plot 'DSC_3903_10800-to-12000_v-vs-t.dat' using 1:3 notitle with lines linestyle 1

set xlabel 't (min)'; unset label
set yrange [0.1:1]; set ytics 0.1, 0.3, 1
set xrange [0:6]; set xtics 0, 2, 6
set lmargin at screen 0.74; set rmargin screen 0.98
set label 1 'c' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
plot 'DSC_3911_all_1min_filter_v-vs-t.dat' every ::28801::39000 using (($1-960)/60):2 notitle with lines linestyle 1

unset multiplot
