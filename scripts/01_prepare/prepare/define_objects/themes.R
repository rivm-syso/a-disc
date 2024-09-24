#
# Graphs
#

# Notifications
theme_graphs_notifications <- list(
  scale_x_date(
    limits = c(date_start_last_wave, date_report),
    expand = expansion(add = -0.5),
    breaks = "1 month", date_labels = "%b %Y"
  ),
  theme_minimal(),
  theme(
    axis.text.x  = element_text(angle = 90, hjust = 1, vjust = 0.5),
    legend.title = element_text(size = 10)
  )
)

# Tests
theme_graphs_tests <- list(
  scale_x_date(
    limits = c(date_start_last_wave, date_report),
    expand = expansion(add = -0.5),
    breaks = "1 month", date_labels = "%b %Y"
  ),
  theme_minimal(),
  theme(
    axis.text.x  = element_text(angle = 90, hjust = 1, vjust = 0.5),
    legend.title = element_text(size = 10)
  )
)


#
# Maps
#

# Notifications
theme_maps_notifications <- list(
  theme_minimal(),
  scale_fill_brewer(palette = "Oranges", direction = -1),
  theme(
    legend.justification = c(0, 1),
    legend.position = "inside",
    legend.position.inside = c(0, 1),
    axis.title = element_blank(),
    axis.text = element_blank(),
    panel.grid = element_line(colour = "transparent"),
    plot.subtitle = element_text(size = 10, colour = "grey50")
  )
)


# Tests
theme_maps_tests <- list(
  theme_minimal(),
  scale_fill_gradient(low = "white", high = color_tests_percentage_positive),
  theme(
    legend.justification = c(0, 1),
    legend.position = "inside",
    legend.position.inside = c(0, 1),
    axis.title = element_blank(),
    axis.text = element_blank(),
    panel.grid = element_line(colour = "transparent"),
    plot.subtitle = element_text(size = 10, colour = "grey50")
  )
)
