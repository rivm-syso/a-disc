logger::log_info("read_static_data")

# Option 1:
# Import data from local folder 
# as described in the manuscript
# the data has been previously downloaded and saved as a static file
# function_import_static_data("demographic")
# function_import_static_data("geographic")


# Option 2:
# Get data from CBS statline
# added to the script to allow reproducibility of the code
source("scripts/01_prepare/prepare/read_static_data/geographic.R")
source("scripts/01_prepare/prepare/read_static_data/demographic.R")
