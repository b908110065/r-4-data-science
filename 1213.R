options(encoding = "UTF-8")
Sys.setlocale("LC_CTYPE", "zh_TW.UTF-8")flights <- readRDS("data/flights_week10.rds")

flightsData <- flights$data[[1]]$data_frame

dplyr::glimpse(flightsData)

library(dplyr)
library(lubridate)

flightsData <- flightsData %>%
  group_by(DepartureTimeZone) %>%
  mutate(DepartureTime = ymd_hms(DepartureTime, tz = DepartureTimeZone[[1]])) |>
  glimpse()