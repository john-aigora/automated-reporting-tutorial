
#BORDERS
# For borders we need to use nested functions (similar to fpar>ftext>fp_text)
#fp_border() is the second level function we will use to specify border"s characteristics
# as argument it takes color, style, and width
  
my_border <- fp_border(color = "black", style = "solid", width = 2)

# We use this second level function inside various main border functions
# border_outer()
# border_inner()
# border_inner_h()
# border_inner_v()
ft_table <- ft_table %>%
  border_outer(part = "all", border = my_border) %>% # using predefined border
  border_inner(part = "body", border = fp_border(style = "dashed"))

ft_table