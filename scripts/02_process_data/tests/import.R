logger::log_info("=== import tests ===")

# note that these aggregated open data is used as an example
# the real test based data used as input for COVID-19 surveillance in the Netherlands can not be shared due to privacy

data_tests_raw <- read_delim(
  file = "https://data.rivm.nl/covid-19/COVID-19_uitgevoerde_testen.csv",
  delim = ";",
  show_col_types = FALSE) %>%
  select(-Security_region_name)




