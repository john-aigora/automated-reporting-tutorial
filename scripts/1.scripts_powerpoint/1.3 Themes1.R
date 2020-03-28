
pptx_obj <- read_pptx() # new empty file
pptx_obj <- pptx_obj %>% 
  add_slide(layout = "Title and Content", master = "Integral")
# Returns an error

pptx_obj <- read_pptx(file.path("input","templates","integral.pptx"))
layout_summary(pptx_obj)