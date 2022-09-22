library(readr)


urlfile="https://raw.githubusercontent.com/kguidonimartins/betadiv-enp/main/data/community-geo-coordinates.csv"

mydata<-read_csv(url(urlfile))
