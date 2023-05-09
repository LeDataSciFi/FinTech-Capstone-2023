# Analyzing Bank of the West Lending Practices

Authors: ELLIE DEGEORGES, VICTORIA GENCO, ISAAC GRODIN, ANNA HARVEY, JUAN MOZOS NIETO, MATTHEW ROMANO, SEBASTIAN STONEHAM, THOMAS SCARINGELLA, XIAOZHE ZHANG

## Project structure

- [Word docs, notes, and many other resources are in the google drive.](https://drive.google.com/drive/u/0/folders/1DPcRaSeDLkYzMvdZ4mGRYJXpyK3mLcln)
    - [Final report](https://docs.google.com/document/d/10il6w9Ba1WiDdkzaO7gURanng8vfJzrE1dgXDekf2hc/edit)
    - [Presentation slides](https://docs.google.com/presentation/d/1q07KR__ia5sOO5cpTJn0IomlGf4_liDws4V6X8vzo9s/edit#slide=id.geee9c6bb34_0_0)
- [Code for the project is in a GitHub repo](https://github.com/LeDataSciFi/FinTech-Capstone-2023)
    - **`images/` contains interactive HTML plots to facilitate visual analysis of how BOW's lending behavior is related to demographics in space**
        - [Loan volume](images/BOW_log(numloans).html)
        - [Denial rate of BOW minus denial rate of other banks](images/denial_rate_percent_difference.html)
        - [Denial rate](images/BOW_denial_rate.html)
        - [Loan dollar volume](images/BOW_log(dol_loans).html)
        - [Rate spread](images/BOW_mean_approved_rate_spread.html)
    - `input_data/` contains raw files except for the full HMDA data
    - `input_data_cleaned/` contains files ready for analysis
    - `code/` contains 
        1. `Setup` downloads the necessary files. There is one manual step.
        1. `Prep_datasets` cleans the raw inputs and reshapes and merges them for use.
        1. Various analysis files independently create various outputs. 
    - `my_gpt_loan_officer/` contains an experiment assessing bias in GPT responses to loan applications    

## Executive summary

Historically, redlining prevented residents of specific areas from accessing credit due to race or ethnicity. Today, government regulations prevent financial institutions from making lending decisions based on an applicant's demographic attributes. As the Bank of Montreal (BMO), the sponsor financial institution of the Spring 2023 Lehigh Fintech Capstone class,  completed its acquisition of Bank of the West in February 2023, this paper conducts a comprehensive examination of the lending behaviors of Bank of the West and reports our findings to personnel at the Bank of Montreal.

Specifically, this paper analyzes the lending behaviors of Bank of the West (BOW) in Arizona and California using the Home Mortgage Disclosure Act (HMDA) loan-level data and Census tract demographic information for 2021. The analysis aims to help BMO Harris (which recently acquired Bank of the West) understand if BOW's lending falls short of BMO Harris's goal to serve underserved communities and steps BMO Harris can take to address any shortcomings. The analysis uses maps, regression models, and an experiment with OpenAI's ChatGPT API to assess the impact of demographic information on loan decisions. 

- In areas with high Black populations, BOW is less likely to receive any mortgage applications and fewer applications but has a lower denial rate than similar-sized banks.

- In areas with high Hispanic populations, BOW is less likely to receive any mortgage applications but receives more applications and has a lower denial rate than similar-sized banks.

- In areas with high Asian populations, BOW is more likely to receive mortgage applications and receives more applications but has a higher denial rate than similar-sized banks.

- ChatGPT makes lending decisions consistent with real loan outcomes, but adding demographic information changes the loan approval rates. Bias can be reduced by explicitly asking it to decide without prejudice. 

- By segmenting the data by major minority groups, we can identify differences in loan practices towards different minority groups and understand the factors contributing to these differences. For example, the higher loan approval rates for Black and Hispanic/Latino groups at Bank of the West may be due to specific outreach programs or underwriting practices designed to support these groups.

- For San Francisco, BOW generally has a lower denial rate for majority-minority tracts than competitors. In Los Angeles, BOW does not receive loan applications in most majority-minority tracts. 
