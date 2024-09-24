#----
# Disclaimer:
# this A-DISC pipeline template is merely illustrative
# it reproduces the same scripts structure used for COVID-19 surveillance in the Netherlands
# but it DOES NOT contain the actual data, code or output used for COVID-19 surveillance in the Netherlands


#----
# A-DISC Master-script: COVID-19

# Prepare
source(file = "scripts/01_prepare/prepare.R")

# Process data 1 (notifications)
source(file = "scripts/02_process_data/notifications/process_data.R")
# Process data 2 (tests)
source(file = "scripts/02_process_data/tests/process_data.R")

# Produce report
source(file = "scripts/03_produce_report/produce_report.R")

# Communicate - only illustrative
# source(file = "scripts/03_produce_report/communicate.R")