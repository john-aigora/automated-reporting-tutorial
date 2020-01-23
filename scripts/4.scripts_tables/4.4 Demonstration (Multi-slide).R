
ft_table <- base_table %>%
  flextable() %>%
  autofit() %>% # straightforward, column width
  
  # ALIGNMENT
  # alignment of header: we use part argument
  align(align = "center", part = "header") %>%
  # alignment of content: we can use part = "body" or specify exact lines 
  align(i = 1:nrow(base_table), j = 1:ncol(base_table), align = "center") 

ft_table