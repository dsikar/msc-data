#! /bin/bash

# Script source: https://moodle.city.ac.uk/pluginfile.php/1651287/mod_forum/attachment/307378/Cluster%20access%20documentation.pdf?forcedownload=1
# Bash script to run batch job on Camber server (@city)
# To run on camber
# $ sbatch <script name>
# To check
# $ squeue
# $ sinfo
# To log into node:
# ssh <node> # e.g. ssh africa, etc
# To terminate job
# $ qdel <job id>
# Following lines preceded with #SBATCH set up the job

#SBATCH --job-name="NVIDIA data download"
#SBATCH --mail-type=ALL
#SBATCH --mail-user=daniel.sikar@city.ac.uk
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --output job%J.out
#SBATCH --error job%J.err
#SBATCH --partition=normal
#SBATCH --gres=gpu:1


echo
echo started NVIDIA download: $(date "+%y%m%d.%H%M%S.%3N")
echo

wget <nvidia data url>

echo
echo finished NVIDIA download: $(date "+%y%m%d.%H%M%S.%3N")
echo

