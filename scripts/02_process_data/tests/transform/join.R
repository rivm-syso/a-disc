logger::log_info("transform join")

data_tests <- data_tests %>%
  left_join(
    y = relational_table_geographic_regions %>%
      distinct(
        province_code,
        province_name,
        security_region_code
      ),
    by = "security_region_code"
  ) %>% 
  relocate(
    province_code, province_name, security_region_code,
    .after = last_col())