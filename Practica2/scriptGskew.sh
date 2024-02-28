#!/bin/bash

#Gskew
array=(1 2 3 4 5) 
#applu
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    simplesimGskew/sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred gskew -bpred:Gskew 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/applu/applu_$x.txt /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/applu/exe/applu.exe < /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/applu/data/ref/applu.in > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/applu/applu.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/applu/applu.err
    echo "Gskew $i $x applu executat!"
done
echo "Gskew applu executat!"
#crafty
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    simplesimGskew/sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred gskew -bpred:Gskew 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/crafty/crafty_$x.txt /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/crafty/exe/crafty.exe < /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/crafty/data/ref/crafty.in > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/crafty/crafty.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/crafty/crafty.err
    echo "Gskew $i $x crafty executat!"
done
echo "Gskew crafty executat!"
#twolf
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    simplesimGskew/sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred gskew -bpred:Gskew 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/twolf/twolf_$x.txt /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/twolf/exe/twolf.exe /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/twolf/data/ref/ref > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/twolf/twolf.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/twolf/twolf.err
    echo "Gskew $i $x twolf executat!"
done
echo "Gskew twolf executat!"
#vortex1
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vortex/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    ../../../../simplesimGskew/sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred gskew -bpred:Gskew 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vortex/vortex1_$x.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vortex/vortex1_$x.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vortex/vortex1_$x.err
    echo "Gskew $i $x vortex1 executat!"
done
echo "Gskew vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vortex/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    ../../../../simplesimGskew/sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred gskew -bpred:Gskew 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vortex/vortex2_$x.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vortex/vortex2_$x.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vortex/vortex2_$x.err
    echo "Gskew $i $x vortex2 executat!"
done
echo "Gskew vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vortex/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    ../../../../simplesimGskew/sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred gskew -bpred:Gskew 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vortex/vortex3_$x.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vortex/vortex3_$x.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vortex/vortex3_$x.err
    echo "Gskew $i $x vortex3 executat!"
done
echo "Gskew vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vpr/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    ../../../../simplesimGskew/sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred gskew -bpred:Gskew 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vpr/vpr1_$x.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vpr/vpr1_$x.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vpr/vpr1_$x.err
    echo "Gskew $i $x vpr1 executat!"
done
echo "Gskew vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vpr/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    ../../../../simplesimGskew/sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred gskew -bpred:Gskew 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vpr/vpr2_$x.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vpr/vpr2_$x.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/vpr/vpr2_$x.err
    echo "Gskew $i $x vpr2 executat!"
done
echo "Gskew vpr2 executat!"
