date_today <- today()

# for this template scripts we will use a "hard" report date
# to make sure the scripts will work (e.g. low notifications/tests can cause empty tables and figures)
# to run the script with the most recent data
# replace date_report <- ymd("2023-03-21") by date_report <- date_today
date_report <- ymd("2023-03-21")

# last data available in rivm data catalog
date_file_notifications <- ymd("2023-03-31")
date_file_tests <- ymd("2023-03-21")

date_start_last_wave <- ymd("2021-10-04")
date_expansion_testing <- ymd("2021-06-01")

week_current <- date_report %>%
  floor_date(unit = "weeks")

week_last_complete <- week_current - weeks(1)


