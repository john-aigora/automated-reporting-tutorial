input_filename <- "input/raw_data/AigoraPlus Tutorial - Example Data.xlsx"
tutorial_data <- read_excel(file.path(input_filename))

summary_table <- tutorial_data[["Age"]] %>%
  table() %>%
  enframe(name = "Age", value = "Count") %>%
  filter(Count>10) %>% 
  mutate(Count = as.integer(Count)) %>% 
  mutate(Percent = Count / sum(Count))

summary_table[nrow(summary_table) + 1, 1] <- "Total"
summary_table[nrow(summary_table), 2] <- sum(summary_table$Count, na.rm = T)
summary_table[nrow(summary_table), 3] <-  sum(summary_table$Percent, na.rm = T)

summary_table = summary_table%>%
  mutate(Percent = format_percent(Percent, num_decimals = 2))


###
load('input/raw_data/jar_data.Rdata')

# split data by modes
jar_data_list <- jar_data %>%
  split(., .$Mode)

mode_vals <- jar_data_list %>% 
  names()

mode = mode_vals[1]

sample_data_list <- jar_data_list[[mode]] %>%
  split(., .$Sample)

sample_name <- sample_data_list %>% 
  names() %>% .[1]