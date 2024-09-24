"scripts/01_prepare/prepare/define_objects/functions" %>%
  list.files(
    full.names = TRUE
  ) %>%
  walk(
    .f = source
  )
