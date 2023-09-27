# Basic Data Type----
c("John", "Mary")
c(2, 3.1412)
c(TRUE, TRUE, F)
# using C() to collect your value
list("John", 178, TRUE)
typeof(c("John", "Mary"))
typeof(list("John", 178, TRUE))

# Binding----
personName = c("John", "Mary")
interestingNumber = c(2, 3.1412)
covidPositive = c(TRUE, TRUE, F)

# name call to access value
personName
interestingNumber
covidPositive

# Retrieve ONE element value----
#  by position / index
personName[[1]]
personName[[2]]


listExample = list("John",178,TRUE)

listExample[[3]]
# Name of element values----
## name:John, age:38, height:178, isMarried:False
recordExample1=list("John", 38, 178, FALSE)
recordExample2=list(
  "name"="John", 
  "age"=38,
  "height"=178, 
  "isMarried"=F
)
recordExample2=list(
  name="John", 
  age=38,
  height=178, 
  "isMarried"=F
  )
recordExample2[1]
recordExample2$name
recordExample2[["name"]]
recordExample2$isMarried

# Retrieve multiple element values----
# by position/index
listExample
listExample[c(1,3)]

atomicExample<-c(1,4,78,455,-23)
atomicExample
atomicExample[c(1,3,4)]
atomicExample[c(1:5)]
##by element name----
recordExample2
recordExample2[c("name","height","isMarried")]

#nested list----
person1=list(  "name"="John", 
               "age"=38,
               "height"=178, 
               "isMarried"=F)
person2=list(  "name"="Mary", 
               "age"=32,
               "height"=168, 
               "isMarried"=T)
collective_data=list(person1,person2)
# Sequential Retrieval----
##Retrieve the 2nd person's data and tell his/her name
collective_data[[2]]["name"]
collective_data[[2]]$name
##Retrieve the 2nd person's data and tell his/her name and marrige status
collective_data[[2]][c("name","isMarried")]
