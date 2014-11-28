#Anzahle Graphiken
par(mfrow=c(1,3))

#Parameter
A<-c(.602,.165)
names(A)=c("visual","auditiv")
stA<-c(.196,.058)

B<-c(.206,.142)
names(B)=c("visual","auditiv")
stB<-c(.075,.057)

C<-c(.175,.173)
names(C)=c("visual","auditiv")

min<-c(0)
max<-c(.85)

# Achsen
mp<-barplot(A, border=NA,axes=FALSE,axisnames=FALSE, col=c("grey70","grey20"),ylim=c(min,max))
mtext(side=2,line=2.5,"weber fractions", cex=1.2)
mtext(side=1,line=1,"visual      auditiv", cex=1.2)
abline(h=0)

x.text<-colMeans(mp)
text(c("***"),x=x.text,y=0.81, cex=2)

mtext(side=3,line=2,expression(paste(bold("A  "),"Subsecond range")),cex=1.2,at=0.6)
abline(h=0)
axis(2,pos=0.15,at=seq(0,.85, by=.20))


# Variabilität
segments(mp,A - stA, mp, A + stA, lwd=2)

#segments(mp - 0.1, A - stA, mp + 0.1, A-stA)


    

#B
# Achsen
mp<-barplot(B, border=NA,axes=FALSE,axisnames=FALSE, col=c("grey 70","grey 20"),ylim=c(min,max))
abline(h=0)
mtext(side=1,line=1,"visual      auditiv", cex=1.2)


x.text<-colMeans(mp)
text(c("***"),x=x.text,y=0.30, cex=2)

mtext(side=3,line=2,expression(paste(bold("B  "),"Second range")),cex=1.2,at=0.2)
abline(h=0)
axis(2,pos=0.15,labels=FALSE,at=seq(0,.85, by=.20))


# Variabilität
segments(mp,B - stB, mp, B + stB, lwd=2)


#C
# Achsen
mp<-barplot(C, border=NA,axes=FALSE,axisnames=FALSE, col=c("grey 70","grey 20"),ylim=c(min,max))
abline(h=0)
mtext(side=1,line=1,"visual      auditiv", cex=1.2)

x.text<-colMeans(mp)
text(c("NS"),x=x.text,y=0.3, cex=1.5)

mtext(side=3,line=2,expression(paste(bold("C  "),"Second range \nadjusted means"),cex=1.2,at=0.2))
abline(h=0)
axis(2,pos=0.15,labels=FALSE,at=seq(0,.85, by=.20))


# Variabilität
#segments(mp,B - stB, mp, B + stB, lwd=2)

