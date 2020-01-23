
my_list <- block_list(
  fpar(ftext("Hello", prop = fp_text(color = "red", font.size = 16))) ,
  fpar(ftext("World", prop = fp_text(color = "blue", font.size = 14))) )

# The hierarchy is:
# block_list > fpar > ftext > fp_text

pptx_obj <- read_pptx() %>%
  add_slide(layout = "Title and Content", master = "Office Theme") %>%
  ph_with(value = block_list(
    fpar(ftext("Hello", prop = fp_text(color = "red", font.size = 16))) ,
    fpar(ftext("World", prop = fp_text(color = "blue", font.size = 14)))),
    ph_location_type(type = "body")
  ) %>%
  print(target = "output/test3.4.pptx") 