graph_tests_number_results_per_week <- table_tests_number_percentage_positive_per_week %>% 
  
  ggplot(
    mapping = aes(
      x = week,
      y = number_tests_with_result)) +
  
  geom_col(fill = color_tests_results) +
  
  labs(
    x = "Week of statistics",
    y = "Number of tests with result") + 
  
  theme_graphs_tests