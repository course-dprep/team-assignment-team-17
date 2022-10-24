#########################
#### download data ######
#########################

## downloading datasets from insideairbnb.com ##

library(R.utils)
download_data <- function(url, filename){
  download.file(url = url, destfile= paste0(filename, ".csv.gz") )
}

url_listings <- "http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2021-12-05/data/listings.csv.gz"
url_calendar <- "http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2021-12-05/data/calendar.csv.gz"

dir.create('../../data')

download_data(url_listings, "../../data/listings")
download_data(url_calendar, "../../data/calendar")

#converting files from .csv.gz to .csv
gunzip("../../data/calendar.csv.gz", remove=FALSE)
gunzip("../../data/listings.csv.gz", remove=FALSE)

#opening files
listings <- read.csv("../../data/listings.csv")
calendar <- read.csv("../../data/calendar.csv")
