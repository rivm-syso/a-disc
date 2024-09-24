graph_tests_percentage_positive_per_week <- table_tests_number_percentage_positive_per_week %>%
  ggplot(
    mapping = aes(
      x = week,
      y = percentage_positive_tests
    )
  ) +
  geom_line(
    color = color_tests_percentage_positive
  ) +
  labs(
    x = "Week of statistics",
    y = "Percentage of positive results"
  ) +
  theme_graphs_tests
