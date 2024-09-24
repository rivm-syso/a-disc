logger::log_info("send e-mail to <name recipient>")
library(emayili)

# RIVM mail server
smtp <- server(
  host = "mailhost.rivm.nl",
  max_times = 1,
  reuse = FALSE)

# path to attachment file
path <- "output/final/"
file <- list.files(path) %>% 
  str_subset("notifications") %>% 
  str_subset(date_report %>% format("%Y%m%d")) %>% 
  max

# Send e-mail
envelope() %>%
  to("name.recipient1@rivm.nl") %>%
  from("RStudio server resources<name.sender@rivm.nl>") %>%
  subject("Update notifications per week") %>%
  attachment(path = str_c(path, file)) %>% 
  html("
      1. Log in the server
      2. In de Terminal: ssh shiny.rivm.nl
      3. Log in with your password
      4. Exit and close") %>%
  smtp()

rm(path, file)