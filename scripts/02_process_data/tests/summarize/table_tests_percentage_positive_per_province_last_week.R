#
# Table number and percentage positive tests per province in the last week
#

# Filter tests in the last week
tmp_1 <- data_tests %>% 
  left_join(
    y = relational_table_dates,
    by = c("date_of_statistics" = "date")) %>% 
  filter(
    week == week_last_complete) 

# Calculate number of tests per province in the last week
tmp_2 <- tmp_1 %>% 
  group_by(
    province_code) %>% 
  summarize(
    tested_with_result = sum(tested_with_result),
    tested_positive = sum(tested_positive),
    .groups = "drop") %>% 
  complete(
    province_code = relational_table_geographic_regions %>%
      distinct(province_code) %>% 
      pull(province_code),
    fill = list(
      tested_with_result = 0L,
      tested_positive = 0L)) %>% 
  drop_na() 

# Calculate percentage positive tests per province in the last week
table_tests_percentage_positive_per_province_last_week <- tmp_2 %>% mutate(
  percentage_positive_tests = if_else(
    condition = tested_with_result > 0,
    true = 100*tested_positive/tested_with_result,
    false = NA_real_))

function_remove_temporary_objects()
