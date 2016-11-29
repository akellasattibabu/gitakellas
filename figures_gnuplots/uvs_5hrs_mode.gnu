#!/usr/bin/gnuplot

reset

set terminal pdf enhanced color font 'Times New Roman, 24' size 10, 3
set output 'uvst_5hrs_modes_v1.pdf'
 
set border linewidth 3
set datafile missing 'NaN'

# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize
set style line 1 lc rgb '#0060ad' lt -1 lw 2 pt 0 ps 1
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 6 ps 1
set style line 201 lc rgb '#000000' lt 1 lw 2 # black

# set object 1 rectangle from graph 0, graph 0 to graph 0.33, graph 1 back fc rgb 'red' fs transparent solid 0.1 noborder
# set object 2 rectangle from graph 0.33, graph 0 to graph 0.66, graph 1 back fc rgb 'blue' fs transparent solid 0.1 noborder
# set object 3 rectangle from graph 0.66, graph 0 to graph 1, graph 1 back fc rgb 'green' fs transparent solid 0.1 noborder

set multiplot

# --- plot (1, 1) ---
set lmargin at screen 0.1; set rmargin screen 0.34
set size 0.36, 0.92
set origin 0.06, 0.1
set xlabel 't (s)' font 'Times New Roman, 20'
set ylabel 'v (cm/s)' offset +2, 0 font 'Times New Roman, 20'
set xrange [0:8]; set xtics 0, 2, 8 font 'Times New Roman, 20'
set yrange [2.3:3.5]; set ytics 2.3, 0.4, 3.5 font 'Times New Roman, 20'
set object 1 rectangle from graph 0, graph 0 to graph 1, graph 1 back fc rgb 'red' fs transparent solid 0.1 noborder

plot 'DSC_3816_v-vs-t.dat' every ::31880::32073 using ($1-1275.2):2 notitle with lines linestyle 2

# --- plot (1, 2) --- 
set lmargin at screen 0.42; set rmargin at screen 0.66
set size 0.36, 0.92
set origin 0.33, 0.1
set xlabel 't (s)'
set ylabel ''; 
set xrange [0:18]; set xtics 0, 4, 18
set yrange [0.9:2.1]; set ytics 0.9, 0.4, 2.1
unset object;
set object 2 rectangle from graph 0, graph 0 to graph 1, graph 1 back fc rgb 'blue' fs transparent solid 0.1 noborder

plot 'uvst_5hrs.dat' every ::47524::47677 using (($1-1.7022)*3600):($2) notitle with lines linestyle 2

# --- plot (1, 3) ---

set lmargin at screen 0.74; set rmargin screen 0.98
set size 0.36, 0.92
set origin 0.63, 0.1
set xlabel 't (min)'
set ylabel ''
set xrange [0:1.5]; set xtics 0, 0.5, 1.5
set yrange [0:2]; set ytics 0, 0.5, 2
unset object;
set object 3 rectangle from graph 0, graph 0 to graph 1, graph 1 back fc rgb 'green' fs transparent solid 0.1 noborder

plot 'uvst_5hrs.dat' every ::150251::151000 using (($1-5.402)*60):($2) notitle with lines linestyle 2

unset multiplot
