
pptx_obj <- read_pptx() # new empty file

pptx_obj <- pptx_obj %>% # add slide
  add_slide(layout = "Title and Content", master = "Office Theme")

layout_summary(pptx_obj) # contains only basic layouts
layout_properties(pptx_obj) # additional detail

pptx_obj <- pptx_obj %>% 
  on_slide(index = 1) # set active slide
slide_summary(pptx_obj) # slide is empty