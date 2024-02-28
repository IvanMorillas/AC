#!/bin/bash

#Gag/Pag
array=(2 4 6 8 10)
#applu
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/applu/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/applu/applu$i.txt ../../exe/applu.exe < applu.in > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/applu/applu.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/applu/applu.err
    echo "Gag/Pag $i applu executat!"
done
echo "Gag/Pag applu executat!"
#crafty
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/crafty/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/crafty/crafty$i.txt ../../exe/crafty.exe < crafty.in > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/crafty/crafty.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/crafty/crafty.err
    echo "Gag/Pag $i crafty executat!"
done
echo "Gag/Pag crafty executat!"
#twolf
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/twolf/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/twolf/twolf$i.txt ../../exe/twolf.exe ref > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/twolf/twolf.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/twolf/twolf.err
    echo "Gag/Pag $i twolf executat!"
done
echo "Gag/Pag twolf executat!"
#vortex1
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vortex/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vortex/vortex1_$i.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vortex/vortex1.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vortex/vortex1.err
    echo "Gag/Pag $i vortex1 executat!"
done
echo "Gag/Pag vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vortex/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vortex/vortex2_$i.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vortex/vortex2.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vortex/vortex2.err
    echo "Gag/Pag $i vortex2 executat!"
done
echo "Gag/Pag vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vortex/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vortex/vortex3_$i.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vortex/vortex3.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vortex/vortex3.err
    echo "Gag/Pag $i vortex3 executat!"
done
echo "Gag/Pag vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vpr/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vpr/vpr1_$i.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vpr/vpr1.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vpr/vpr1.err
    echo "Gag/Pag $i vpr1 executat!"
done
echo "Gag/Pag vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vpr/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vpr/vpr2_$i.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vpr/vpr2.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/GagPag/vpr/vpr2.err
    echo "Gag/Pag $i vpr2 executat!"
done
echo "Gag/Pag vpr2 executat!"

#Gap
array=(1 3 5 7 9)
#applu
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/applu/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/applu/applu$i.txt ../../exe/applu.exe < applu.in > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/applu/applu.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/applu/applu.err
    echo "Gap $i applu executat!"
done
echo "Gap applu executat!"
#crafty
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/crafty/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/crafty/crafty$i.txt ../../exe/crafty.exe < crafty.in > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/crafty/crafty.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/crafty/crafty.err
    echo "Gap $i crafty executat!"
done
echo "Gap crafty executat!"
#twolf
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/twolf/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/twolf/twolf$i.txt ../../exe/twolf.exe ref > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/twolf/twolf.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/twolf/twolf.err
    echo "Gap $i twolf executat!"
done
echo "Gap twolf executat!"
#vortex1
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vortex/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vortex/vortex1_$i.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vortex/vortex1.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vortex/vortex1.err
    echo "Gap $i vortex1 executat!"
done
echo "Gap vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vortex/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vortex/vortex2_$i.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vortex/vortex2.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vortex/vortex2.err
    echo "Gap $i vortex2 executat!"
done
echo "Gap vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vortex/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vortex/vortex3_$i.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vortex/vortex3.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vortex/vortex3.err
    echo "Gap $i vortex3 executat!"
done
echo "Gap vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vpr/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vpr/vpr1_$i.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vpr/vpr1.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vpr/vpr1.err
    echo "Gap $i vpr1 executat!"
done
echo "Gap vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vpr/data/ref
j=0
for i in 4 16 64 256 1024
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vpr/vpr2_$i.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vpr/vpr2.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Gap/vpr/vpr2.err
    echo "Gap $i vpr2 executat!"
done
echo "Gap vpr2 executat!"

#Pap
array=(2 4 6 8 10)
#applu
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/applu/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/applu/applu$i.txt ../../exe/applu.exe < applu.in > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/applu/applu.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/applu/applu.err
    echo "Pap $i applu executat!"
done
echo "Pap applu executat!"
#crafty
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/crafty/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/crafty/crafty$i.txt ../../exe/crafty.exe < crafty.in > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/crafty/crafty.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/crafty/crafty.err
    echo "Pap $i crafty executat!"
done
echo "Pap crafty executat!"
#twolf
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/twolf/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/twolf/twolf$i.txt ../../exe/twolf.exe ref > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/twolf/twolf.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/twolf/twolf.err
    echo "Pap $i twolf executat!"
done
echo "Pap twolf executat!"
#vortex1
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vortex/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vortex/vortex1_$i.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vortex/vortex1.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vortex/vortex1.err
    echo "Pap $i vortex1 executat!"
done
echo "Pap vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vortex/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vortex/vortex2_$i.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vortex/vortex2.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vortex/vortex2.err
    echo "Pap $i vortex2 executat!"
done
echo "Pap vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vortex/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vortex/vortex3_$i.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vortex/vortex3.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vortex/vortex3.err
    echo "Pap $i vortex3 executat!"
done
echo "Pap vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vpr/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vpr/vpr1_$i.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vpr/vpr1.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vpr/vpr1.err
    echo "Pap $i vpr1 executat!"
done
echo "Pap vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/3o/AC/P2/Fase2/Benchmarks/vpr/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vpr/vpr2_$i.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vpr/vpr2.out 2> /$HOME/Escriptori/3o/AC/P2/Fase2/Resultats/Pap/vpr/vpr2.err
    echo "Pap $i vpr2 executat!"
done
echo "Pap vpr2 executat!"
