logger::log_info("transform rename")

data_notifications <- data_notifications %>%
  rename_with(
    .cols = everything(),
    .fn = str_to_lower
  ) 