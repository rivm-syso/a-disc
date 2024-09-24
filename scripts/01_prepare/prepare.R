if (!exists('run_timestamp')) {
  
  # first start log
  source("scripts/01_prepare/prepare/set_log.R")
  
  # prepare
  logger::log_info("=== prepare is started ===")
  source("scripts/01_prepare/prepare/load_packages.R")
  source("scripts/01_prepare/prepare/set_options.R")
  source("scripts/01_prepare/prepare/define_objects.R")
  source("scripts/01_prepare/prepare/read_static_data.R")
  source("scripts/01_prepare/prepare/create_folders.R")
  
  # make run_timestamp lable to signal that prepare has been already executed 
  # and is used to label file naem eith teh date and time log of the code
  logger::log_info("define run_timestamp")
  run_timestamp <- str_c(date_report %>%  format("%Y%m%d"), "_", now() %>% format("%H%M"))
}else {
  log_info("run_timestamp exists, prepare skipped")
}
if(ymd_hm(run_timestamp) + days(1) <  now()){
  logger::log_warn(str_c("\n", 
                         "\n", "NB:",
                         "\n", "date_report has been defined as ", date_report,  " in scripts/01_prepare/prepare/define_objects/dates.R !",
                         "\n", "define date_report as today() to use updated data.",
                         "\n", "note that the scripts might no longer work since low notifications/tests numbers might cause empty tables/figures"))
  
}
logger::log_info("=== prepare is finished ===")
