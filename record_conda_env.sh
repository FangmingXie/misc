#!/bin/bash
# a little tool to record all conda envs as they are now
# save as env_record/${env}_${date}.yml

outdir="env_record/"
mkdir -p $outdir

# get all conda env
envs=$(conda env list | tr -s " " | tr " " "\t" | cut -f 1)
nenvs=$(echo "$envs" | wc -l) # this many or less

# today
date=$(date +%F)

echo "number of envs to record: $nenvs (or less)"
echo "outdir: $outdir"
echo "date: $date"

for env in $envs; do
    if [ ${#env} -gt 1 ]; then
        echo "---"
        echo "access env: ${env}"
        outfile="${outdir}${env}_${date}.yml"
        conda env export -n ${env} > $outfile 
        echo "saved to: ${outfile}"
    fi
done