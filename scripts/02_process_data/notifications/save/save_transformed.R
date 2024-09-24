logger::log_info("save notifications transformed")

data_notifications %>% 
  saveRDS(file = str_c("data/notifications/transformed/data_notifications_transformed_", run_timestamp, ".rds")) 