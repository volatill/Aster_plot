algos="wikipedia orkut twitter"

algo=word(algos,2)
set yrange [0.5:1000]
set xrange [0.1:0.9]
#set ylabel "normalized throughput"
#set y2label "normalized throughput"
set xlabel "lookup ratio"
unset tics
set ytics nomirror
 
set logscale y
set ytics ('1' 1, '10' 10, '100' 100, 1000, 1000)
set xtics ('0.2' 0.2, '0.4' 0.4, '0.6' 0.6, '0.8' 0.8)
set boxwidth 1
set border lw 2




set key top outside horizontal center
set key height 0
#set key width -3.4
set key spacing 1
#set key top left
set key font "Helvetica,32"
#unset key 
set ytics font "Helvetica,48" offset -1.5,0,0
set xtics font "Helvetica,48" offset 0,-1,0
set xlabel font "Helvetica,48" offset 0,-3,0
set ylabel font "Helvetica,48" offset -8,0,0
set lmargin 18
set bmargin 8
set tmargin 4
set rmargin 5
set style line 1 dt 1 pt 6 lc "#00B324" ps 5 lw 8
set style line 2 dt 1 pt 4 lc "#38A7EB" ps 5 lw 8
set style line 3 dt 1 pt 10 lc "#EB8C38" ps 5 lw 8
set style line 4 dt 1 pt 12 lc "#4B406B" ps 5 lw 8
set style line 5 dt 1 pt 2 lc "#CD3134" ps 5 lw 8
set style line 6 dt 1 pt 8 lc "#CDCB2D" ps 5 lw 8

set terminal postscript enhanced eps color size 15,5
set output algo."legend.eps"


set style histogram clustered gap 1   #//gap 2表示裂隙宽等于矩形宽度的2倍
set style fill pattern 4 border -1 #//fill solid表示完全填充柱体，后面跟0-1的参数，1表示完全填充，border 表示柱体的边线颜色，-1表示黑色。这里还可以加参数pattern
plot algo.'.dat' using 1:2 w lp ls 1 title "AsterDB",\
algo.'.dat' using 1:3 w lp ls 2 title "Neo4j",\
algo.'.dat' using 1:4 w lp ls 3 title "OrientDB",\
algo.'.dat' using 1:5 w lp ls 4 title "ArangoDB",\
algo.'.dat' using 1:6 w lp ls 5 title "SQLG",\
algo.'.dat' using 1:7 w lp ls 6 title "JanusGraph"



