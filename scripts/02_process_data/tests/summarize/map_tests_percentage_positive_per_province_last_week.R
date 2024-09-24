map_tests_percentage_positive_per_province_last_week <- left_join(
  x = sf_province,
  y = table_tests_percentage_positive_per_province_last_week,
  by = c("code" = "province_code")) %>% 
  
  ggplot() +
  
  geom_sf(
    mapping = aes(fill = percentage_positive_tests)) +
  
  geom_sf(
    data = sf_province,  size = 0.4, colour = "grey50", fill = NA) + 
  
  
  labs(fill = "Percentage positive tests") +
  
  theme_maps_tests
