# Project: Doing Data Science - Case Study 1
#  Author: Chiranjeevi Mallavarapu, MSDS 6306 Doing Data Science - 405
--- 


# Project Introduction: 

This project is take the two data sets beers.csv, breweries.csv and analyze the data across the states and also overall in terms of alcoholic content and bitterness of the beers in USA. These specific questions are addressed one by one below.


* Goal: Create an RStudio project for the analysis of the beer, breweries data sets. 

* Deliverable: Markdown file uploaded to GitHub


------

## File Organization

* Repo Main folder: contains any "main.r' type files, README.md, reference code 'brooklyn.R' provided 

* DataCleanup folder:  Contains code for getting & cleaning data, sub folder 'Data' contains data
  
  Files:
  - /DataCleanup/GetData.R: loads data from below source data file 
  - /DataCleanup/Data/Beer.csv
  - /DataCleanup/Data/Breweries.csv
  
* DataAnalysis folder:  Contains statistical analysis code
  Files:
  - /DataAnalysis/PrepData.R: combines the two data sets provided and answers the required questions on the dataset
  
Further descriptions about the data sets: 

Beers dataset contains a list of 2410 US craft beers and Breweries dataset contains 558 US breweries. T

The datasets descriptions are as follows.

Beers.csv:

Name: Name of the beer.
Beer ID: Unique identifier of the beer.
ABV: Alcohol by volume of the beer.
IBU: International Bitterness Units of the beer. Brewery ID: Brewery id associated with the beer. Style: Style of the beer.
Ounces: Ounces of beer.

Breweries.csv:

Brew ID: Unique identifier of the brewery. Name: Name of the brewery.
City: City where the brewery is located. State: State where the brewery is located.


---------