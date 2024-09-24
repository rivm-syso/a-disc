graph_notifications_incidence_per_week_per_age_group <- table_notifications_incidence_per_week_per_age_group %>% 
  na.omit() %>% 
  droplevels() %>% 
  
  ggplot(
    mapping = aes(
      x = week,
      y = incidence_per_100000)) +
  
  geom_col(fill = color_notifications_event) +
  
  labs(
    x = "Week of statistics", 
    y = "Notifications per 100000") +
  
  facet_grid(
    cols = vars(age_group)) +
  
  theme_graphs_notifications