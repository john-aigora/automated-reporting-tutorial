# Custom functions for project
format_percent <- function(x, num_decimals = 0) {
  percent_val <-
    str_c(formatC(100 * x, format = "f", digits = num_decimals), "%")
  return(percent_val)
}


# general function for making jar charts

make_jar_chart_full <-
  function(sample_data,
           font_name,
           font_size,
           font_col,
           body_col,
           body_bg_col,
           col_pal) {
    # create jar charts from data for a single sample
    
    # compute percentages
    percent_info <- sample_data %>%
      group_by(Variable) %>%
      count(Response) %>%
      mutate(total = sum(n),
             Prop = n / total,
             Percent = format_percent(Prop)) %>%
      mutate(y = cumsum(Prop)) %>%
      ungroup() %>%
      mutate(y = pmax(y, y_shift)) %>% 
      select(Variable, Response, y, Percent) %>% 
      mutate(y = ifelse((Response == "Too Much")&(near(y, 1)), y = 1 + y_shift, y))
    
    # make chart
    p <- sample_data %>%
      mutate(Variable = fct_rev(Variable),
             Response = fct_rev(Response)) %>%
      ggplot() +
      geom_bar(aes(x = Variable, fill = Response), position = "fill") +
      coord_flip() +
      scale_y_continuous(labels = scales::percent_format(accuracy = 1)) +
      theme(
        axis.title = element_blank(),
        axis.line = element_blank(),
        panel.background = element_blank(),
        plot.background = element_rect(fill = body_bg_col, color = body_bg_col),
        panel.grid = element_blank(),
        legend.background = element_rect(fill = body_bg_col, color = body_bg_col),
        legend.key = element_rect(fill = body_bg_col, color = body_bg_col),
        legend.box.background = element_rect(fill = body_bg_col, color = body_bg_col),
        axis.ticks = element_blank(),
        axis.text.y = element_text(
          size = font_size,
          family = font_name,
          color = body_col,
          margin = margin(r = -25),
          vjust = 0.5
        ),
        axis.text.x = element_text(
          size = font_size,
          family = font_name,
          color = body_col
        ),
        legend.text = element_text(
          size = font_size,
          family = font_name,
          color = body_col
        ),
        legend.title = element_blank(),
        panel.border = element_blank(),
        legend.position = "bottom",
        legend.spacing.x = unit(0.1, "in")
      ) +
      scale_fill_manual(values = col_pal) +
      guides(fill = guide_legend(reverse = TRUE)) +
      geom_text(
        aes(
          x = Variable,
          y = y - y_offset,
          label = Percent
        ),
        data = percent_info,
        color = a_dark_grey,
        size = 0.3 * font_size,
        family = font_name,
        hjust = 1,
        vjust = 0.5
      )
    
    return(p)
    
  }

make_jar_chart <-
  partial(
    make_jar_chart_full,
    font_name = font_name,
    font_size = font_size,
    font_col = font_col,
    body_col = body_col,
    body_bg_col = body_bg_col,
    col_pal = col_pal
  )
