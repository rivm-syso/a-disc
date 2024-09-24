tmp_1 <- table_notifications_incidence_per_province_last_week %>%
  arrange(desc(incidence_per_100000)) %>% 
  mutate(
    incidence_per_100000_category = incidence_per_100000 %>%
      # POBL: Problem to be solved: cut_interval 
      # cut_interval makes groups with equal range, but that causes some groups to be empty  
      cut_interval(5, right = TRUE) %>%   
      str_replace_all(",", " - ") %>%
      # replace [] and ()
      str_replace_all("[\\[\\]\\(\\)]", "") %>% 
      fct_inorder()) 


tmp_2 <- left_join(
  x = sf_province,
  y = tmp_1,
  by = c("code" = "province_code"))



graph_notifications_incidence_per_province_last_week <- ggplot() +
  
  geom_sf(
    data = tmp_2,
    mapping = aes(fill = incidence_per_100000_category)) +
  
  geom_sf(
    data = sf_province,  size = 0.4, colour = "grey50", fill = NA) + 
  
  
  labs(fill = "Notifications per 100000") +
  
  theme_maps_notifications

function_remove_temporary_objects()