# Function remove temporary objects

# Objective:
# Remove objects matching pattern "tmp" from R worspace

function_remove_temporary_objects <- function() {
  
  # Remove all tmp objects from global environment
  rm(
    list = ls(envir = .GlobalEnv) %>% str_subset(pattern = "tmp"),
    envir = .GlobalEnv
  )
}
