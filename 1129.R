dataSet <- list(
  list(
    gender="male", height=178, age=32,
    children=list(
      list(gender="male", age=5),
      list(gender="male", age=0))
  ),
  list(
    gender="female", height=166, age=30,
    children=list(
      list(gender="female", age=3))
  ),
  list(
    gender="male", height=170, age=42,
    children=list(
      list(gender="male", age=10),
      list(gender="female", age=8))
  ),
  list(
    gender="male", height=188, age=22,
    children=list()
  ),  
  list(
    gender="male", height=172, age=52,
    children=list(
      list(gender="female", age=25),
      list(gender="female", age=23))
  ),
  list(
    gender="female", height=160, age=42,
    children=list(
      list(gender="female", age=11))
  )
)

analysis <- list()
analysis$number_of_children <- vector("list", length=6)
for(.x in c(1, 2, 3, 4, 5, 6)){
  # .x-pattern
  analysis$number_of_children[[.x]] <-length(dataSet[[.x]]$children)
}

class(analysis$number_of_children)

seq_along(dataSet)
1:length(dataSet)
analysis <- list()
analysis$number_of_children <- vector("list", length=6)
for(.x in seq_along(dataSet)){
  # .x-pattern
  analysis$number_of_children[[.x]] <-length(dataSet[[.x]]$children)
}

class(analysis$number_of_children)

vector("storage_type", length)
dataSet1 <- c('1999-03-16','1996-07-14','1998-11-06','1999-07-16','1995-09-30','1997-09-08','1998-08-08','1999-03-26','1999-02-13','1997-07-04')

# declare a fixed length container based on information type before parsing
birthdays <- vector("character", length(dataSet1))
for(.x in seq_along(dataSet1)){
  birthdays[[.x]] <- dataSet1[[.x]]
}
birthdays |> lubridate::ymd() -> birthdays