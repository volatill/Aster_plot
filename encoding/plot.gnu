# unset output
set term postscript eps color size 3, 1.2
set output "encoding.eps"
set font 'Helvetica'
set multiplot layout 1,2 rowsfirst

set style data histogram
set style histogram clustered gap 2
set style fill solid border -1
set key font "Helvetica,11"
set key horizontal noinvert inside right top samplen 1 enhanced reverse Left box height 0.66 font "Helvetica,12"
#unset key
set ylabel "Relative space usage (%)" font "Helvetica,12" off 3,0
set xlabel "Average degree" font "Helvetica,12" off 0,1
# unset xlabel
set xtics nomirror font "Helvetica,11" offset 0,0.45 scale 0.01
set ytics 20 nomirror font "Helvetica,11" offset 0.6, 0
set yrange [0:100]
set xrange [-0.5:9.5]
#set ytics ('0%' 0, '20%' 20,'40%' 40,'60%' 60,'80%' 80,'100%' 100)
set tmargin 2
set bmargin 1
set lmargin 4.5
set rmargin 0.5

Skewed = 0x5053DB
Uniform = 0x61DD61


set origin 0.0,0.1
set size 1,1
plot 'encoding.dat' using 2:xticlabels(1) title columnheader(2) lc rgb Uniform, \
'' using 3:xticlabels(1) title columnheader(3) lc rgb Skewed

set origin 0.0,0.1
set size 1,1
set style fill pattern border -1
plot 'encoding.dat' using 2:xticlabels(1) title columnheader(2) fillstyle pattern 15 transparent lc rgb 'black',\
'' using 3:xticlabels(1) title columnheader(3) fillstyle pattern 4 transparent lc rgb 'white'

