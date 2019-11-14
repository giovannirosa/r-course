
#matrix()

?matrix
my.data <- 1:20
my.data

A <- matrix(my.data, 4, 5)
A

#rbind()
r1 <- c("I","am","happy")
r2 <- c("What","a")
r3 <- c(1,2,3)
C <- rbind(r1,r2,r3)
C


#cbind
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1,c2)
D[1,2]


C
rownames(C) <- c('A','B','C')
colnames(C) <- c('X','Y','Z')
C
names(C) <- c('G','H','I')
names(C)



round(Salary/FieldGoals,1)


matplot(FieldGoals)
matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col=c(1:4,6))


myplot <- function(data, rows=1:10) {
  Data <- data[rows,,drop=F]
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot(Games)
myplot(Salary)
myplot(Salary/Games)
myplot(FieldGoals/FieldGoalAttempts)



  