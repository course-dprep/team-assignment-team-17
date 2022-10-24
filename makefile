
all: data/calendar.csv data/listings.csv gen/temp/calendar_cleaned.csv gen/temp/listings_cleaned.csv gen/temp/airbnb_merged.csv gen/output/neighbourhoods.pdf

## sub builds

data/calendar.csv data/listings.csv: src/data-preparation/download_data.R
	R --vanilla < src/data-preparation/download_data.R

gen/temp/calendar_cleaned.csv gen/temp/listings_cleaned.csv: src/data-preparation/clean_data.R data/calendar.csv data/listings.csv
	R --vanilla < src/data-preparation/clean_data.R

gen/temp/airbnb_merged.csv: src/data-preparation/merge_data.R gen/temp/calendar_cleaned.csv gen/temp/listings_cleaned.csv
	R --vanilla < src/data-preparation/merge_data.R
  
gen/output/neighbourhoods.pdf: src/analysis/analyze.R gen/temp/Airbnb_merged.csv
	R --vanilla < src/analysis/analyze.R


