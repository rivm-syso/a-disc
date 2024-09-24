logger::log_info("=== summarize notifications ===")

# tables
source(file = "scripts/02_process_data/notifications/summarize/table_notifications_number_per_week.R") # final (.xlsx) + background for plot
source(file = "scripts/02_process_data/notifications/summarize/table_notifications_number_per_day_last_7days_average_total.R") # interim (.rds)
source(file = "scripts/02_process_data/notifications/summarize/table_notifications_number_per_date_sex_age_province.R") # open data (.json)
source(file = "scripts/02_process_data/notifications/summarize/table_notifications_incidence_per_week_per_age_group.R") # final (.xlsx) + background for plot
source(file = "scripts/02_process_data/notifications/summarize/table_notifications_incidence_per_province_last_week.R") # background for plot

# graphs
source(file = "scripts/02_process_data/notifications/summarize/graph_notifications_number_per_week.R") # interim (.rds); depends on: table_notifications_number_per_week
source(file = "scripts/02_process_data/notifications/summarize/graph_notifications_incidence_per_week_per_age_group.R") # interim (.rds); depends on: table_notifications_incidence_per_week_per_age_group.R
source(file = "scripts/02_process_data/notifications/summarize/graph_notifications_incidence_per_province_last_week.R") # interim (.rds); depends on: table_notifications_incidence_per_province_last_week

# maps
source(file = "scripts/02_process_data/notifications/summarize/map_notifications_incidence_per_province_last_week.R") # interim (.rds); depends on: table_notifications_number_per_week


