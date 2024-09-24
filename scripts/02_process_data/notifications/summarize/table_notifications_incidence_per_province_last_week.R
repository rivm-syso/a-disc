#
# Table incidence of notifications per province
#

# Calculate population per province
tmp_1 <- table_demographic_population_municipality_age_sex %>% 
  left_join(
    y = relational_table_geographic_regions,
    by = "municipality_code") %>% 
  group_by(
    province_code) %>% 
  summarize(
    population = sum(population),
    .groups = "drop")

# Calculate notifications per province in the last week
tmp_2 <- data_notifications %>% 
  left_join(
    y = relational_table_dates,
    by = c("date_statistics" = "date")) %>% 
  filter(week == week_last_complete) %>% 
  group_by(
    province_code) %>% 
  summarize(
    number_notifications = n(),
    .groups = "drop") %>% 
  complete(
    province_code = tmp_1 %>%
      distinct(province_code) %>% 
      pull(province_code),
    fill = list(number_notifications = 0L))  %>% 
  drop_na()

# Calculate incidence of notifications per province in the last week
table_notifications_incidence_per_province_last_week <- tmp_2 %>% 
  left_join(
    y = tmp_1,
    by = "province_code") %>% 
  mutate(
    incidence_per_100000 = 100000*number_notifications/population) %>% 
  select(
    province_code, incidence_per_100000)

# Remove all "tmp" objects
function_remove_temporary_objects()
