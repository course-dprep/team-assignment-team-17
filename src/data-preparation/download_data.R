# Download dataset 1
# dir.create('./data/dataset1')  # Uncomment if need to create directory with R
download.file('https://rgreminger.github.io/files/dataset1.csv','./data/dataset1/dataset1.csv')

# Download dataset 2
# dir.create('./data/dataset2')  # Uncomment if need to create directory with R
download.file('https://rgreminger.github.io/files/dataset2.csv','./data/dataset2/dataset2.csv')

## downloading datasets from insideairbnb.com ##
# download the listing dataset as .csv.gz file
http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2021-12-05/data/listings.csv.gz
#download the calendar dataset as .csv.gz file
http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2021-12-05/data/calendar.csv.gz

#converting files from .csv.gz to .csv
gunzip("calendar.csv.gz", remove=FALSE)
gunzip("listings.csv.gz", remove=FALSE)

#opening files
listings <- read.csv(listings.csv)
calendar <- read.csv(calendar.csv)
