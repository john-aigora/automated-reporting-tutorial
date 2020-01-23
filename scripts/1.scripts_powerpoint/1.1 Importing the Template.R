
my_file <- file.path("input","templates","Tutorial Template.pptx") %>% 
                        read_pptx()

class(my_file) # checking if correct class

my_file %>%
layout_summary()

