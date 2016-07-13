#TEST CASES FOR GIT 

coef1<-runif(n = 1,min=-3,max=3)
coef2<-runif(n = 1,min=-2,max=2)
myj<-runif(n = 1,min=0,max=25)

b<-rbinom(1000, shape = 1)
b2<-b^2
c<-jitter(x=(coef1*b)+coef2*(b^2), amount=myj)
plot(c~b)

mylm<-lm(c~b+b2)
print(summary(mylm))
cat(coef1,coef2)

predb<-seq(from=min(b),to=max(b),length.out = 20)
mypred<-predict(object = mylm, newdata = list(b=predb,b2=predb^2))
lines(predb, mypred, col="red", lwd=2)
