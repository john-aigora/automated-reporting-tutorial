
base_table <- tutorial_data[["Age"]] %>%
  table() %>%
  enframe(name = "Age", value = "Count") %>%
  mutate(Count = as.integer(Count)) %>%
  mutate(Percent = format_percent(Count / sum(Count), num_decimals = 2))

base_table 