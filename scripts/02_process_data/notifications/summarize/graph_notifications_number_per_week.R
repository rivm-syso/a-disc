#
# Graph number of notifications per week
#

graph_notifications_number_per_week <- table_notifications_number_per_week %>%
  ggplot(
    mapping = aes(
      x = week_statistics,
      y = number_notifications
    )
  ) +
  geom_col(
    fill = color_notifications_event) +
  labs(
    x = "Week of statistics",
    y = "Number of notifications"
  ) +
  theme_graphs_notifications
