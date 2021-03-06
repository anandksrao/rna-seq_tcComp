#!/bin/bash
dir=~/Documents/phd/data/simulation/study
dataDir=${dir}/run_data
scriptDir=~/Documents/phd/programming/scripts/RNAseq/simulation/study/run_pipelines

files=$(find $dataDir -type f -name "*.txt" | grep "contr" | grep -v "old" | grep -v "GSE")

mkdir -p ${dir}/results/splineTC
Rscript --vanilla $scriptDir/splineTC.R $files ${dir}/results/splineTC