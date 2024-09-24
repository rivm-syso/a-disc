# Function save data

# Objective: 
# Save data only once a day.
# Therefore this function search in the given folder
# for a file matching the given name, extension and date
# if a file is found in the folder than nothing happens
# otherwise the function source the scripts that save data in the folder

# Arguments:
# data_name: string | the name of the data in the code (e.g. data_notifications)
# folder_name: string | the name of the folder (e.g. notifications/raw)
# proof_date: date | the date to search for in the file name (e.g. "2023-03-21" %>%  as.Date) 
# script_source: string | the path to the script that should be executed if no data is found in the folder with the proof_date (e.g. ""scripts/.../save_raw.R")

function_save_data <- function(data_name, folder_name, proof_date, script_source) {
  
  # Define path
  path <- str_c("data/", folder_name)
  
  # List files saved in folder_name with data_name, proof_date and pattern
  file_to_save <- path %>%
    list.files(full.names = TRUE) %>%
    str_subset(pattern = data_name) %>%
    str_subset(pattern = proof_date %>% format("%Y%m%d")) %>%
    str_subset(pattern = ".rds")
  
  # Evaluate whether data wrangled with date proof_date already exists in folder_name before attempting to save
  if (length(file_to_save) == 0) {
    # If file_to_save is zero save data in the folder
    source(file = script_source)
  } else {
    # If file_to_save exists in folder_name do nothing
    logger::log_info(str_c(data_name, " ", proof_date, " already exists in ", folder_name))
  }
}
