# Define constants for tutorial

# Set directories
input_dir <- "input"
output_dir <- "output"

# Set Aigora color palette
rgb_std <- partial(rgb, max = 255)
a_green <- rgb_std(134,196,144)
a_cream <- rgb_std(243,243,243)
a_dark_grey <- rgb_std(65,65,65)
a_light_grey <- rgb_std(154,154,154)
a_gold <- rgb_std(196,183,134)
a_red <- rgb_std(196,136,134)
a_bright_purple <- rgb_std(169,134,196)
a_dark_purple <- rgb_std(120,110,130)

# set default font choices
font_name <- "Roboto"
font_size <- 14

# set default color choices for tutorial
body_bg_col = a_cream
body_col = a_dark_grey

col_pal <- c(a_red, a_green, a_gold)
font_col <- a_dark_grey

# Define measurements for slide positioning and plotting
slide_width <- 13.33
slide_height <- 7.5
top_margin <- 0.75
plot_width <- (slide_width - 2)
plot_height <- (slide_height - 2)
y_offset <- 0.005
y_shift <- 0.04
