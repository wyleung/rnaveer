#!/bin/sh
#$ -N hg19misoplot
#$ -S /bin/sh
#$ -p -1023
#$ -o /data/DIV5/SASC/project-051-rnaveer/analysis/runs/all/misoplot.out
#$ -e /data/DIV5/SASC/project-051-rnaveer/analysis/runs/all/misoplot.err
#$ -t 1-57635
#$ -cwd
#$ -V
echo "hostname is:"
hostname
ARGFILE=/data/DIV5/SASC/project-051-rnaveer/analysis/deps/hg19_ensembl.genes.txt
EVENT=$(tail -n +$SGE_TASK_ID $ARGFILE | head -n 1)
/home/wyleung/.virtualenvs/project-051-rnaveer/bin/plot.py --plot-event $EVENT ../deps/ all/sashimi_plot_settings.txt --output-dir all/plot;

