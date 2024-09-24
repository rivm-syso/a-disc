# Import all static data rds files in folder_name

# Objective:
# this function imports all files in the data/static/<name>. 
# It is is used in Prepare/import/static_data.R script

# Arguments: 
# folder_name: string | the specific name of the folder inside data/static 
# from where all files should be imported (e.g. geographic)
function_import_static_data <- function(folder_name) {
  
  # Define path
  path <- str_c("data/static/", folder_name)
  
  # Define files in path
  files <- path %>%
    list.files(
      full.names = TRUE,
      pattern = "rds"
    )
  
  # Import all files in this path
  files %>%
    walk(
      .f = ~ readRDS(file = .x) %>%
        # Give the object its file name
        assign(
          x = .x %>% basename() %>% str_remove(pattern = "\\.rds"),
          envir = .GlobalEnv
        )
    )
}
