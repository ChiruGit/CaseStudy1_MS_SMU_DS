# Author : Chiranjeevi Mallavarapu
# Date   : 6-29-2017


# Run get data 
source('DataLoad/GetData.R')

#1. How many breweries are present in each state?
summary(breweries$State)

# At a glance looks like Colorado has maximum number of breweries with some of the states having only one
# brewery

#2. Merge beer data with breweries data by brewery id. Print first 6 observations and the last six 
# observations to check the merged file. 

colnames(breweries)[1] <- "Brewery_id"

?aggregate

# Now we can combine both data
combined <- merge(beers,breweries,by="Brewery_id")

# Displaying the first 6 obseratins of the merged dataset   
head(combined)


# Displaying the last 6 obseratins of the merged dataset
tail(combined)

#3. Report the number of NA’s in each column.

# We will use sapply and run function of is.na on all columns, but before that lets replace any blanks with NA

combined[combined==""] <- NA

sapply(combined, function(x) length(which(is.na(x))))

# The IBU column seems to having a total of 1005 NA's and ABV column having 62 NAs remaining columns
# seems to be populated 

# 4. Compute the median alcohol content and international bitterness unit for each state. Plot
# a bar chart to compare.


MedABV_ST<-aggregate( ABV ~ State, data=combined, FUN=median)
MedABV_ST
ABV_BC<-ggplot(na.omit(MedABV_ST), aes(x=State, y=ABV)) + geom_bar(stat="identity",fill="steelblue")+ theme(axis.text.x = element_text(angle=90, hjust=1))
ABV_BC

# The bar chart above for median alcohol content by state indicates that most of the stated are abve 0.05
# with Kentucky, Washington DC, New Mexico and West Virginia crossing 0.06

MedIBU_ST<-aggregate( IBU ~ State, data=combined, FUN=median)
MedIBU_ST
IBU_BC<-ggplot(na.omit(MedIBU_ST), aes(x=State, y=IBU)) + geom_bar(stat="identity") + theme(axis.text.x = element_text(angle=90, hjust=1))
IBU_BC

# The bar chart above for median international bitterness unit by state indicates that Maine and West Virginia 
# are the top 2 states having the highest median bitterness unit beers, with Floria and Georgia next in line

#5.Which state has the maximum alcoholic beer? Which state has the most bitter beer?

# State that has maximum alcoholic beer
combined[which.max(combined$ABV), ]$State
combined[which.max(combined$ABV), ]$ABV

# Colorado seems to be having the highest alcoholic beer with an ABV rating of 0.128

# State that has most bitter beer
combined[which.max(combined$IBU), ]$State
combined[which.max(combined$IBU), ]$IBU

# Oregon seems to be having the highest bitter unit beer with an IBU of 138

#6. Summary statistics for ABV (Alcohol by volume) variable.

summary(combined$ABV)

# The alcohol content ABU seems to be varying from 0.001 to 0.128 with a median of 0.056 across all states 
# the IQR (Q3-Q1) = 0.017

# 7. Is there a relationship between the bitterness of the beer and its alcoholic content? 
# Draw a scatter plot.

ggplot(na.omit(combined), aes(x=ABV, y=IBU)) +geom_point(shape=1) + geom_smooth(method=lm)   

pr <- cor.test(combined$ABV, combined$IBU, method = "pearson")
pr
# Based on the above plot there seems to be a positive linear relationship between the bitterness of beer and its alcoholic content.
