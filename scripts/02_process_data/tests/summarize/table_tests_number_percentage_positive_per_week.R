table_tests_number_percentage_positive_per_week <- data_tests %>% 
  left_join(
    y = relational_table_dates,
    by = c("date_of_statistics" = "date")) %>% 
  group_by(
    week) %>% 
  summarize(
    tested_positive = sum(tested_positive),
    tested_with_result  = sum(tested_with_result ),
    .groups = "drop") %>% 
  complete(
    week = relational_table_dates %>% 
      distinct(week) %>% 
      pull(week),
    fill = list(
      tested_positive = 0L,
      tested_with_result  = 0L)) %>% 
  mutate(
    percentage_positive_tests = if_else(
      condition = tested_with_result  > 0,
      true = 100*tested_positive/tested_with_result ,
      false = NA_real_))
