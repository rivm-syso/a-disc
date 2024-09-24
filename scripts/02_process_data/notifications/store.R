logger::log_info("=== store notifications summaries ===")

source(file = "scripts/02_process_data/notifications/store/store_interim.R")
source(file = "scripts/02_process_data/notifications/store/store_final.R")
source(file = "scripts/02_process_data/notifications/store/store_opendata.R")
