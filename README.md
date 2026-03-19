## A-DISC README

## Date last README update
2026-03-18

## Title
A-DISC pipeline’s template - regarding the manuscript [“Automating COVID-19 epidemiological situation reports based on multiple data sources, the Netherlands, 2020 to 2023.”](https://doi.org/10.1016/j.cmpb.2024.108436)

## Template code authors (contact) 
Priscila de Oliveira Bressane Lima (priscila.de.oliveira.bressane.lima@rivm.nl ) 
Jan van de Kassteele (jan.van.de.kassteele@rivm.nl ) 
Maarten Schipper (maarten.schipper@rivm.nl )

## Manuscript authors 
Priscila de Oliveira Bressane Lima1, Jan van de Kassteele1, Maarten Schipper1, Naomi Smorenburg1, Martijn S. van Rooijen1, Janneke Heijne2, Rolina D. van Gaalen1. 
1.	Centre for Infectious Disease Control, National Institute for Public Health, and the Environment (RIVM), Bilthoven, the Netherlands 
2.	Department of Infectious Diseases, Public Health Service of Amsterdam, Amsterdam, The Netherlands

## Disclaimer
The scripts pipeline in this repository follows the same structure as the one used for COVID-19 surveillance in the Netherlands between 2020 and 2023. Please note that the code is for illustrative purposes only and does not include any actual data, code, or output from the official COVID-19 surveillance reports in the Netherlands.  

## Description
This template code can be used for the Automation of Data Import, Summarization and Communication, hereafter called the A-DISC pipeline. It can be customized to automate other disease surveillance processes and may be useful for other countries and settings to apply.

The A-DISC pipeline is developed in the R studio software environment. It consists of a modular scripts pipeline to automatically process and summarize data from multiple sources and to integrate these data summaries into an epi-sitrep document using Rmarkdown. The A-DISC pipeline is organized into four major modules: Prepare, Process data, Produce report, and Communicate. The master-script.R (in folder scripts) source all modules’ scripts.

<img width="753" height="666" alt="image" src="https://github.com/user-attachments/assets/06363aaf-b1bf-4851-ad93-b12a873956a3" />

The A-DISC pipeline proved its effectiveness by processing several data sources for COVID-19 surveillance. For simplicity, this template illustrates a pipeline with two data sources. In the template code they are named notifications and tests and are retrieved from the RIVM data catalog, via https://data.rivm.nl/covid-19/, as ‘COVID-19_casus_landelijk.csv’ and ‘COVID-19_uitgevoerde_testen.csv’, respectively. 

## How to use
First you need to have R installed in your computer. See https://statisticswithr.com/installing-r-and-rstudio/.

Clone this git repository into R studio software. See documentation on how to work with git projects in https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)

In R, the A-DISC pipeline user runs the script master-script.R, which can be found in folder scripts, to execute the pipeline. The scripts nested in master-script.R will process notification and test data and produce data summaries (final, interim and open data), excel verification documents, and a pdf epi-sitrep document. All these pipeline results can be found in the folder output. Log messages generated during script execution can be found in the folder logs. 

## R software and packages versions
The code has been developed and runs under the RIVM R-Studio servers.

R version 4.4.1 (2024-06-14) -- "Race for Your Life"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: x86_64-pc-linux-gnu

Next to the R base packages, the following packages(_versions) were used
tidyverse_2.0.0
lubridate_1.9.3
cbsodataR_1.0.1
sf_1.0.16
writexl_1.5.0
knitr_1.48
rmarkdown_2.27
here_1.0.1
jsonlite_1.8.8
logger_0.2.2
plotly_4.10.4

Note that these packages will be automatically installed when running the pipeline.

## Contributions
The repository is not open for contributions, as the A-DISC pipeline that is currently being used for surveillance at RIVM has been enhanced compared to this template code. 

## License
See file LICENSE in repository

## Citation
See file CITATION.cff in repository
