# Update on Hmda Clean Step for the Capstone

As of now: 
- `input_data/` contains raw files
- `input_data_cleaned/` contains files ready for analysis
- `code` contains 
    1. `Setup` downloads the necessary files. There is one manual step.
    2. `Prep_datasets` cleans the raw inputs and reshapes and merges them for use.
    3. Various `analysis` files independently create various outputs.
- __(What is new) `HMDA_Clean_Loan` contains the sorted dataframe for # of loans for all banks from `state_AZ-CA_clean_MINI.csv`, then the file returns a list of banks between 50% and 200% of BOW__
    
 [Word docs and notes are in the google drive.](https://drive.google.com/drive/u/0/folders/1DPcRaSeDLkYzMvdZ4mGRYJXpyK3mLcln)

## Required Document
- ```20230214-0000-gleif-goldencopy-lei2-golden-copy.csv``` should be downloaded in the ```input_data``` file if you want to replicate data and result, but this csv file is too large so that I put into gitignore file.
- Download link: https://www.gleif.org/en/lei-data/gleif-concatenated-file/download-the-concatenated-file 
- When you click the link above, click Level 1 Data ( Who is Who ) and solve it into ```input_data``` file
- Data Source Description: 
  __The Global Legal Entity Identifier Foundation (GLEIF)__ publishes three separate ‘Concatenated Files’ daily. The Concatenated Files include Legal Entity Identifiers (LEIs) and related LEI reference data published by the LEI issuing organizations. GLEIF does not modify any of the original source files. For the purpose of the Capstone, we only need __Level 1 LEI-CDF Concatenated File__ to match the LEI number and actual names of financial institutions.