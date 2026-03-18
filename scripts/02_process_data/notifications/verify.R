logger::log_info("=== verify records notifications ===")
logger::log_info("verify records notifications: see output/verify/")

# Verify missing week_of_death
list("Missing_week_of_death" = data_notifications_raw %>%
       filter(
         Deceased == "Yes" & is.na(Week_of_death))) %>%
  write_xlsx(
    path = str_c("output/verify/verify_notifications_", run_timestamp, ".xlsx"))
