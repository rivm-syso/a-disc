logger::log_info("=== save test ===")

function_save_data(
  data_name = "data_tests_raw",
  folder_name = "tests/raw",
  proof_date = date_report,
  script_source = "scripts/02_process_data/tests/save/save_raw.R"
)

function_save_data(
  data_name = "data_tests",
  folder_name = "tests/transformed",
  proof_date = date_report,
  script_source = "scripts/02_process_data/tests/save/save_transformed.R"
)
