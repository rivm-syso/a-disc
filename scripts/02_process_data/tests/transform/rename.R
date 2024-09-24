logger::log_info("transform rename")

data_tests <- data_tests %>%
  rename_with(
    .cols = everything(),
    .fn = str_to_lower
  ) 