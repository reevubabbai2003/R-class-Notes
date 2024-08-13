attempts<-function(age)
{
  count <- 0
  remain <- age # age no. of candles remain in the beginning
  while(remain>0)
  {
    count<-count+1# randomly choose any number between 1 and remain
    blow_out <- sample(1:remain,size =1)
    remain <- remain- blow_out
  }
  return(count)
}
att_vec <- numeric(length =1e3)
for(i in 1:1e3)
{
  att_vec[i]<-attempts(25)
}
head(att_vec)
att_vec2 = replicate(1e3, attempts(25))
head(att_vec2)
library(rbenchmark)
install.packages("rbenchmark")

benchmark({
  att_vec <- numeric(length = 1e3)
  for(i in 1:1e3)
  {
    att_vec[i] <- attempts(25)
  }},
  replicate(1e3, attempts(25)), replications = 100)


benchmark({
  att_vec <- numeric(length = 1e4)
  for(i in 1:1e4)
  {
    att_vec[i] <- attempts(25)
  }},
  replicate(1e4, attempts(25)), replications = 20)

benchmark({
  att_vec <- numeric(length = 1e4)
  for(i in 1:1e4)
  {
    att_vec[i] <- attempts(25)
  }},
  att_vec2 <- NULL
  for(i in 1:1e4)
  {
    att_vec <- c(att_vec, attempts(25))
  },
  replicate(1e4, attempts(25)), replications = 20)
?apply
mat = function(p,q)
{
  mat = matrix(runif(n=p*q,max=1,min=0), nrow=p, ncol=q)
  return(mat)
}
mat(100,400)
colMeans(mat(100,400))
apply(mat(100,400),2,mean)
benchmark(colMeans(mat(100,400)),apply(mat(100,400),2,mean),replications =20)
x = runif(n=1e5)
norm(x,"2")
sqrt(sum(x^2))
benchmark(norm(x,"2"),sqrt(sum(x^2)), replications = 100)

