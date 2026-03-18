logger::log_info("read_static_data: demographic")
logger::log_info("read_static_data: demographic: data_cbs_population_municipality_age_sex")

# get metadata
metadata_cbs_03759ned <- cbs_get_meta("03759ned")

# get data
data_cbs_population_municipality_age_sex <- suppressWarnings(
  cbs_get_data( 
  # table id
  id = "03759ned",
  Geslacht = has_substring("3000") | has_substring("4000"),
  # Leeftijd = seq(from = 10010, to = 19905, by = 100) |>  as.character(),
  BurgerlijkeStaat = has_substring("T001019"),
  RegioS = has_substring("GM"),
  Perioden = has_substring("2025JJ00")) |> 
  as_tibble() |> 
  select(!c(BurgerlijkeStaat , Perioden, GemiddeldeBevolking_2)) |> 
  mutate(across(everything(), ~ str_remove_all(., " "))) 
)

# add discription related to code
data_cbs_population_municipality_age_sex <- data_cbs_population_municipality_age_sex |> 
  # age
  left_join(metadata_cbs_03759ned$Leeftijd |> 
              select(Key, age = Title),
            by =  c("Leeftijd" = "Key")) |> 
  filter(!str_detect(Leeftijd, "^22")) |> 
  filter(!Leeftijd == "10000") |> 
  mutate(
    age = str_remove(age, " jaar"),
    age = age |>  as.integer()
  ) |>
  # municipality
  left_join(metadata_cbs_03759ned$RegioS |> 
              select(Key, municipality_name = Title),
            by =  c("RegioS" = "Key")) |>
  # sex
  mutate(
    sex = case_when(
      Geslacht == "3000" ~ "Male",
      Geslacht == "4000" ~ "Female",
      TRUE ~ NA_character_
      
    )
  ) |> 
  # population
  mutate(
    population = BevolkingOp1Januari_1 |> as.numeric()
  ) |> 
  select(
    municipality_code = RegioS,
    municipality_name,
    age, 
    sex,   
    population) 

# remove metadata
rm(metadata_cbs_03759ned)