logger::log_info("summarize tests: map_tests_percentage_positive_per_province_last_week")

map_tests_percentage_positive_per_province_last_week <- left_join(
  x = sf_cbs_province,
  y = table_tests_percentage_positive_per_province_last_week,
  by = c("statcode" = "province_code")) %>% 
  
  ggplot() +
  
  geom_sf(
    mapping = aes(fill = percentage_positive_tests)) +
  
  geom_sf(
    data = sf_cbs_province,  size = 0.4, colour = "grey50", fill = NA) + 
  
  
  labs(fill = "Percentage positive tests") +
  
  theme_maps_tests
