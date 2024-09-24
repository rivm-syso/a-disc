# relational table for date/week/month
relational_table_dates <- tibble(
  date = seq(
    from = ymd("2020-01-01"),
    to = date_report,
    by = "day"
  ),
  week = date %>%
    floor_date(unit = "week"),
  month = date %>%
    floor_date(unit = "month")
)


# relational tables for age groups
relational_table_age <- tibble(
  age = 0:120,
  age_10 = age %>% cut(
    breaks = c(seq(
      from = 0,
      to = 90,
      by = 10
    ), Inf),
    include.lowest = TRUE,
    right = FALSE,
    labels = c(str_glue("{seq(0, 80, 10)}-{seq(9, 89, 10)}"), "90+")
  ),
  age_group = age %>% cut(
    breaks = c(0, 20, 70, Inf),
    include.lowest = TRUE,
    right = FALSE,
    labels = c("0-19", "20-69", "70+")
  )
)