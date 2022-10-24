##makefile assignment
## Main build rule

My_first_try: src/paper/output/neighbourhoods.pdf

#all: output/neighbourhoods.pdf

## Sub_builds
src/paper/output/neighbourhoods.pdf: src/analysis/analyzing_data_17.R data/temp/Airbnb_merged.csv
	R --vanilla < src/analysis/analyzing_data_17.R