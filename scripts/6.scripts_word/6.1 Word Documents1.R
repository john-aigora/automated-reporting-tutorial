
my_doc <- read_docx() %>% 
  body_add_par(value = "My Text", style = "Normal") %>%
  body_add_par(value = "Other Text", style = "Normal") %>% 
  body_add_par(value = "Conclusion", style = "Normal") %>% 
  print(target = 'output/6.1.mydoc.docx')