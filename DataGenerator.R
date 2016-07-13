#TEST CASES FOR GIT 

ndata<-1000
coef1<-runif(n = 1,min=-3,max=3)
coef2<-runif(n = 1,min=-2,max=2)
myj<-r(n = 1,min=0,max=25)

b<-runif(ndata)
b2<-b^2
c<-(coef1*b)+coef2*(b2)+rnorm(ndata,mean = 0,sd = 0.25)
#c<-jitter(x=(coef1*b)+coef2*(b^2), amount=myj)

