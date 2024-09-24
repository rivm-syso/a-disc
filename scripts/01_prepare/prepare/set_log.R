# Create path for log
path_log <- paste0(
  getwd(),
  "/",
  sprintf(
    "%s/%s/%s_%s.log",
    "logs",
    format(Sys.time(), "%Y%m"),
    # year-month
    format(Sys.time(), "%Y%m%d_%H%M"),
    "covid19"
  )
)

# Create log directory
dir.create(dirname(path_log), showWarnings = FALSE, recursive = TRUE)
# End logging this session to file
logger::log_appender(logger::appender_tee(path_log), index = 1)

# collect warnings and errors in logger
logger::log_warnings()
logger::log_errors()
logger::log_messages()
