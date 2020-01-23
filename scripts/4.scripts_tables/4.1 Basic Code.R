
my_data <- head(mtcars)

pptx_obj <- read_pptx() %>%
  add_slide(layout = "Title and Content", master = "Office Theme") %>%
  ph_with(value = head(mtcars), location = ph_location_type(type = "body")) %>%
  print(target = "output/test4.1.pptx") 