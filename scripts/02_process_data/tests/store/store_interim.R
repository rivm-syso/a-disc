logger::log_info("store interim")

# Store interim summaries as .rds

# make a list of all interim summaries to be stored 
  list_interim_tmp <- lst(
  
  # Tables

  # Graphs
  graph_tests_number_results_per_week,
  graph_tests_percentage_positive_per_week,
  graph_tests_number_results_positive_per_week,
  
  # Maps
  map_tests_percentage_positive_per_province_last_week) 
  
  # store all interim as .rds
  Map(function_store_interim, list_interim_tmp, names(list_interim_tmp))

function_remove_temporary_objects()

