## Main build rule

all: ../../gen/output/neighbourhoods.pdf

## Sub_builds
	
../../gen/output/neighbourhoods.pdf: analyze.R ../../gen/temp/Airbnb_merged.csv
	R --vanilla < analyze.R