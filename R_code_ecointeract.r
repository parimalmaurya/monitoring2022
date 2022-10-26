# This is a code for investigating relationships among ecological variables
# We are using the sp package. To install it, use 
# install.packages("sp")
library(sp) # using library() function to open the file in R
# require() is same as library
# We are using meuse for the data set
# https://cran.r-project.org/web/packages/gstat/vignettes/gstat.pdf
data(meuse) # using data as a function to acess the data meuse
# inside parenthesis we put argument: argument is the part of data we want to present
meuse # putting meuse to access the data inside meuse
# now using a function to show the data in table, the function is View
# R is case sensitive
View(meuse) 
# if you have a problem with the GI of system, there is a function to solve it: dev.off()
dev.off()
# if we don't want to see the whole table, we just want something specific,just the part of object, some rows and columns, we use head()
head(meuse) # just shows the head/top of the table
# function showing just the column names: names()
#names: shows just the names of the object
names(meuse)
# summary() used for statistical analysis: mean, median
summary(meuse)
# plotting one variable with respect to another( ZINC VS CADMIUM): using function: plot()
# but we don't have single object but WHOLE data set- they are inside the table
# need to explain R that zinc and cadmium are linked to meuse
# using $ to link things together- basically linking cadmium to meuse and zinc to meuse
plot(meuse$cadmium, meuse$zinc)
# assigning meuse$cadmium to another object, same with zinc # to assign we use '<-'
cad <- meuse$cadmium
zin <- meuse$zinc
plot(cad,zin)
# attach the table to meuse
attach(meuse)
plot(cadmium,zinc)
#detach
# pairs: scatterplot matrices
pairs(meuse)
plot(cad,zinc, col='blue', cex=3)
#selecting the columns from cadmium to zinc that means from column 3 to 6- 3:6
pairs(meuse[,3:6]) # idk how to put these parenthesis- find out 
pol <- meuse[,3:6] # subsetted meuse and created a new object called pol
head(pol) # just to see the head of pol
# now lets make pairs in pol
pairs(pol, col='coral', cex=2)
# another way pairing ahead!! 
pairs(~ cadmium+copper+lead+zinc, data= meuse) # seperating the variabls to be paired are seperated with a plus "+" sign
# '~' tilde is used to clump all the variables together
pairs(~ cadmium+copper+lead+zinc, data= meuse, col='yellow') # changing color to yellow
pairs(~ cadmium+copper+lead+zinc, data= meuse, col='coral')
#ANOTHER KIND OF PAIRING
# correlation coefficient- 1/-1
#panel.correlations<- function()
#panel.smoothing to make some space between them 
#panel.histograms- function is 'hist'


#NOW USING R SPACIAL CODE FROM VIRTUALE TO craete a sptial plot
library(sp)
data(meuse)
head(meuse)
coordinates(meuse)=~x+y
plot(meuse)
# spplot is used to plot elements like zinc, lead spread in space
spplot(meuse, "zinc", main= "my graph") # main is the title of the plot,  quotes are used in spplot especially with main
spplot(meuse, c("zinc","copper", "lead")) # we are putting c before the zinc,copper and lead as it will become an array once we increase the no. of variants
# now using bubble function- change in size of the bubble to depict the changes in the variables- it is a replacement for spplot
bubble(meuse, "zinc", main= "my graph") # bubble doesn't work with array 




