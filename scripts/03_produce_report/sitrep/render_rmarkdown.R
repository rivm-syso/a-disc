# render RMarkdwon
WD <- getwd()
rmarkdown::render(
  knit_root_dir = WD,
  input = file.path(WD, "scripts/03_produce_report/sitrep/illustrative_COVID19_sitrep.Rmd"),
  output_file = file.path(WD, str_c("output/report/illustrative_COVID19_sitrep_", run_timestamp, ".html"))
)
rm(WD)
