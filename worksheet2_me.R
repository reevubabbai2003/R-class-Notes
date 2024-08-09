# Question 1
# find factorial of n
fact = function(n)
{
  ans = 1
  for(i in 1:n)
  {
    ans = ans*i
  }
  return(ans)
}
# another way
fact2 = function(n)
{
  prod(1:n)
}
# Question 2
func = function(n)
{
  
}
# Question 3
seat <- read.csv("https://dvats.github.io/assets/course/mth208/seating.csv")
roll_no = function(roll)
{
  result = find()
} 
# Question 5
str(seat)
?str
check = seat$Roll.No. < 1e7
length(check)
sum(check)


# Q.5
seat = read.csv("seating.csv")
head(seat)
install.packages("readxl")
library(readxl)
head(seat)
colnames(seat)
seat$Roll.No

Roll = seat$Roll.No
count = 0
Msc = function(n)
{
  for(i in 1:length(n))
  if(n[i] > 999999)
  {
    count = count + 1
  }
  return(count)
}
Msc(Roll)


#Q.7
x = 0:10
plot(x, x, xlab="X",ylab="Y",type="l")


#Q.8
n = 1:1000
func = numeric(length=length(n))
for(i in 1:1000)
{
    func[i] = (1+(1/i))^i
}
plot(n,func)
abline(h=exp(1),col="red")






