logger::log_info("=== process data tests is started ===")

# Prepare
# If executing this Process data scripts from scheduled command than Prepare step needs to be executed from here
# Otherwise this step will be (automatically) skipped
source(file = "scripts/01_prepare/prepare.R")

# ETL
source(file = "scripts/02_process_data/tests/import.R")
source(file = "scripts/02_process_data/tests/validate.R")
source(file = "scripts/02_process_data/tests/verify.R")
source(file = "scripts/02_process_data/tests/transform.R")
source(file = "scripts/02_process_data/tests/save.R")

# Analyze
source(file = "scripts/02_process_data/tests/analyze.R")

# Summaries
source(file = "scripts/02_process_data/tests/summarize.R")
source(file = "scripts/02_process_data/tests/store.R")

logger::log_info("=== process data tests is finished ===")
