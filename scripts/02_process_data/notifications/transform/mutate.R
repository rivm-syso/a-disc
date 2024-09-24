logger::log_info("transform mutate")

data_notifications <- data_notifications %>%
  mutate(
    age_10 = agegroup %>% na_if("Unknown"),
    sex_cat = sex %>% na_if("Unknown"),
    province_name = province %>% na_if("Unknown")
  )