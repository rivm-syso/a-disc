logger::log_info("=== transform tests ===")

# rename data to keep data raw preserved
data_tests <- data_tests_raw

source(file = "scripts/02_process_data/tests/transform/rename.R")
source(file = "scripts/02_process_data/tests/transform/join.R")
