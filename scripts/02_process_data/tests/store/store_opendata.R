logger::log_info("store open data")

table_tests_percentage_positive_per_province_last_week %>%
  write_json(
    path = str_c("output/opendata/table_tests_percentage_positive_per_province_last_week_", 
                 run_timestamp,  
                 ".json"),
    dataframe = "rows", na = NULL
  )
