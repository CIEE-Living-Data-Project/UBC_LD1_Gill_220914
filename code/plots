#-------------------------------------------------------------------------------
library(dplyr)
library(ggplot2)
library(lme4)

rm(list = ls())
gc()

#read in saved data originally downloaded from Dryad and reformatted:
surv.dat = read.csv('C:/Users/Ryan/OneDrive/ABMI/caribou_anthropause/UBC/courses/LD1/UBC_LD1/data/220927_field_dat_formatted.csv')

#convert some factors:
surv.dat$species = as.factor(surv.dat$species)
surv.dat$plot = as.factor(surv.dat$plot)
surv.dat$evidence = as.factor(surv.dat$evidence)
surv.dat$obs = as.factor(surv.dat$obs)
surv.dat$method = as.factor(surv.dat$method)

#make a plot:
ggplot() +
  geom_boxplot(data = surv.dat, aes(x = method, y = hor_dist)) +
  facet_wrap(~genus)

#facet by method
ggplot() +
  geom_boxplot(data = surv.dat, aes(x = genus, y = hor_dist)) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  facet_wrap(~method)

#Git steps:
#1: pull from Git
#2: make changes to files
#3: commit changes
#4: push to Git



#-------------------------------------------------------------------------------
#EOF
