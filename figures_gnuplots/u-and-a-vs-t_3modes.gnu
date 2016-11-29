#!/usr/bin/gnuplot

reset
unset key

set terminal pdf enhanced dashed color font 'Times New Roman, 24' size 12, 3
set output 'u-and-a-vst_3modes.pdf'
 
set border linewidth 4
set multiplot layout 1,3

# lc = linecolor; lt = linetype; lw = linewidth;
# pt = pointtype; ps = pointsize
set style line 1 lc rgb '#000000' lt -1 lw 6 pt 7 ps 0.4 # black
set style line 2 lc rgb '#FF0000' lt 2 lw 6 pt 7 ps 0.4 # red

set ylabel 'v ( {/Symbol \264} 10^{-2} m s^{-1} )' offset +1, 0
set tics scale 0.5
set ytics nomirror

set xlabel 't (s)'; unset label
set xrange [0:2.5]; set xtics 0, 1, 2
set yrange [4:4.5]; set ytics 4, 0.2, 4.4
set y2range [5.5:6.1]; set y2tics 5.6, 0.3, 5.9 textcolor '#FF0000'
set lmargin at screen 0.1; set rmargin at screen 0.3
set label 1 'd' at graph 0.9, 0.9 font 'Times New Roman Bold, 32'
plot 'DSC_3921_01_speed_avgd2sec-and-area.dat' using 1:2 notitle with lines linestyle 1 axes x1y1,\
'DSC_3921_01_speed_avgd2sec-and-area.dat' using 1:3 notitle with lines linestyle 2 axes x1y2

unset ylabel 

set xlabel 't (s)'; unset label
set xrange [0:8]; set xtics 0, 2, 8
set yrange [2.4:2.6]; set ytics 2.4, 0.1, 2.6
set y2range [1.9:2.9]; set y2tics 1.9, 0.5, 2.9 textcolor '#FF0000'
set lmargin at screen 0.4; set rmargin at screen 0.6
set label 2 'e' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
plot 'DSC_3921_8m13s-to-8m21s_speed_avgd2sec-and-area.dat' using 1:2 notitle with lines linestyle 1 axes x1y1,\
'DSC_3921_8m13s-to-8m21s_speed_avgd2sec-and-area.dat' using 1:3 notitle with lines linestyle 2 axes x1y2

set xlabel 't (s)'; unset label
set xrange [0:50]; set xtics 0, 10, 50
set yrange [0:5]; set ytics 0, 2, 4
set y2label 'Area ( {/Symbol \264} 10^{-4} m^{2} )'
set y2range [0:8]; set y2tics 0, 2, 8 textcolor '#FF0000' 
set lmargin at screen 0.7; set rmargin at screen 0.9
set label 3 'f' at graph 0.05, 0.9 font 'Times New Roman Bold, 32'
plot 'DSC_3926_speed-and-area.dat' using 1:2 notitle with lines linestyle 1 axes x1y1,\
'DSC_3926_speed-and-area.dat' using 1:3 notitle with lines linestyle 2 axes x1y2

unset multiplot
