#task 1:
#create PAT:
#create token:
install.packages("usethis")
usethis::create_github_token()
gitcreds::gitcreds_set()

################################################################################
library(dplyr)
library(ggplot2)
library(lme4)

rm(list = ls())
gc()

library(readr)
#task 2:
#download from URL:
url.dat = "https://raw.githubusercontent.com/kguidonimartins/betadiv-enp/main/data/community-geo-coordinates.csv"
data1 =  read_csv(url(url.dat))

#task 3
#install and use groundhog package:
install.packages("groundhog")
library(groundhog)
ip = as.data.frame(installed.packages()[,c(1)])
pkgs <- ip[1]
groundhog.library(pkgs, "2022-09-14")

#task 4
#basic script:
surv.dat = read.csv('C:/Users/Ryan/OneDrive/ABMI/caribou_anthropause/UBC/courses/LD1/UBC_LD1/dryad_field_survey_data.csv')
#dist.dat = read.csv('C:/Users/Ryan/OneDrive/ABMI/caribou_anthropause/UBC/courses/doi_10.5061_dryad.h0qg353__v2/distance_estimation_data.csv')

#improve field names:
surv.dat = surv.dat %>%
  dplyr::rename(hor_dist = Horizontal_distance,
                species = Species,
                plot = Plot,
                obs = Observer,
                evidence = Evidence,
                obs_plot = Observer_plot,
                n_indiv = Individuals)

#make some factors:
surv.dat$species = as.factor(surv.dat$species)
surv.dat$plot = as.factor(surv.dat$plot)
surv.dat$evidence = as.factor(surv.dat$evidence)
surv.dat$obs = as.factor(surv.dat$obs)
surv.dat$method = as.factor(surv.dat$method)

#create a genus column:
surv.dat$genus = stringr::word(surv.dat$species,1)

#make a plot:
ggplot() +
  geom_boxplot(data = surv.dat, aes(x = method, y = hor_dist)) +
  facet_wrap(~genus)

###test

#EOF