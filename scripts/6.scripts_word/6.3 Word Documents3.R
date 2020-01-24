
my_format <- fp_text(font.family = 'Calibri', font.size = 14, bold = TRUE, color = 'red')
my_text <- ftext('My dataset is:', my_format)
my_par <- fpar(my_text)

doc <- read_docx() %>% 
  body_add_par(value = "Table of content", style = "heading 1") %>% 
  body_add_par(value = "", style = "Normal") %>% 
  body_add_fpar(my_par, style = "Normal") %>% #formatted paragraph function
  body_add_par(value = "", style = "Normal") %>% 
  body_add_table(value = head(mtcars)[, 1:4], style = "table_template" ) %>% 
  print(target = 'output/6.3.mydoc.docx')

read_docx() %>% styles_info() 