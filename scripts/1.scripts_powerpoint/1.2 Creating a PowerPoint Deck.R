
pptx_obj <- read_pptx () # new empty file

pptx_obj <- add_slide(pptx_obj, layout  = 'Title and Content',master = "Office Theme")

print(pptx_obj, target = "output/first_example.pptx")