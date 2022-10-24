OUTPUT = ../../src/paper/output
TEMP = ../../gen/temp

all: $(OUTPUT)/neighbourhoods.pdf

$(OUTPUT)/neighbourhoods.pdf: analyze.R $(TEMP)/Airbnb_merged.csv
	R --vanilla < analyze.R