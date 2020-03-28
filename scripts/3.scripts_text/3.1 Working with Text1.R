
my_data <- fpar("My text")
my_type <- "body"

pptx_obj <- read_pptx() # new empty file
pptx_obj <- pptx_obj %>% 
  add_slide(layout = "Title and Content", master = "Office Theme")

## Add paragraph
pptx_obj <- pptx_obj %>% 
  ph_with(value = my_data, location = ph_location_type(type = my_type))

## Try to add a second paragraph
my_data2 <- fpar("My other text")
my_type <- "body"

pptx_obj <- pptx_obj %>% 
  ph_with(value = my_data2, location = ph_location_type(type = my_type) )

pptx_obj %>%
  print(target = "output/test3.1.pptx") 
## As we see, this code doesn’t produce bullet points as we might hope