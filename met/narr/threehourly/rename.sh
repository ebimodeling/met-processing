#!/bin/bash
# generated by http://www-app2.igb.illinois.edu/tools/qsub/
# ----------------QSUB Parameters----------------- #
#PBS -S /bin/bash
#PBS -q default #blacklight for 1TB
#PBS -l nodes=1:ppn=1,mem=300000mb
#PBS -M dlebauer@gmail.com
#PBS -m abe
#PBS -N rename-narr-threehourly
#PBS -d /home/groups/ebimodeling/met/narr/threehourly/
# ----------------Load Modules-------------------- #
module load nco/4.4.8

# ----------------Your Commands------------------- #
#nccopy  out/all.nc all.nc
ncrename -O -d lat,latitude -d lon,longitude -v lat,latitude -v lon,longitude out/all.nc all.nc

ncks -O -d longitude,-91.6,-87.4 -d latitude,37.0,42.75 all.nc illinois.nc
ncks -O -d longitude,-88.9,-87.5 -d latitude,39.8,40.5 all.nc champaign.nc




