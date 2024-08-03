a = c(1, "the", 2)
a
a = c(1,2,5,9,2)
a
str(a)
class(a)
a = c("the", "space", "a")
a
str(a)
nu = c(3,6,3,8,9)
length(nu)
sum(nu)
??count
sum()
a = c("the", "a")
sum(a)
?sum

# Make a function that does what sum does

reevu_sum = function(falaana)
{
  sum_so_far = 0
  n = length(falaana)
  for(i in 1:n)
  {
    sum_so_far = sum_so_far + falaana[i]
  }
  return(sum_so_far)  
}
reevu_sum(1:5)

# add all the number more than 3
val = c(1, 3, 2, 1, 2, 4, 5)
new_sum = function(func, x)
{
  sum2 = 0
  for(i in 1:length(func))
  {
    if(func[i]>x)
    {
      sum2 = sum2 + func[i]
    }
  }
  return(sum2)
}
new_sum(val,2)

# area
area = function(rad)
{
  val = pi * rad*rad
  return(val)
}
area(2)

# return higher average
score1 = c(55, 78, 89, 68, 98)
score2 = c(45, 23, 100, 54, 100)
max_score = function(marks1, marks2)
{
  m1 = mean(marks1)
  m2 = mean(marks2)
  if(m1 >= m2)
  {
    return(marks1)
  }
  else
  {
    return(marks2)
  }
}
max_score(score1, score2)

#Write an R code to enumerate the squares of the first 100 natural numbers.
# method 1
X = 1:100
X^2
# method 2
nums = 1:100
sqs = numeric(length = length(nums))
for(i in 1:length(nums))
{
  sqs[i] = nums[i]^2
}
sqs

#matrix
mat = matrix(c(1,5,8,3,4,0), nrow=3, ncol=2)
mat
mat[1,2]
mat[1,]
mat[,2]

# question 1 
n = 10
mat_prod = matrix(0, nrow = n, ncol = n)
str(mat_prod)
for(i in 1:n)
{
  for(j in 1:n)
  {
    mat_prod[i,j] = i*j
  }
}
mat_prod






























































