#!/bin/bash

#Bimodal
#applu
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/applu/data/ref
for i in 8 32 128 512 2048
do
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred bimod -bpred:bimod $i -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/applu/applu$i.txt ../../exe/applu.exe < applu.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/applu/applu$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/applu/applu$i.err
    echo "Bimodal $i applu executat!"
done
echo "Bimodal applu executat!"
#crafty
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/crafty/data/ref
for i in 8 32 128 512 2048
do
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred bimod -bpred:bimod $i -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/crafty/crafty$i.txt ../../exe/crafty.exe < crafty.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/crafty/crafty$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/crafty/crafty$i.err
    echo "Bimodal $i crafty executat!"
done
echo "Bimodal crafty executat!"
#twolf
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/twolf/data/ref
for i in 8 32 128 512 2048
do
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred bimod -bpred:bimod $i -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/twolf/twolf$i.txt ../../exe/twolf.exe ref > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/twolf/twolf$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/twolf/twolf$i.err
    echo "Bimodal $i twolf executat!"
done
echo "Bimodal twolf executat!"
#vortex1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
for i in 8 32 128 512 2048
do
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred bimod -bpred:bimod $i -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vortex/vortex1_$i.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vortex/vortex1_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vortex/vortex1_$i.err
    echo "Bimodal $i vortex1 executat!"
done
echo "Bimodal vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
for i in 8 32 128 512 2048
do
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred bimod -bpred:bimod $i -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vortex/vortex2_$i.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vortex/vortex2_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vortex/vortex2_$i.err
    echo "Bimodal $i vortex2 executat!"
done
echo "Bimodal vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
for i in 8 32 128 512 2048
do
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred bimod -bpred:bimod $i -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vortex/vortex3_$i.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vortex/vortex3_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vortex/vortex3_$i.err
    echo "Bimodal $i vortex3 executat!"
done
echo "Bimodal vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
for i in 8 32 128 512 2048
do
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred bimod -bpred:bimod $i -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vpr/vpr1_$i.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vpr/vpr1_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vpr/vpr1_$i.err
    echo "Bimodal $i vpr1 executat!"
done
echo "Bimodal vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
for i in 8 32 128 512 2048
do
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred bimod -bpred:bimod $i -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vpr/vpr2_$i.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vpr/vpr2_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Bimodal/vpr/vpr2_$i.err
    echo "Bimodal $i vpr2 executat!"
done
echo "Bimodal vpr2 executat!"

#Gshare
array=(3 5 7 9 11)
#applu
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/applu/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 1 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/applu/applu$i.txt ../../exe/applu.exe < applu.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/applu/applu$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/applu/applu$i.err
    echo "Gshare $i applu executat!"
done
echo "Gshare applu executat!"
#crafty
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/crafty/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 1 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/crafty/crafty$i.txt ../../exe/crafty.exe < crafty.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/crafty/crafty$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/crafty/crafty$i.err
    echo "Gshare $i crafty executat!"
done
echo "Gshare crafty executat!"
#twolf
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/twolf/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 1 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/twolf/twolf$i.txt ../../exe/twolf.exe ref > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/twolf/twolf$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/twolf/twolf$i.err
    echo "Gshare $i twolf executat!"
done
echo "Gshare twolf executat!"
#vortex1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 1 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vortex/vortex1_$i.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vortex/vortex1_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vortex/vortex1_$i.err
    echo "Gshare $i vortex1 executat!"
done
echo "Gshare vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 1 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vortex/vortex2_$i.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vortex/vortex2_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vortex/vortex2_$i.err
    echo "Gshare $i vortex2 executat!"
done
echo "Gshare vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 1 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vortex/vortex3_$i.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vortex/vortex3_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vortex/vortex3_$i.err
    echo "Gshare $i vortex3 executat!"
done
echo "Gshare vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 1 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vpr/vpr1_$i.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vpr/vpr1_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vpr/vpr1_$i.err
    echo "Gshare $i vpr1 executat!"
done
echo "Gshare vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 1 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vpr/vpr2_$i.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vpr/vpr2_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gshare/vpr/vpr2_$i.err
    echo "Gshare $i vpr2 executat!"
done
echo "Gshare vpr2 executat!"

#Gag
array=(3 5 7 9 11)
#applu
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/applu/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/applu/applu$i.txt ../../exe/applu.exe < applu.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/applu/applu$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/applu/applu$i.err
    echo "Gag $i applu executat!"
done
echo "Gag applu executat!"
#crafty
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/crafty/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/crafty/crafty$i.txt ../../exe/crafty.exe < crafty.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/crafty/crafty$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/crafty/crafty$i.err
    echo "Gag $i crafty executat!"
done
echo "Gag crafty executat!"
#twolf
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/twolf/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/twolf/twolf$i.txt ../../exe/twolf.exe ref > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/twolf/twolf$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/twolf/twolf$i.err
    echo "Gag $i twolf executat!"
done
echo "Gag twolf executat!"
#vortex1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vortex/vortex1_$i.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vortex/vortex1_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vortex/vortex1_$i.err
    echo "Gag $i vortex1 executat!"
done
echo "Gag vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vortex/vortex2_$i.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vortex/vortex2_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vortex/vortex2_$i.err
    echo "Gag $i vortex2 executat!"
done
echo "Gag vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vortex/vortex3_$i.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vortex/vortex3_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vortex/vortex3_$i.err
    echo "Gag $i vortex3 executat!"
done
echo "Gag vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vpr/vpr1_$i.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vpr/vpr1_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vpr/vpr1_$i.err
    echo "Gag $i vpr1 executat!"
done
echo "Gag vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
j=0
for i in 8 32 128 512 2048
do
    let x=${array[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev 1 $i $x 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vpr/vpr2_$i.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vpr/vpr2_$i.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Gag/vpr/vpr2_$i.err
    echo "Gag $i vpr2 executat!"
done
echo "Gag vpr2 executat!"

#Pag
array2=(2 4 6 8 10 11)
arrayX=(4 16 64 256 1024 2048)
#applu
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/applu/data/ref
j=0
for i in 4 8 16 32 64 32
do
    let x=${arrayX[$j]}
    let l=${array2[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev $i $x $l 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/applu/applu$l.txt ../../exe/applu.exe < applu.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/applu/applu$l.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/applu/applu$l.err
    echo "Pag $l applu executat!"
done
echo "Pag applu executat!"
#crafty
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/crafty/data/ref
j=0
for i in 4 8 16 32 64 32
do
    let x=${arrayX[$j]}
    let l=${array2[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev $i $x $l 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/crafty/crafty$l.txt ../../exe/crafty.exe < crafty.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/crafty/crafty$l.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/crafty/crafty$l.err
    echo "Pag $l crafty executat!"
done
echo "Pag crafty executat!"
#twolf
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/twolf/data/ref
j=0
for i in 4 8 16 32 64 32
do
    let x=${arrayX[$j]}
    let l=${array2[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev $i $x $l 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/twolf/twolf$l.txt ../../exe/twolf.exe ref > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/twolf/twolf$l.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/twolf/twolf$l.err
    echo "Pag $l twolf executat!"
done
echo "Pag twolf executat!"
#vortex1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
j=0
for i in 4 8 16 32 64 32
do
    let x=${arrayX[$j]}
    let l=${array2[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev $i $x $l 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vortex/vortex1_$l.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vortex/vortex1_$l.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vortex/vortex1_$l.err
    echo "Pag $l vortex1 executat!"
done
echo "Pag vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
j=0
for i in 4 8 16 32 64 32
do
    let x=${arrayX[$j]}
    let l=${array2[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev $i $x $l 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vortex/vortex2_$l.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vortex/vortex2_$l.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vortex/vortex2_$l.err
    echo "Pag $l vortex2 executat!"
done
echo "Pag vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
j=0
for i in 4 8 16 32 64 32
do
    let x=${arrayX[$j]}
    let l=${array2[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev $i $x $l 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vortex/vortex3_$l.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vortex/vortex3_$l.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vortex/vortex3_$l.err
    echo "Pag $l vortex3 executat!"
done
echo "Pag vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
j=0
for i in 4 8 16 32 64 32
do
    let x=${arrayX[$j]}
    let l=${array2[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev $i $x $l 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vpr/vpr1_$l.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vpr/vpr1_$l.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vpr/vpr1_$l.err
    echo "Pag $l vpr1 executat!"
done
echo "Pag vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
j=0
for i in 4 8 16 32 64 32
do
    let x=${arrayX[$j]}
    let l=${array2[$j]}
    ((j++))
    sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred 2lev -bpred:2lev $i $x $l 0 -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vpr/vpr2_$l.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vpr/vpr2_$l.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Pag/vpr/vpr2_$l.err
    echo "Pag $l vpr2 executat!"
done
echo "Pag vpr2 executat!"
