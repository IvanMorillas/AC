#!/bin/bash

#NotTaken
#applu
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/applu/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred nottaken -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/applu/applu.txt ../../exe/applu.exe < applu.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/applu/applu.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/applu/applu.err
echo "NotTaken applu executat!"
#crafty
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/crafty/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred nottaken -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/crafty/crafty.txt ../../exe/crafty.exe < crafty.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/crafty/crafty.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/crafty/crafty.err
echo "NotTaken crafty executat!"
#twolf
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/twolf/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred nottaken -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/twolf/twolf.txt ../../exe/twolf.exe ref > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/twolf/twolf.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/twolf/twolf.err
echo "NotTaken twolf executat!"
#vortex1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred nottaken -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vortex/vortex1.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vortex/vortex1.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vortex/vortex1.err
echo "NotTaken vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred nottaken -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vortex/vortex2.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vortex/vortex2.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vortex/vortex2.err
echo "NotTaken vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred nottaken -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vortex/vortex3.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vortex/vortex3.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vortex/vortex3.err
echo "NotTaken vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred nottaken -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vpr/vpr1.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vpr/vpr1.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vpr/vpr1.err
echo "NotTaken vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred nottaken -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vpr/vpr2.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vpr/vpr2.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/NotTaken/vpr/vpr2.err
echo "NotTaken vpr2 executat!"

#Taken
#applu
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/applu/data/ref
sim-bpred -fastfwd 100000000 -max:inst 100000000 -bpred taken -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/applu/applu.txt ../../exe/applu.exe < applu.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/applu/applu.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/applu/applu.err
echo "Taken applu executat!"
#crafty
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/crafty/data/ref
sim-bpred -fastfwd 100000000 -max:inst 100000000 -bpred taken -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/crafty/crafty.txt ../../exe/crafty.exe < crafty.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/crafty/crafty.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/crafty/crafty.err
echo "Taken crafty executat!"
#twolf
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/twolf/data/ref
sim-bpred -fastfwd 100000000 -max:inst 100000000 -bpred taken -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/twolf/twolf.txt ../../exe/twolf.exe ref > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/twolf/twolf.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/twolf/twolf.err
echo "Taken twolf executat!"
#vortex1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
sim-bpred -fastfwd 100000000 -max:inst 100000000 -bpred taken -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vortex/vortex1.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vortex/vortex1.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vortex/vortex1.err
echo "Taken vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
sim-bpred -fastfwd 100000000 -max:inst 100000000 -bpred taken -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vortex/vortex2.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vortex/vortex2.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vortex/vortex2.err
echo "Taken vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
sim-bpred -fastfwd 100000000 -max:inst 100000000 -bpred taken -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vortex/vortex3.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vortex/vortex3.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vortex/vortex3.err
echo "Taken vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
sim-bpred -fastfwd 100000000 -max:inst 100000000 -bpred taken -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vpr/vpr1.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vpr/vpr1.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vpr/vpr1.err
echo "Taken vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
sim-bpred -fastfwd 100000000 -max:inst 100000000 -bpred taken -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vpr/vpr2.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vpr/vpr2.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Taken/vpr/vpr2.err
echo "Taken vpr2 executat!"

#Perfect
#applu
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/applu/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred perfect -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/applu/applu.txt ../../exe/applu.exe < applu.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/applu/applu.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/applu/applu.err
echo "Perfect applu executat!"
#crafty
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/crafty/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred perfect -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/crafty/crafty.txt ../../exe/crafty.exe < crafty.in > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/crafty/crafty.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/crafty/crafty.err
echo "Perfect crafty executat!"
#twolf
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/twolf/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred perfect -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/twolf/twolf.txt ../../exe/twolf.exe ref > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/twolf/twolf.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/twolf/twolf.err
echo "Perfect twolf executat!"
#vortex1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred perfect -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vortex/vortex1.txt ../../exe/vortex.exe lendian1.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vortex/vortex1.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vortex/vortex1.err
echo "Perfect vortex1 executat!"
#vortex2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred perfect -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vortex/vortex2.txt ../../exe/vortex.exe lendian2.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vortex/vortex2.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vortex/vortex2.err
echo "Perfect vortex2 executat!"
#vortex3
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vortex/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred perfect -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vortex/vortex3.txt ../../exe/vortex.exe lendian3.raw > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vortex/vortex3.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vortex/vortex3.err
echo "Perfect vortex3 executat!"
#vpr1
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred perfect -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vpr/vpr1.txt ../../exe/vpr.exe net.in arch.in place.out dum.out -nodisp -place_only -init_t 5 -exit_t 0.005 -alpha_t 0.9412 -inner_num 2 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vpr/vpr1.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vpr/vpr1.err
echo "Perfect vpr1 executat!"
#vpr2
cd /$HOME/Escriptori/3o/AC/P2/Fase1/Benchmarks/vpr/data/ref
sim-outorder -fastfwd 100000000 -max:inst 100000000 -bpred perfect -mem:width 32 -mem:lat 300 2 -redir:sim /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vpr/vpr2.txt ../../exe/vpr.exe net.in arch.in place.in route.out -nodisp -route_only -route_chan_width 15 -pres_fac_mult 2 -acc_fac 1 -first_iter_pres_fac 4 -initial_pres_fac 8 > /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vpr/vpr2.out 2> /$HOME/Escriptori/3o/AC/P2/Fase1/Resultats/Perfect/vpr/vpr2.err
echo "Perfect vpr2 executat!"
