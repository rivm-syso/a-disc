## A-DISC README

## Date last README update
2024-09-10

## Title
A-DISC pipeline’s template - regarding the manuscript “Automating COVID-19 epidemiological situation reports based on multiple data sources, the Netherlands, 2020 to 2023.”

## Template code authors (contact) 
Priscila de Oliveira Bressane Lima (priscila.de.oliveira.bressane.lima@rivm.nl ) 
Jan van de Kassteele (jan.van.de.kassteele@rivm.nl ) 
Maarten Schipper (maarten.schipper@rivm.nl )

## Manuscript authors 
Priscila de Oliveira Bressane Lima1, Jan van de Kassteele1, Maarten Schipper1, Naomi Smorenburg1, Martijn S. van Rooijen1, Janneke Heijne2, Rolina D. van Gaalen1. 
1.	Centre for Infectious Disease Control, National Institute for Public Health, and the Environment (RIVM), Bilthoven, the Netherlands 
2.	Department of Infectious Diseases, Public Health Service of Amsterdam, Amsterdam, The Netherlands

## Disclaimer
The code in the repository represents the same scripting structure as used for COVID-19 surveillance in the Netherlands. The code is merely illustrative. It DOES NOT contain the actual data, code or output used for COVID-19 surveillance in the Netherlands.  

## Description
This template code can be used for the Automation of Data Import, Summarization and Communication, hereafter called the A-DISC pipeline. It can be customized to automate other disease surveillance processes and may be useful for other countries and settings to apply.

The A-DISC pipeline is developed in the R software environment. It consists of a modular scripts pipeline to automatically process and summarize data from multiple sources and to integrate these data summaries into an epi-sitrep document using Rmarkdown. The A-DISC pipeline is organized into four major modules: Prepare, Process data, Produce report, and Communicate. The master-script.R (in folder scripts) source all modules’ scripts.

The A-DISC pipeline proved its effectiveness by processing several data sources for COVID-19 surveillance. For simplicity, this template illustrates a pipeline with two surveillance data sources. In the template code they are named notifications and tests and are retrieved from the RIVM data catalog, via https://data.rivm.nl/covid-19/, as ‘COVID-19_casus_landelijk.csv’ and ‘COVID-19_uitgevoerde_testen.csv’, respectively. 

The demographic and geographic data, which could be encountered in folder data/static, are provisionally not provided in GitHub due to institutional constrains. Please, contact the e-mail addresses above for more information on these data.

## How to use
(First clone this git repository into R studio software. See documentation on how to work with git projects in https://docs.gitlab.com/)

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


## Contributions
This repository is not open for contributions, as the A-DISC pipeline that is currently being used for surveillance at RIVM has been enhanced compared to this template code. We welcome any improvements or suggestions via the contact e-mail addresses above.

## License
See file LICENSE in repository

## Citation
See file CITATION.cff in repository

