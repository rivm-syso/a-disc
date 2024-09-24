logger::log_info("store final")

list(
  "tests_n_perc_per_wk"= table_tests_number_percentage_positive_per_week) %>% 
  
  write_xlsx(
    path = str_c("output/final/tests_", 
                 run_timestamp, 
                 ".xlsx"),
    format_headers = FALSE
  )