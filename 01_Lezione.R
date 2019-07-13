
getwd() # vraca tekuci direktorijum

setwd("C:/Users/Sanja/Documents/_Sanja/Bicocca - studio/Data Science/IntroductionToR/DS_R") # postaviti novi direktorijum

library("datasets", lib.loc="C:/Program Files/R/R-3.4.3/library") # ukljucivanje biblioteke u radni prostor

data(package = 'datasets') # lista datasetova u paketu datasets

data(AirPassengers)

# 1.a 

getwd() 

# 1.b

setwd("C:/Users/Sanja/Documents/_Sanja/Bicocca - studio/Data Science/IntroductionToR/DS_R")

#2.a 

rm (list = ls())



