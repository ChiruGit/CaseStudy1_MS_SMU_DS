# Project: US Beers and Breweries - An insight
#  Author: Chiranjeevi Mallavarapu

------ 


# Project Introduction: 

This analysis to find out how the beers and breweries are distributed across the states and also overall relationship in terms of alcoholic content vs bitterness of the beers in USA. The data input comprises of two data sets beers.csv, breweries.csv. The specific questions are addressed one by one below.


* Goal: Create an RStudio/GitHub project for the analysis of the beer, breweries data sets so anyone can both reproduce the results and/or access published results. 

* Deliverable: Markdown file and all relevant files uploaded to GitHub


-----

## File Organization

* Repository Main folder: contains README.md, USBeers.Rmd,USBeers.md,USBeers.html files and sub folders of DataCleanup and DataAnalysis 

* DataCleanup folder:  Contains code for getting the data, sub folder 'Data' contains the data files
  
  Files:
  - /DataCleanup/GetData.R: loads data from below source data files 
  - /DataCleanup/Data/Beer.csv
  - /DataCleanup/Data/Breweries.csv
  
* DataAnalysis folder:  Contains statistical analysis code
  Files:
  - /DataAnalysis/PrepData.R: combines the two data sets provided and contains the code to answer the required questions on the dataset
  
Further descriptions about the data sets: 

Beers dataset contains a list of 2410 US craft beers and Breweries dataset contains 558 US breweries. 

The field descriptions are as below.

Beers.csv:

Name: Name of the beer,
Beer ID: Unique identifier of the beer,
ABV: Alcohol by volume of the beer,
IBU: International Bitterness Units of the beer,
Brewery ID: Brewery id associated with the beer,
Style: Style of the beer,
Ounces: Ounces of beer.

Breweries.csv:

Brew ID: Unique identifier of the brewery, Name: Name of the brewery,
City: City where the brewery is located, State: State where the brewery is located.


---------