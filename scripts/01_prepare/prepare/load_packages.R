packages_required <- c(
  "tidyverse" = "2.0.0",
  "lubridate" = "1.9.4",
  "cbsodataR" = "1.2.1",
  "sf"        = "1.0.20",
  "writexl"   = "1.5.4",
  "knitr"     = "1.50",
  "rmarkdown" = "2.29",
  "here"      = "1.0.1",
  "jsonlite"  = "2.0.0",
  "logger"    = "0.3.0",
  "plotly"    = "4.11.0"
)

# installed packages
packages_installed <- installed.packages() |> 
  as.data.frame() |>
  select(Package, Version) |> 
  filter(Package %in% names(packages_required))
rownames(packages_installed) <- NULL

# Maak een data frame met de namen en versies
packages_overview <- data.frame(
  Package = as.character(names(packages_required)),
  Version_adisc = as.character(packages_required)) |>
  left_join(
    packages_installed, 
    by = c("Package"))


# install missing packages or re-install with especific version when the version is not the same:
# Make sure remotes is installed
if (!"remotes" %in% rownames(installed.packages())) install.packages("remotes")

for (i in seq_len(nrow(packages_overview))) {
  pkg <- packages_overview$Package[i]
  required_version <- packages_overview$Version_adisc[i]
  current_version <- packages_overview$Version[i]
  
  # If the package is missing
  if (is.na(current_version)) {
    cat("Installing:", pkg, "version", required_version, "(not installed)\n")
    remotes::install_version(pkg, version = required_version, upgrade = "never")
    library(pkg, character.only = TRUE)
  } else if (current_version != required_version) {
    cat("Updating:", pkg, "from version", current_version, "to", required_version, "\n")
    remotes::install_version(pkg, version = required_version, upgrade = "never")
    library(pkg, character.only = TRUE)
  } else {
    cat("Package", pkg, "is already at required version (", current_version, ")\n")
    library(pkg, character.only = TRUE)
  }
}

rm(packages_required, packages_installed, packages_overview)

