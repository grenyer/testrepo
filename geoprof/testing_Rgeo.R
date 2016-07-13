#Generate some random lat longs
library(Rgeoprofile)
supdata<-read.csv(file = "sainsburys.csv")


Latitude<-supdata$Latitude
Longitude<-supdata$Longitude
mylocs<-as.data.frame(cbind(Longitude,Latitude))

LoadData(Data = mylocs)
ModelParameters(sigma = 0.1,minburnin = 500,Samples = 100000)
GraphicParameters()
CreateMaps()
RunMCMC()
ThinandAnalyse(thinning = 200)
PlotGP()