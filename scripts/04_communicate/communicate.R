logger::log_info("=== communicate ===")

# Prepare
# If the previous scripts were executed via scheduled command than Prepare step needs to be executed now
# Otherwise this step will be (automatically) skipped
source(file = "scripts/01_prepare/prepare.R")

source(file = "scripts/04_communicate/communicate/send_email.R")

log_info("=== communicate done ===")

