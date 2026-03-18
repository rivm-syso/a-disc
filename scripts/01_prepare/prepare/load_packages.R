logger::log_info("load_packages")
# define packages rewuired
all_packages <- c(
  "tidyverse", 
  "lubridate", 
  "cbsodataR", 
  "sf", 
  "writexl", 
  "knitr", 
  "rmarkdown", 
  "here", 
  "jsonlite", 
  "logger", 
  "plotly"
)

# check whether all packages are installed
for (package in all_packages) {
  if (!require(package, character.only = TRUE)) {
    # install
    install.packages(package)
    # load
    library(package, character.only = TRUE)
  }
}