
# Table incidence of notifications per week and per age_group
#

# Calculate notifications per week and per age_group
tmp_1 <- data_notifications %>% 
  left_join(
    y = relational_table_dates %>% 
      distinct(
        date,
        week),
    by = c("date_statistics" = "date")) %>%
  left_join(
    y = relational_table_age %>% 
      distinct(
        age_10,
        age_group),
    by = "age_10") %>% 
  group_by(
    week,
    age_group) %>% 
  summarize(
    number_notifications = n(),
    .groups = "drop") %>% 
  complete(
    week = relational_table_dates %>%
      distinct(week) %>% 
      pull(week),
    age_group = relational_table_age %>%
      distinct(age_group) %>% 
      pull(age_group),
    fill = list(number_notifications = 0L)) 

# Calculate population per age_group 0-19, 20-69, 70+
tmp_2 <- table_demographic_population_municipality_age_sex %>%
  left_join(
    y = relational_table_age %>%
      distinct(
        age = age,
        age_group),
    by = "age") %>%
  group_by(
    age_group) %>%
  summarize(
    population = sum(population),
    .groups = "drop")

# Calculate incidence of notifications per week and per age_group
table_notifications_incidence_per_week_per_age_group <- tmp_1 %>% 
  left_join(
    y = tmp_2,
    by = "age_group") %>%
  mutate(
    incidence_per_100000 = 100000*number_notifications/population) %>%
  select(
    -c(number_notifications, population))

# Remove all "tmp" objects
function_remove_temporary_objects()
