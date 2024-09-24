logger::log_info("=== validate tests ===")

# Validate data publication date
# The publication date of the data should be ideally equal to today
# Here the publication proof date is given as date_file_tests, 
# as tests data are no longer being updated in rivm data catalog
function_validate_data_publication_date(
  data_name = data_tests_raw,
  publication_variable = Date_of_report,
  proof_date = date_file_tests
  # use date_today as proof_date to see data failing to pass validation
  # proof_date = date_today
)

# Print data version
logger::log_info(str_c( "data version number: ",
  data_tests_raw %>%
    distinct(Version) %>%
    pull
))

