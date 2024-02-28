#!/bin/bash

#sim-outorder -fastfwd num -max:inst num -cache:<name>:<nsets>:<bsize>:<assoc>:<repl> 
#num -> numero instrucciones
#<name> -> dl1, il1, dl2
#<nsets> -> tamañoTotal / (asociatividad*tamañoBloque)
#<bsize> -> tamaño del bloque
#<assoc> -> asociatividad
#<repl> -> politica reemplazo: l -> LRU, f -> FIFO, r -> random

#AMD
#applu
cd /$HOME/Escriptori/3o/AC/P1/Benchmarks/applu/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 4 -decode:width 4 -issue:width 6 -commit:width 8 -ruu:size 512 -lsq:size 256 -mem:lat 92 1 -mem:width 32 -res:ialu 4 -res:imult 4 -res:memport 5 -res:fpalu 2 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:8:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/applu/applu.txt ../../exe/applu.exe < applu.in > /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/applu/applu.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/applu/applu.err
echo "AMD applu executat!"
#crafty
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/crafty/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 4 -decode:width 4 -issue:width 6 -commit:width 8 -ruu:size 512 -lsq:size 256 -mem:lat 92 1 -mem:width 32 -res:ialu 4 -res:imult 4 -res:memport 5 -res:fpalu 2 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:8:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/crafty/crafty.txt ../../exe/crafty.exe < crafty.in > /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/crafty/crafty.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/crafty/crafty.err
echo "AMD crafty executat!"
#twolf
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/twolf/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 4 -decode:width 4 -issue:width 6 -commit:width 8 -ruu:size 512 -lsq:size 256 -mem:lat 92 1 -mem:width 32 -res:ialu 4 -res:imult 4 -res:memport 5 -res:fpalu 2 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:8:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/twolf/twolf.txt ../../exe/twolf.exe ref > /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/twolf/twolf.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/twolf/twolf.err
echo "AMD twolf executat!"
#vortex1
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/vortex/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 4 -decode:width 4 -issue:width 6 -commit:width 8 -ruu:size 512 -lsq:size 256 -mem:lat 92 1 -mem:width 32 -res:ialu 4 -res:imult 4 -res:memport 5 -res:fpalu 2 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:8:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vortex/vortex1.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vortex/vortex1.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vortex/vortex1.err
echo "AMD vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/vortex/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 4 -decode:width 4 -issue:width 6 -commit:width 8 -ruu:size 512 -lsq:size 256 -mem:lat 92 1 -mem:width 32 -res:ialu 4 -res:imult 4 -res:memport 5 -res:fpalu 2 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:8:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vortex/vortex2.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vortex/vortex2.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vortex/vortex2.err
echo "AMD vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/vortex/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 4 -decode:width 4 -issue:width 6 -commit:width 8 -ruu:size 512 -lsq:size 256 -mem:lat 92 1 -mem:width 32 -res:ialu 4 -res:imult 4 -res:memport 5 -res:fpalu 2 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:8:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vortex/vortex3.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vortex/vortex3.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vortex/vortex3.err
echo "AMD vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/vpr/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 4 -decode:width 4 -issue:width 6 -commit:width 8 -ruu:size 512 -lsq:size 256 -mem:lat 92 1 -mem:width 32 -res:ialu 4 -res:imult 4 -res:memport 5 -res:fpalu 2 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:8:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vpr/vpr1.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vpr/vpr1.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vpr/vpr1.err
echo "AMD vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/vpr/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 4 -decode:width 4 -issue:width 6 -commit:width 8 -ruu:size 512 -lsq:size 256 -mem:lat 92 1 -mem:width 32 -res:ialu 4 -res:imult 4 -res:memport 5 -res:fpalu 2 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:8:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vpr/vpr2.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vpr/vpr2.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/AMD/vpr/vpr2.err
echo "AMD vpr2 executat!"

#INTEL
#applu
cd /$HOME/Escriptori/3o/AC/P1/Benchmarks/applu/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 6 -decode:width 6 -issue:width 8 -commit:width 8 -ruu:size 512 -lsq:size 512 -mem:lat 82 1 -mem:width 32 -res:ialu 5 -res:imult 2 -res:memport 5 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:16:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/applu/applu.txt ../../exe/applu.exe < applu.in > /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/applu/applu.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/applu/applu.err
echo "INTEL applu executat!"
#crafty
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/crafty/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 6 -decode:width 6 -issue:width 8 -commit:width 8 -ruu:size 512 -lsq:size 512 -mem:lat 82 1 -mem:width 32 -res:ialu 5 -res:imult 2 -res:memport 5 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:16:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/crafty/crafty.txt ../../exe/crafty.exe < crafty.in > /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/crafty/crafty.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/crafty/crafty.err
echo "INTEL crafty executat!"
#twolf
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/twolf/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 6 -decode:width 6 -issue:width 8 -commit:width 8 -ruu:size 512 -lsq:size 512 -mem:lat 82 1 -mem:width 32 -res:ialu 5 -res:imult 2 -res:memport 5 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:16:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/twolf/twolf.txt ../../exe/twolf.exe ref > /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/twolf/twolf.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/twolf/twolf.err
echo "INTEL twolf executat!"
#vortex1
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/vortex/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 6 -decode:width 6 -issue:width 8 -commit:width 8 -ruu:size 512 -lsq:size 512 -mem:lat 82 1 -mem:width 32 -res:ialu 5 -res:imult 2 -res:memport 5 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:16:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vortex/vortex1.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vortex/vortex1.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vortex/vortex1.err
echo "INTEL vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/vortex/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 6 -decode:width 6 -issue:width 8 -commit:width 8 -ruu:size 512 -lsq:size 512 -mem:lat 82 1 -mem:width 32 -res:ialu 5 -res:imult 2 -res:memport 5 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:16:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vortex/vortex2.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vortex/vortex2.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vortex/vortex2.err
echo "INTEL vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/vortex/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 6 -decode:width 6 -issue:width 8 -commit:width 8 -ruu:size 512 -lsq:size 512 -mem:lat 82 1 -mem:width 32 -res:ialu 5 -res:imult 2 -res:memport 5 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:16:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vortex/vortex3.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vortex/vortex3.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vortex/vortex3.err
echo "INTEL vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/vpr/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 6 -decode:width 6 -issue:width 8 -commit:width 8 -ruu:size 512 -lsq:size 512 -mem:lat 82 1 -mem:width 32 -res:ialu 5 -res:imult 2 -res:memport 5 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:16:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vpr/vpr1.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vpr/vpr1.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vpr/vpr1.err
echo "INTEL vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/2o/EC/Practica3/Benchmarks/vpr/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -fetch:ifqsize 6 -decode:width 6 -issue:width 8 -commit:width 8 -ruu:size 512 -lsq:size 512 -mem:lat 82 1 -mem:width 32 -res:ialu 5 -res:imult 2 -res:memport 5 -res:fpalu 3 -res:fpmult 2 -cache:dl1 dl1:4096:64:8:l -cache:il1 il1:4096:64:8:l -cache:dl2 ul2:2048:64:16:l -redir:sim /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vpr/vpr2.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vpr/vpr2.out 2> /$HOME/Escriptori/3o/AC/P1/Resultats/INTEL/vpr/vpr2.err
echo "INTEL vpr2 executat!"
