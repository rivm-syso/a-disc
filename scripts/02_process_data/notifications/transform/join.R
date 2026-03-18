logger::log_info("transform join")

data_notifications <- data_notifications %>%
  left_join(
    y = data_cbs_regions %>%
      distinct(
        province_code,
        province_name
      ),
    by = "province_name"
  ) %>%
  relocate(
    province_code, province_name, municipal_health_service, 
    .after = last_col())
