logger::log_info("save notifications raw")

data_notifications_raw %>% 
  saveRDS(file = str_c("data/notifications/raw/data_notifications_raw_", run_timestamp, ".rds")) 

