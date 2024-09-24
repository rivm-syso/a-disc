logger::log_info("=== transform notifications ===")

# rename data to keep data raw preserved
data_notifications <- data_notifications_raw

source(file = "scripts/02_process_data/notifications/transform/rename.R")
source(file = "scripts/02_process_data/notifications/transform/mutate.R")
source(file = "scripts/02_process_data/notifications/transform/join.R")
