logger::log_info("read_static_data: geographic")
logger::log_info("read_static_data: geographic: data_cbs_regions")
data_cbs_regions <-  cbs_get_data("85755NED")|> 
  as_tibble() |> 
  select(
    municipality_code = Code_1,
    municipality_name = Naam_2, 
    country_part_code = Code_26,
    country_part_name = Naam_27, 
    province_code = Code_28,
    province_name = Naam_29,
    security_region_code = Code_48,
    security_region_name = Naam_49
  ) |> 
  mutate(across(everything(), ~ str_remove_all(., " "))) 

logger::log_info("read_static_data: geographic: sf_cbs_")
sf_cbs_province <- cbs_get_sf("provincie", 2025)
