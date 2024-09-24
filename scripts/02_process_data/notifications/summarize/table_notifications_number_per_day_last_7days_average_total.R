#
# Table notifications per day in the last week, average and total of the last week
#

# Calculate notifications per day in the last week
tmp_1 <- data_notifications %>% 
  left_join(
    y = relational_table_dates,
    by = c("date_statistics" = "date")) %>% 
  filter(week == week_last_complete) %>% 
  group_by(
    date_statistics) %>% 
  summarize(
    number_notifications = n(),
    .groups = "drop") %>% 
  complete(
    date_statistics = relational_table_dates %>% 
      filter(week == week_last_complete) %>%
      pull(date),
    fill = list(number_notifications = 0L)) %>% 
  mutate(
    date_statistics = date_statistics %>% as.character()) 

# Add average and total notifications in the last week
table_notifications_number_per_day_last_7days_average_total <- tmp_1 %>% 
  add_row(
    date_statistics = "7-day average",
    number_notifications = tmp_1 %>% pull(number_notifications) %>% mean %>% round()) %>% 
  add_row(
    date_statistics = "7-day total",
    number_notifications = tmp_1 %>% pull(number_notifications) %>% sum)

# Remove all "tmp" objects
function_remove_temporary_objects()