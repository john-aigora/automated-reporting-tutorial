
# We have preloaded a function to plot the chart.
# the function is using ggplot2 as plotting library

chart_to_plot <- sample_data_list[['Sample 1']] %>%
  make_jar_chart() # code to create a ggplot2 item, we will skip the contents
print(chart_to_plot) # see in Plots Window