logger::log_info("=== process data notifications is started ===")

# Prepare
# If executing this Process data scripts from scheduled command than Prepare step needs to be executed from here
# Otherwise this step will be (automatically) skipped
source(file = "scripts/01_prepare/prepare.R")

# ETL
source(file = "scripts/02_process_data/notifications/import.R")
source(file = "scripts/02_process_data/notifications/validate.R")
source(file = "scripts/02_process_data/notifications/verify.R")
source(file = "scripts/02_process_data/notifications/transform.R")
source(file = "scripts/02_process_data/notifications/save.R")

# Analyze
source(file = "scripts/02_process_data/notifications/analyze.R")

# Summaries
source(file = "scripts/02_process_data/notifications/summarize.R")
source(file = "scripts/02_process_data/notifications/store.R")

logger::log_info("=== process data notifications is finished ===")
