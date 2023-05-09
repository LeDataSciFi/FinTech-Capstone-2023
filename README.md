# Welcome everyone!

## Project structure

- `input_data/` contains raw files except for the full HMDA data
- `input_data_cleaned/` contains files ready for analysis
- `code` contains 
    1. `Setup` downloads the necessary files. There is one manual step.
    1. `Prep_datasets` cleans the raw inputs and reshapes and merges them for use.
    1. Various analysis files independently create various outputs. 
- `images` contains interactive HTML plots to facilitate visual analysis of how BOW's lending behavior is related to demographics in space 
    - [Loan volume](images/BOW_log(numloans).html)
    - [Denial rate of BOW minus denial rate of other banks](images/denial_rate_percent_difference.html)
    - [Denial rate](images/BOW_denial_rate.html)
    - [Loan dollar volume](images/BOW_log(dol_loans).html)
    - [Rate spread](images/BOW_mean_approved_rate_spread.html)
- `my_gpt_loan_officer` contains an experiment assessing bias in GPT responses to loan applications    
- [Word docs, notes, and many other resources are in the google drive.](https://drive.google.com/drive/u/0/folders/1DPcRaSeDLkYzMvdZ4mGRYJXpyK3mLcln)
