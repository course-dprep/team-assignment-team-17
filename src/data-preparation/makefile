## Main build rule

All: ../../data/calendar.csv ../../data/listings.csv ../../gen/temp/calendar_cleaned.csv ../../gen/temp/listings_cleaned.csv ../../gen/temp/airbnb_merged.csv

##sub builds

../../data/calendar.csv ../../data/listings.csv: download_data.R
	R --vanilla < download_data.R

../../gen/temp/calendar_cleaned.csv ../../gen/temp/listings_cleaned.csv: clean_data.R ../../data/calendar.csv ../../data/listings.csv
	R --vanilla < clean_data.R

../../gen/temp/airbnb_merged.csv: merge_data.R ../../gen/temp/calendar_cleaned.csv ../../gen/temp/listings_cleaned.csv
	R --vanilla < merge_data.R