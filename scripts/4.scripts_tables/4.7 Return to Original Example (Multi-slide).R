## ft params
header_background_color = a_green
body_background_color = a_cream
header_text_col = a_cream
body_text_col = a_dark_grey
total_text_col = a_red

border_solid <- fp_border(color = a_dark_grey, width = 2)
border_dashed <- fp_border(color = a_dark_grey, width = 1, style = "dashed")

ft <- summary_table %>%
  flextable() %>%
  font(fontname = font_name, part = "all") %>%
  fontsize(size = font_size, part = "all") %>%
  bold(part = "header") %>%
  border_remove() %>%
  border_outer(border = border_solid) %>%
  border_inner_v(border = border_solid, part = "header") %>%
  border_inner_h(border = border_dashed, part = "header") %>%
  border_inner_v(border = border_solid, part = "body") %>%
  border_inner_h(border = border_dashed, part = "body") %>%
  bg(bg = header_background_color, part = "header") %>%
  bg(bg = body_background_color, part = "body") %>%
  align(align = "center", part = "all") %>%
  color(color = header_text_col, part = "header") %>%
  color(color = body_text_col, part = "body") %>%
  color(color = total_text_col, part = "body", i = nrow(summary_table)) %>%
  italic(part = "body", i = nrow(summary_table)) %>%
  bold(part = "body", i = nrow(summary_table)) %>%
  autofit(add_w = 1)

ft
# Add table to slide
pptx_obj <- read_pptx() %>%
  add_slide(layout = "Title and Content", master = "Office Theme") %>%
  ph_with(value = ft, ph_location(left = 2, top = 2, width = 4 )) %>% 
  print(target = "output/test4.7.pptx") 
# positions are fixed. We can find exact positions to center the table
