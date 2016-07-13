#Generate some random lat longs
library(Rgeoprofile)
Latitude<-runif(10,min = 51, max=52)
Longitude<-runif(10,min=-1,max=1)
mylocs<-as.data.frame(cbind(Longitude,Latitude))

LoadData(Data = mylocs)
ModelParameters()
GraphicParameters()
CreateMaps()
