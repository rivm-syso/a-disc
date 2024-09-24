table_tests_number_positive_per_week <- data_tests %>% 
  left_join(
    y = relational_table_dates %>% 
      distinct(
        date,
        week),
    by = c("date_of_statistics" = "date")) %>% 
  group_by(
    week) %>% 
  summarize(
    tested_positive  = sum(tested_positive ),
    .groups = "drop") %>% 
  complete(
    week = relational_table_dates %>%
      distinct(week) %>%
      pull(week),
    fill = list(
      tested_positive  = 0L))