
ft_table = ft_table %>% 
# FONT AND CHARACTERS
# each command is independent, there are no nested functions as in officer
bold(i = 1, j = 1:3) %>% # first row, all cols
  italic(i = 3, j = ~Age+Count+Percent) %>% # first row, all cols, using ~ notation
  
  fontsize(i = 2, size = 16) %>%
  font(fontname = "Calibri") %>% # since no i or j are input, change is for all data
  font(fontname = "Roboto", part = "header") %>% #different font for header
  color(i = 3, j = 2, color = "red") %>%
  
  # WIDTH AND HEIGHT
  # all measurements are in inches
  width(j = 1, width = 4) %>% # column 1 wider
  height(i = 8, height = 0.5) %>% # row 8 change
  # CELL COLORS (background) 
  bg(bg = "#0088FF", part = "header") %>% # a custom background for the header
  bg(i = 7:10, bg = "#C5C5C5") # a custom background for some cells

ft_table