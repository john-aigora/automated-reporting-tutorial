
# sample dataframe
mydata <- sample_data_list[['Sample 1']] %>%
  group_by(Variable,Response) %>% count()

# syntaxis is similar to ggplot2"s aes() with x,y,group
my_barchart <- ms_barchart(data = mydata, x = "Variable", y = "n", group = "Response")

# to add the object to a powerpoint slide we can use the officer"s native ph_with
pptx_obj <- read_pptx() %>%
  add_slide(layout = "Title and Content", master = "Office Theme") %>%
  ph_with(value = my_barchart, location = ph_location_type(type = "body")) %>%
  print(target = "output/5.3.msoffice.pptx") 

# if we would open a rvg slide and an ms office slide and click on the slide
# for the rvg slide the only menu that appear is shape format
# While for the msoffice chart we have now the chart design option with all msoffice functionalities
# by using chart_settings() functions one can customise in R the charts