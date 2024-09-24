# Import interim summaries

# Objective:
# this function imports interim summaries (i.e. rds) from output/interim into R workspace
# this is necessary, for instance, in produce_report.R when the previous code have been executed via scheduled commands

# Arguments:
# file_name: string | file(s) to be imported (e.g. "table_notifications")
# proof_date: date | date to be tested (e.g. today() )
function_import_interim <- function(file_name = "all", proof_date = NA_Date_ ) {
  
  # List files in folder interim
  files <- "output/interim" %>%
    list.files(
      full.names = TRUE,
      pattern = "rds"
    )
  
  # Define files_to_import
  if (file_name == "all") {
    
    # All files in the folder
    files_to_import <- files
  } else {
    
    # Otherwise, define file name
    files_to_import <- str_c(path, "/", file_name, ".rds")
  }
  
  # Evaluate whether interim_summaries should be updated
  # If files are not updated, show error
  if (file.mtime(files) %>% min() %>% as_date() < proof_date) {
    stop(str_c("interim summaries in ", path, " are not updated"))
  }
  
  # Otherwise, import files_to_import
  files_to_import %>%
    walk(
      .f = ~ readRDS(file = .x) %>%
        # Give the object its file name
        assign(
          x = .x %>% basename() %>% str_remove(pattern = "\\.rds"),
          envir = .GlobalEnv
        )
    )
}
