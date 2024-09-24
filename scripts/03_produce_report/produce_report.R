logger::log_info("=== produce report is started ===")

# Prepare
# If executing this Process data scripts from scheduled command than Prepare step needs to be executed from here
# Otherwise this step will be (automatically) skipped
source(file = "scripts/01_prepare/prepare.R")

# Produce report combined data (i.e. comprehensive epidemiological situation report)
source(file = "scripts/03_produce_report/sitrep/import_interim_summaries.R")
source(file = "scripts/03_produce_report/sitrep/render_rmarkdown.R")
