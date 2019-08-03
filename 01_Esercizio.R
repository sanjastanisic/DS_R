# 1.a 

getwd() # vraca Rdni direktorijum

# 1.b

setwd("C:/Users/Sanja/Documents/_Sanja/Bicocca - studio/Data Science/IntroductionToR/DS_R") # postavlja radni direktorijum

# 2.a 

rm (list = ls()) # uklanja sve objekte iz environment

# 3.a

library() # izlista sve instalirane pakete ukljucene u radni prostor

# 3.b

install.packages("vcd") # instalira paket

# 3.c 

library("vcd", lib.loc="~/R/win-library/3.4") # uvodi paket u radni prostor

# 3.d

data (package = "vcd") # izlista sve skupove podataka u datom paketu


