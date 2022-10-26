OUTPUT = ../../src/paper/output
TEMP = ../../gen/temp

all: $(OUTPUT)/graph_other_weekends.pdf $(OUTPUT)/graph_canal_parade.pdf
	
$(OUTPUT)/graph_other_weekends.pdf: analyze.R $(TEMP)/Airbnb_merged.csv
	R --vanilla < analyze.R
	
$(OUTPUT)/graph_canal_parade.pdf: analyze.R $(TEMP)/Airbnb_merged.csv
	R --vanilla < analyze.R