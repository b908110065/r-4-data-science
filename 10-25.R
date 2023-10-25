flights = readRDS("data/flights.rds")
str(flights)
flightsData <- flights$data[[1]]$data_frame
flightsData$AirlineID
install.packages("dplyr")
dplyr::glimpse(flightsData)
head(flightsData)
class(flightsData$AirlineID)
flightsData$AirlineID<-factor(
  flightsData$AirlineID
)
head(flightsData$AirlineID)
class(flightsData$AirlineID)
