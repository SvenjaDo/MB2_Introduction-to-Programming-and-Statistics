# Introduction 26.10.21


result1<-5+6 # use "<-" instead of "=" to clarify direction 
result1
rm(result1)

max()
seq(1,9,by=2)
seq(100)
a<-c(1,3,5,6,7) # coerces value into vector
c("A",1:100) # combines character and number 1 to 100
plot(seq(100))

runif()
sample()
rnorm() # random values

q() # quit
q("n") # quit without saving #

getwd() # get working directory
setwd("C:/Users/49152/Documents/Universitas/Master_EAGLE/MB2") # set working directory

plot(seq(1,100,2),c(1:50))

plot(c(1:10),seq(1,20,by=2))

summary()
plot()
str()

# check out for intersects
?checkout_union()
intersects()
setdiff()


# monthly average precipitation values of GER:
prec_avg<- c(56,46,50,53,69,83,83,80,62,55,60,63)
plot(prec_avg,pch=19,cex=2,col="#00ff0030")
lines(lowess(prec_avg,f=2))

#different data types:
# vector: series of values
# data.frame: several vectors
# matrix: only one mode, could be long vector split into rows and cols
# array: similar to matrix but can have more than 2D
# list:

# Vector object:
# raster object:

# install a package: 
install.packages("raster")
library(raster)

germany<- getData("GADM",country="DEU",level=2) # get country borders
plot(germany)
prec<- getData("worldclim",var="prec",res=2.5,lon=10,lat=51)
plot(prec)

prec_ger1<- crop(prec,germany) # crop prec to extent of ger
spplot(prec_ger1)
prec_ger2 <- mask(prec_ger1,germany) # mask prec to shape of ger
spplot(prec_ger2)

str(prec_ger2)

prec_avg <- cellStats(prec_ger2,stat="mean") # extract prec average of ger 
prec_avg
data.class(prec_avg)
plot(prec_avg)

getData("worldclim",res=2.5,var=tmin,lon=5,lat=45)


# presentations on R:
echo=F # not printing the code

# versioning!!
#user a server (GIThub), it?s like dropbox, but it can be commented, code can be developed in parrallel:))
# version control: 
# collaboration: 
# accountability
# early start

# get own account!!
gitadd

git branch mynewbranch # create new branch 

#validating account!
git config # with user name and email 