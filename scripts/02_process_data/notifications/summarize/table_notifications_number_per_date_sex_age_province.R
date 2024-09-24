#
# Table aggregated data per date, age category, sex and province
# 

table_notifications_number_per_date_sex_age_province <- data_notifications %>% 
  count(
    date_statistics, age_10, sex, province_name,
    name = "number_notifications") %>% 
  add_column(
    date_of_report = today(),
    .before = 0)