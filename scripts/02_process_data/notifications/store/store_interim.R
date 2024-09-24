logger::log_info("store interim")

# Store interim summaries as .rds

# make a list of all interim summaries to be stored 
list_interim_tmp <- lst(
  # Tables
  table_notifications_number_per_day_last_7days_average_total,
  
  # Graphs
  graph_notifications_number_per_week,
  graph_notifications_incidence_per_province_last_week,
  graph_notifications_incidence_per_week_per_age_group,
  
  # Maps
  map_notifications_incidence_per_province_last_week) 

# store all interim as .rds
Map(function_store_interim, list_interim_tmp, names(list_interim_tmp))

function_remove_temporary_objects()



