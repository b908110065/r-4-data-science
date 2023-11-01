# dplyr::left_join example----
# two data frames
df1 <- data.frame(id = c(1, 2, 3, 4, 5),name = c("A", "B", "C", "D", "E"))
df2 <- data.frame(id = c(1, 2, 3, 4, 5, 7),score = c(90, 80, 70, 60, 50, 40))
# join by id
dplyr::left_join(df1, df2, by = "id")
# join by id
df3 <- data.frame(ID = c(1, 2, 3, 4, 5, 7),score = c(90, 80, 70, 60, 50, 40))
# join
dplyr::left_join(df1, df3, by = c("id" = "ID"))
#
flights = readRDS("flights.rds")
flights$data[[2]][["data_frame"]] <- airlines
flightsData <- flights$data[[1]][["data_frame"]]
dplyr::left_join(flightsData, airlines,by="AirlineID") -> flightsData
flightsData$AirlineName <- factor(flightsData[["AirlineName"]])
install.packages("airportr")
airports <- airportr::airports
dplyr::glimpse(airports)
dplyr::filter(airports,Country == "Taiwan") -> airports_taiwan
head(airports_taiwan)
head(airports$Country)
head(airports$Country=="Taiwan")
pick_taiwan<- airports$Country=="Taiwan"
pick_taiwan
c(2,4,7)[c(T,F,T)]
airports[pick_taiwan,]|>View()
airports$IATA[pick_taiwan]
dplyr::filter(airports,Country == "Taiwan") -> airports_taiwan
head(airports_taiwan)
airports_taiwan$IATA

# keep only unique values
taiwan_IATA<-unique(airports_taiwan$IATA)
pick_departure<-flightsData$DepartureAirportID %in% taiwan_IATA
head(pick_departure)
flightsData[pick_departure, ]|>View()
which(pick_departure)|>head(10)
whichIsDeparture<- which(pick_departure)
flightsData[whichIsDeparture, ]|>View()
#
flightsData <- readRDS("flightsData_week8.rds")
dplyr::glimpse(flightsData)
lubridate::ymd(flightsData$ScheduleStartDate)->flightsData$ScheduleStartDate
lubridate::ymd_hm("2023-10-13 15:00",tz="Asia/Shanghai")
paste(flightsData$ScheduleStartDate,flightsData$DepartureTime)->departureTime

