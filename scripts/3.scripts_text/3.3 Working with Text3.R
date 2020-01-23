
my_prop <- fp_text(color = "red", font.size = 16)
my_text <- ftext("Hello", prop = my_prop)

my_par <- fpar(my_text) ## formatted
blank_line <- fpar("")

my_par2 <- fpar("My other text") ## unformatted
my_list <- block_list(my_par,blank_line, my_par2)

pptx_obj <- read_pptx() # new empty file

pptx_obj <- pptx_obj %>%
  add_slide(layout = "Title and Content", master = "Office Theme") %>% 
  ph_with(value = my_list, location = ph_location_type(type = my_type) )

pptx_obj %>%
  print(target = "output/test3.3.pptx") 