logger::log_info("=== verify records tests ===")

# check for unlikely results
# check whether the number of tests remarkably differ from previous week 
data_tests_raw %>% 
  filter(!is.na(Security_region_code)) %>% 
  group_by(Security_region_code) %>% 
  # calculate proportion of testes reported to previously reported
  mutate(diff_perc = Tested_with_result/lag(Tested_with_result , default = first(Tested_with_result ), order_by = Date_of_statistics )*100) %>% 
  ungroup %>% 
  # flag number of tests that doubled or halved
  mutate(diff_perc_conclusion = case_when(
    diff_perc > 200 ~ "number of tests (more than) doubled compared to previous week",
    diff_perc < 50  ~ "number of tests (less than) halved compared to previous week",
    TRUE ~ NA_character_
  )) %>% 
  filter(!is.na(diff_perc_conclusion)) %>%
  write_xlsx(
    path = str_c("output/verify/verify_tests_", run_timestamp, ".xlsx"))


  
