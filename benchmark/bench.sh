#/bin/csh -f

cd ../src
set refin=benchmark1.inp

if ($#argv == 0 ) then
   echo "./bencht.sh [64,96]"
   exit
endif

if ($1 == 64) then
   ./gridsetup.py 1 1 1 64 64 64
   make dns
   cd ../benchmark
   ../src/dns < $refin 
endif

if ($1 == 96) then
   ./gridsetup.py 1 1 1 96 96 96
   make dns
   cd ../benchmark
   ../src/dns < $refin 
endif

