?rbinom
rbinom(n=1, size=1, prob=0.5)
rbinom(n=1000, size=1, prob=0.5)
x = rbinom(n=1000, size=1, prob=0.3)
prop = sum(x)/1000
prop
?sample
sample(x=1:6, size=1)
sample(x=1:6, size=1, prob = c(0.1, 0.2, 0.1, 0.1, 0.3, 0.2))
?runif
runif(n=5, min=0, max=1)
# new question
x = c("r1", "r2", "r3", "g1", "g2", "b1", "b2")
sample(x, size = 3)

sample(x=c("red","blue","green"), prob=c(3,2,2))
# new question
A = matrix(c(3, 1, -2, 4, 5, 3, -1, 2, -2), nrow=3, ncol=3)
A
sum_sqrt = function(c)
{
  sum = 0
  col = c
  for(i in 1:3)
  {
    sum = sum + (col[i])^2
  }
  return(sqrt(sum))
}
p = c(sum_sqrt(A[,1]),sum_sqrt(A[,1]),sum_sqrt(A[,3]))
p
sample(x=1:3,prob=p)
# M2
probs = numeric(length = ncol(A))
for(i in 1:ncol(A))
{
  Ai = A[,i]
  probs[i] = sqrt(sum(Ai^2))
}
probs = probs/sum(probs)
choose_column = sample(x = 1:ncol(A), size=1, prob=probs)
choose_column

# New question
new=numeric(1000)
























