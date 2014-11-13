#!/bin/sh
#$ -N hg19misoplot
#$ -S /bin/sh
#$ -p -1023
#$ -o /data/DIV5/SASC/project-051-rnaveer/analysis/runs/veer_selected_exons/misoplot.out
#$ -e /data/DIV5/SASC/project-051-rnaveer/analysis/runs/veer_selected_exons/misoplot.err
#$ -t 1-154
#$ -cwd
#$ -V
echo "hostname is:"
hostname
ARGFILE=/data/DIV5/SASC/project-051-rnaveer/analysis/newdeps_single/selected_list.txt
EVENT=$(tail -n +$SGE_TASK_ID $ARGFILE | head -n 1)
/home/wyleung/.virtualenvs/project-051-rnaveer/bin/plot.py --plot-event $EVENT ../newdeps_single/veer_selected/ veer_selected_exons/sashimi_plot_settings.txt --output-dir veer_selected_exons/plot;

