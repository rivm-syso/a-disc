#
# Table number of notifications per week_statistics
#

table_notifications_number_per_week <- data_notifications %>%
  left_join(
    y = relational_table_dates,
    by = c("date_statistics" = "date")
  ) %>%
  group_by(
    week_statistics = week
  ) %>%
  summarize(
    number_notifications = n()
  ) %>%
  complete(
    week_statistics = relational_table_dates %>%
      distinct(week) %>%
      pull(week),
    fill = list(number_notifications = 0L)
  )
