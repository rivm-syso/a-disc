# Function validate data publication date

# Objective:
# this function evaluates whether data publication date matches the expected date given by proof_date
# this is necessary to spot when data haven't been properly updated
# this function is used in process_data/validate scripts

# Arguments:
# data_name: string | the name of the data in the scripts (e.g. data_notifications)
# publication_variable | the variable in the data that should be tested/compared to proof_date (e.g. Date_of_report)
# proof_date: date | the date expected to be seen in publication_variable (e.g. today() )

function_validate_data_publication_date <- function(data_name, publication_variable, proof_date) {
  
  # define publication variable
  # enquo + !!: Tells R that this is a column in the data
  publication_variable <- enquo(publication_variable)
  
  # get publication date
  publication_date <- data_name %>%
    transmute(Publication_date = (!!publication_variable) %>% as_date()) %>%
    unique() %>%
    pull()
  
  # evaluate whether publication date is equal to proof_date
  if (!publication_date %in% proof_date) {
    stop(str_c("data are not equal to ", proof_date, ". Last publication date is ", publication_date))
  } 
  else{
    logger::log_info(str_c("data are updated. data publication date is ", publication_date))
  }
}
