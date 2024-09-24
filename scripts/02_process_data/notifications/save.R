logger::log_info("=== save notifications ===")

function_save_data(
  data_name = "data_notifications_raw",
  folder_name = "notifications/raw",
  proof_date = date_report,
  script_source = "scripts/02_process_data/notifications/save/save_raw.R"
)

function_save_data(
  data_name = "data_notifications",
  folder_name = "notifications/transformed",
  proof_date = date_report,
  script_source = "scripts/02_process_data/notifications/save/save_transformed.R"
)
