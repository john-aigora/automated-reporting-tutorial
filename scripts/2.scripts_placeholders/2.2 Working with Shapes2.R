
# Example 2
my_data <- head(mtcars)[,1:4]
my_type <- "body"

pptx_obj <- read_pptx() # new empty file

pptx_obj <- pptx_obj %>% 
    add_slide(layout = "Title and Content", master = "Office Theme")

pptx_obj <- pptx_obj %>% 
  ph_with(value = my_data, location = ph_location_type(type = my_type)) #notation without %>% 

pptx_obj %>%
  print(target = "output/test2.2.pptx") 