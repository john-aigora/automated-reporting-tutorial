
my_data <- fpar("My text")
blank_line <- fpar("")
my_data2 <- fpar("My other text")

my_list <- block_list(my_data, blank_line, my_data2)

my_type <- "body"

pptx_obj <- read_pptx() # new empty file
pptx_obj <- pptx_obj %>%
  add_slide(layout = "Title and Content", master = "Office Theme") %>% 
  ph_with(value = my_list, location = ph_location_type(type = my_type) )

pptx_obj %>%
  print(target = "output/test3.2.pptx") 