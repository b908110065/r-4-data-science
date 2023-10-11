#my economic grades
myEconomicGrades <- c(100,99)
my_economic_grades <-c(100,99)
#import json file----
flights <- jsonlite::fromJSON("data/international_flights.json")

##data information----
data1 <- list(
  file = "data/international_flights.json",
  meta = list(
    name = "國際航空定期時刻表",
    source_link = "https://data.gov.tw/dataset/161167")
  )
data1$file

flights <- list(
  data = list(data1)
)
saveRDS(flights, "data/flights.rds")
flights = readRDS("data/flights.rds")

filepath = flights$data[[1]]$file
flightsData <- jsonlite::fromJSON(filepath)
flights$data[[1]]$data_frame <- flightsData

#type and class----

typeof(flightsData)
class(flightsData)

flightsData[3, "ScheduleStartDate"]
flightsData[3,2]
flightsData[c(2,4),c("AirlineID","ScheduleStartDate","FlightNumber")]
flightsData[c(2,4),c(1,2,4)]

#obo----
person1 <- list(
  name = "John",
  age = 30,
  married = TRUE
)
person2 <- list(
  name = "Mary",
  age = 25,
  married = FALSE
)
person3 <- list(
  name = "Tom",
  age = 35,
  married = TRUE
)

# observation by observation stacking
data_obo <- list(person1, person2, person3)
#feature by feature
names = c("John", "Mary", "Tom")
ages = c(30, 25, 35)
isMarried = c(TRUE, FALSE, TRUE)

# feature by feature stacking
data_fbf <- list(
  name = names, 
  age = ages, 
  married = isMarried)

class(data_fbf)
class(data_obo)

data_fbf_list <- list(
  name = names, 
  age = ages, 
  married = isMarried)

data_fbf_list[1,c(1,3)]
