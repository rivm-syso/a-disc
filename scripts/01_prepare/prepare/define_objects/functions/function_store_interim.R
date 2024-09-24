# Function store interim

# Objective:
# this function save interim object in folder output/interim
# the file is saved as .rds extensions as has the same name as the created objects

# Arguments:
# list_files: list | a list of objects names that should be saved in output/interim (e.g lst(graph_tests, table_notifications ))
# name: strings | how the files should be named. we use the same name as they have in hte scripts (e.g. names(lst(graph_tests, table_notifications ) ) )

function_store_interim <-function(list_files, name) {
  
  list_files %>% saveRDS(
    file = str_c("output/interim/", name, ".rds")
    )
}