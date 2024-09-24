logger::log_info("=== import notifications ===")

# note that these aggregated open data is used as an example
# the real case based data used as input for COVID-19 surveillance in the Netherlands can not be shared due to privacy

data_notifications_raw <- read_delim(
  file = "https://data.rivm.nl/covid-19/COVID-19_casus_landelijk.csv",
  delim = ";",
  show_col_types = FALSE) %>% 
  # if date_report is equal to date_today, then use up to the most recent data from the RIVMdata website
  # note that these data might no longer be suitable to the current code (e.g. low notifications may cause empty tables and figures)
  filter(Date_statistics <= date_report)