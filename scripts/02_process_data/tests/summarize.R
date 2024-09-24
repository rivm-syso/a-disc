logger::log_info("=== summarize tests ===")

# tables
# source(file = "scripts/02_process_data/tests/summarize/table_tests_number_positive_per_week.R") # 
# source(file = "scripts/02_process_data/tests/summarize/table_tests_percentage_positive_per_week.R") # 
source(file = "scripts/02_process_data/tests/summarize/table_tests_number_percentage_positive_per_week.R") # final (.xlsx)
source(file = "scripts/02_process_data/tests/summarize/table_tests_percentage_positive_per_province_last_week.R") # open data + background for plot

# graphs
source(file = "scripts/02_process_data/tests/summarize/graph_tests_number_results_per_week.R") # interim (.rds); depends on: table_tests_number_percentage_positive_per_week
source(file = "scripts/02_process_data/tests/summarize/graph_tests_percentage_positive_per_week.R") # interim (.rds); depends on: table_tests_number_percentage_positive_per_week
source(file = "scripts/02_process_data/tests/summarize/graph_tests_number_results_positive_per_week.R") # interim (.rds); depends on: table_tests_number_percentage_positive_per_week

# maps
source(file = "scripts/02_process_data/tests/summarize/map_tests_percentage_positive_per_province_last_week.R") # interim (.rds); depends on: table_tests_percentage_positive_per_province_last_week
