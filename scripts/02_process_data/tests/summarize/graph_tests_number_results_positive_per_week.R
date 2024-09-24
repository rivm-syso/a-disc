graph_tests_number_results_positive_per_week <- table_tests_number_percentage_positive_per_week %>%
  select(
    !percentage_positive_tests
  ) %>%
  pivot_longer(
    !week,
    names_to = "statistic",
    values_to = "number_of_tests",
    values_drop_na = TRUE
  ) %>%
  ggplot(
    mapping = aes(
      x = week,
      y = number_of_tests,
      fill = statistic
    )
  ) +
  geom_col(
    position = "dodge"
  ) +
  scale_fill_manual(
    values = c(color_tests_percentage_positive, color_tests_results),
    name = NULL,
    labels = c("Test positive", "Test with result"),
    guide = guide_legend(reverse = TRUE)
  ) +
  labs(
    x = "Week of statistics",
    y = "Number of tests"
  ) +
  theme_graphs_tests