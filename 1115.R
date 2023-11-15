flights <- readRDS("flights_week10.rds")
flightsData <- flights$data[[1]]$data_frame
dplyr::glimpse(flightsData)
flightsData$DepartureTimeZone|>table()|>sort(decreasing=T)->tb_departureTineZone
flights$dataSummary$DepartureTimeZone<-tb_departureTineZone
saveRDS(flights,file="week10_after.rds")
# 3. parse time with time zone
## split flightsData according to its timezone
flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData
# for each sub data frame
x=1 
# we want to parse the time
split_flightsData[[x]]$DepartureTime <- 
  lubridate::ymd_hm(split_flightsData[[x]]$DepartureTime, tz = split_flightsData[[x]]$DepartureTimeZone[[1]]) 
split_flightsData[[x]]|>dplyr::glimpse()
split_flightsData[[x]]|>View()

split_flightsData[[x]] |>
  dplyr::mutate(
    DepartureTime = 
      lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]])
  )

flightsData |>
  dplyr::group_by(DepartureTimeZone) |> # split and do the following on each sub data frame
  dplyr::mutate(
    DepartureTime = lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]]) # parse time
  ) |>
  dplyr::ungroup() -> # unsplit the data frame
  flightsData2
dplyr::glimpse(flightsData2)
head(split_flightsData[[1]], 3)
head(split_flightsData[[2]]$DepartureTimeZone, 3)
head(split_flightsData[[3]]$DepartureTimeZone, 3)

