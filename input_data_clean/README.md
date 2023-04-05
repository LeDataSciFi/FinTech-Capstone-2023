# Data description

`Setup.ipynb` and `Prep_Datasets.ipynb` create these files.

1. `census_clean.csv` is tract level info from the ACS Census product, cleaned
1. HMDA files:
	- `state_AZ-CA_clean.csv` is the key input, too large and omitted from repo. 
	- `state_AZ-CA_clean_MINI.csv` is a snapshot of it useful for quick exploration and development
	- `bank_tract.csv` is the `state_AZ-CA_clean.csv` file, aggregated to tract level for each bank 
1. `bank_tract_clean_WITH_CENSUS.csv` merges the Census data into the aggregated bank-tract level HMDA data.
