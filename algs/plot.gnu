# unset output
set term postscript eps color size 6, 1.1
set output "alg_barchart.eps"
set font 'Helvetica'
set multiplot layout 1,2 rowsfirst

set style data histogram
set style histogram clustered gap 2
set style fill solid border -1
set key font "Helvetica,11"
set key horizontal noinvert outside center top samplen 0.5 enhanced reverse Left height 0.5
unset key
set ylabel "Latency (us)" font "Helvetica,13" off 2,0
# set xlabel "workload" font " Helvetica,15"
unset xlabel
set xtics nomirror font "Helvetica,10" offset 0,0.3 scale 0.01
set ytics 0.2 nomirror font "Helvetica,10" offset 0.6, 0
set yrange [50:200000]
set logscale y
set xrange [-0.5:3.5]
set ytics ('10' 10, '10^2' 100, '10^3' 1000, '10^4' 10000,'10^5' 100000)
set bmargin 0
set lmargin 5.5
set rmargin 0

Neo4j = 0xAD88C6
ArangoDB = 0xFF8000
OrientDB = 0xFFAE50
PostgreSQL = 0xEEAEAF
JanusGraph = 0xFED98E
OurMethod = 0x67A9CF

set label "DBLP" at screen 0.277,0.05 font "Helvetica,12"
set label "Orkut" at screen 0.745,0.05 font "Helvetica,12"

set origin 0.0,0.2
set size 0.53,0.8
plot 'dblp.dat' using 2:xticlabels(1) title columnheader(2) lc rgb Neo4j, \
'' using 3:xticlabels(1) title columnheader(3) lc rgb ArangoDB,\
'' using 4:xticlabels(1) title columnheader(4) lc rgb OrientDB,\
'' using 5:xticlabels(1) title columnheader(5) lc rgb PostgreSQL,\
'' using 6:xticlabels(1) title columnheader(6) lc rgb JanusGraph,\
'' using 7:xticlabels(1) title columnheader(7) lc rgb OurMethod

set origin 0.0,0.2
set size 0.53,0.8
set style fill pattern border -1
plot 'dblp.dat' using 2:xticlabels(1) title columnheader(2) fillstyle solid lc rgb Neo4j,\
'' using 3:xticlabels(1) title columnheader(3) fillstyle pattern 1 transparent lc rgb 'black',\
'' using 4:xticlabels(1) title columnheader(4) fillstyle pattern 2 transparent lc rgb 'white',\
'' using 5:xticlabels(1) title columnheader(5) fillstyle pattern 4 transparent lc rgb 'black',\
'' using 6:xticlabels(1) title columnheader(6) fillstyle pattern 15 transparent lc rgb 'black',\
'' using 7:xticlabels(1) title columnheader(7) fillstyle pattern 4 transparent lc rgb 'white'

unset key
unset ytics
unset ylabel

# set xlabel "workload composition(range read,update,point read)(%)" font "Helvetica,17" off 0,-1.5
set style fill solid border -1
set origin 0.4765,0.2
set size 0.52,0.8
plot 'orkut.dat' using 2:xticlabels(1) title columnheader(2) lc rgb Neo4j, \
'' using 3:xticlabels(1) title columnheader(3) lc rgb ArangoDB,\
'' using 4:xticlabels(1) title columnheader(4) lc rgb OrientDB,\
'' using 5:xticlabels(1) title columnheader(5) lc rgb PostgreSQL,\
'' using 6:xticlabels(1) title columnheader(6) lc rgb JanusGraph,\
'' using 7:xticlabels(1) title columnheader(7) lc rgb OurMethod

set origin 0.4765,0.2
set size 0.52,0.8
set style fill pattern border -1
plot 'orkut.dat' using 2:xticlabels(1) title columnheader(2) fillstyle solid lc rgb Neo4j,\
'' using 3:xticlabels(1) title columnheader(3) fillstyle pattern 1 transparent lc rgb 'black',\
'' using 4:xticlabels(1) title columnheader(4) fillstyle pattern 2 transparent lc rgb 'white',\
'' using 5:xticlabels(1) title columnheader(5) fillstyle pattern 4 transparent lc rgb 'black',\
'' using 6:xticlabels(1) title columnheader(6) fillstyle pattern 15 transparent lc rgb 'black',\
'' using 7:xticlabels(1) title columnheader(7) fillstyle pattern 4 transparent lc rgb 'white'

unset multiplot