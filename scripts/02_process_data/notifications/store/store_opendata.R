logger::log_info("store open data")

table_notifications_number_per_date_sex_age_province %>%
  write_json(
    path = str_c("output/opendata/table_notifications_number_per_date_sex_age_province_", 
                 run_timestamp,  
                 ".json"),
    dataframe = "rows", na = NULL
  )
