logger::log_info("store final")

list(
  "notifications_n_wk"= table_notifications_number_per_week,
  "notifications_incid_wk_agegrp" = table_notifications_incidence_per_week_per_age_group) %>% 
  
  write_xlsx(
    path = str_c("output/final/notifications_", 
                 run_timestamp, 
                 ".xlsx"),
    format_headers = FALSE
  )