
pptx_obj <- read_pptx () # new empty file

pptx_obj <- pptx_obj %>% 
  add_slide(layout  = 'Title and Content',master = "Office Theme")

pptx_obj %>% print(target = "output/first_example.pptx")