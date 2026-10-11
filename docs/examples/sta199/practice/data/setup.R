library(tidyverse)
library(readxl)
library(janitor)

# All datasets are fictional and independent of student answers.
tickets <- tibble(
  ticket_id = 1:40,
  plan = rep(c("Basic", "Plus"), c(10, 30)),
  priority = ordered(c(rep("Low", 3), "Medium", rep("High", 6),
                       rep("Low", 6), rep("Medium", 12), rep("High", 12)),
                     levels = c("Low", "Medium", "High")),
  resolution_hours = c(seq(12, 30, 2),
    4,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15,16,16,18,20,24,30,45,70),
  followup_score = c(4,4,NA,3,5,4,NA,5,4,5, rep(c(3,4,4,5,NA), 6)),
  messages = as.integer(rep(1:5, 8))
)

shops <- tibble(
  shop_id = 1:20,
  ad_spend = seq(1, 20) * 100,
  revenue = 5000 + 4 * ad_spend +
    c(200,-200,150,-150,250,-250,100,-100,200,-200,150,-150,250,-250,100,-100,200,-200,150,-150)
)

shows <- tibble(
  show = rep(c("Harbor", "Maple", "Orion"), each = 8),
  season = rep(1:8, 3),
  score = c(6.9,7.0,7.1,7.0,6.9,7.2,7.1,7.0,
            8.4,8.5,8.4,5.7,8.6,8.5,8.7,8.6,
            7.8,7.9,7.9,8.0,7.8,7.9,8.1,8.0)
)

shipments <- tibble(
  shipment_id = 1:7,
  hub_code = c("C01", "C01", "C02", "C03", "C04", "C04", "C99"),
  service = c("Express", "Standard", "Express", "Express", "Express", "Standard", "Express"),
  days = c(2,4,5,6,8,NA,12)
)
registry <- tibble(code = c("C01", "C02", "C03", "C88"),
                   region = c("East", "South", "West", "North"))
a <- tibble(id = 1:3, left_value = c("a", "b", "c"))
b <- tibble(id = c(1L,2L,2L,4L), right_value = c("w", "x", "y", "z"))

annual_wide <- tibble(
  country = c("Alder", "Birch", "Cedar", "Dune", "Elm", "Fjord"),
  rate_2022 = c(2,3,NA,5,6,7),
  rate_2023 = c(3,4,5,6,7,8),
  rate_2024 = c(4,5,6,NA,8,9)
)
quiz_wide <- tibble(student = c("Ana", "Bo", "Cy"),
  week_1 = c("8", "9", "7"), week_2 = c("9", NA, "8"), week_3 = c("10", "8", "9"))
books <- tibble(
  book_id = 1:12,
  audience = c("Family","Family","Family","Family","Teen","Teen","Teen","Teen","Adult","Adult","Adult","Adult"),
  genre = c("Fantasy","Fantasy","History","Science","Fantasy","Mystery","Mystery","Science","History","History","Mystery","Science")
)
log_data <- tibble(date = as.Date(c("2026-09-01", "2026-09-02", "2026-09-03")))
