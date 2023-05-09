# Analyzing Bank of the West Lending Practices

_**Lehigh FinTech Capstone 2023**_

## Key outputs 

1. [The final report is here](https://docs.google.com/document/d/10il6w9Ba1WiDdkzaO7gURanng8vfJzrE1dgXDekf2hc/edit), and we've copied the [executive summary](#executive-summary) below
1. [Presentation slides are here](https://docs.google.com/presentation/d/1jt--nWi-Bth0zlxHGE6x_nIYyhP1IL9sWMuiedoogvk/)
1. Interactive maps to see how BOW's lending behavior is related to demographics. In these figures, red dots are "majority-minority" Census tracts (i.e. the white population is under 50%) and the shading of a tract corresponds to various lending statistics within that tract.
    - [BOW's loan volume](images/BOW_log(numloans).html)
    - [Denial rate of BOW minus denial rate of other banks](images/denial_rate_percent_difference.html)
    - [BOW's denial rate](images/BOW_denial_rate.html)
    - [BOW's loan dollar volume](images/BOW_log(dol_loans).html)
    - [BOW's rate spread](images/BOW_mean_approved_rate_spread.html)

## Project structure

- [The final report, slides, and many other resources are in the google drive.](https://drive.google.com/drive/u/0/folders/1DPcRaSeDLkYzMvdZ4mGRYJXpyK3mLcln)
- [Code for the project is in a GitHub repo](https://github.com/LeDataSciFi/FinTech-Capstone-2023)
    - `input_data/` contains raw files except for the full HMDA data
    - `input_data_cleaned/` contains files ready for analysis
    - **`images/` contains interactive HTML plots to facilitate visual analysis of how BOW's lending behavior is related to demographics in space**
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

## The team

![image](https://github.com/LeDataSciFi/FinTech-Capstone-2023/assets/50885867/bebcf589-3afb-4577-8b1f-4dff0ab8c11e)

_ELLIE DEGEORGES, VICTORIA GENCO, ISAAC GRODIN, ANNA HARVEY, JUAN MOZOS NIETO, MATTHEW ROMANO, SEBASTIAN STONEHAM, THOMAS SCARINGELLA, XIAOZHE ZHANG_
