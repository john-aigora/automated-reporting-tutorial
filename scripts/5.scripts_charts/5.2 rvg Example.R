# the output is a ggplot2 object

# To add this object as a rvg object on a slide, we will use the ph_with_vg
# ph_with_vg replaces the ph_with for a rvg object
# ph_with_vg_at allows to input a precise position for a chart, using the top/left we know already
# all units are in inches
# argument code requires print(chart), argument type is a specific place on slide ("body" or other)


## IMPORTANT: ph_with_vg is is deprecated.
#old syntaxis ph_with_vg(code = print(chart_to_plot), type = "body") 

pptx_obj <- read_pptx() %>%
  add_slide(layout = "Title and Content", master = "Office Theme") %>%
  ph_with(value = dml(ggobj = chart_to_plot), location  =  ph_location_type(type = 'body')) %>%
  print(target = "output/5.2.rvg1.pptx") 

## IMPORTANT: ph_with_vg_at is is deprecated.
# old syntaxis ph_with_vg_at(code = print(chart_to_plot), left = 1, top = 1, width = 8, height = 6) 

pptx_obj <- read_pptx() %>%
  add_slide(layout = "Title and Content", master = "Office Theme") %>%
  ph_with(value = dml(ggobj = chart_to_plot), location =  ph_location(left = 1, top = 1, width = 8, height = 6))  %>%
  print(target = "output/5.2.rvg2.pptx") 

# all items on the chart inside the pptx are now editable, just click on any and see 
# the Shape Format tab in PowerPoint