plot(c~b)

mylm<-lm(c~b+b2)
print(summary(mylm))
cat(coef1,coef2)

predb<-seq(from=min(b),to=max(b),length.out = 20)
mypred<-predict(object = mylm, newdata = list(b=predb,b2=predb^2))
lines(predb, mypred, col="red", lwd=2)
