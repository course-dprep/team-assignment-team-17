##makefile assignment
## Main build rule

My_first_try: data/calendar.csv data/listings.csv data/temp/calendar_cleaned.csv data/temp/listings_cleaned.csv data/temp/airbnb_merged.csv 

#all: output/neighbourhoods.pdf

## Sub_builds
data/calendar.csv data/listings.csv: src/data-preparation/download_data_17.R
	R --vanilla < src/data-preparation/download_data_17.R

data/temp/calendar_cleaned.csv data/temp/listings_cleaned.csv: src/data-preparation/clean_data_17.R data/calendar.csv data/listings.csv
	R --vanilla < src/data-preparation/clean_data_17.R

data/temp/airbnb_merged.csv: src/data-preparation/merge_data_17.R data/temp/calendar_cleaned.csv data/temp/listings_cleaned.csv
	R --vanilla < src/data-preparation/merge_data_17.R
