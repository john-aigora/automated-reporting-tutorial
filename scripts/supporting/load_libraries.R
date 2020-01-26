# Load packages for project, installing if necessary

load_package <- function(x) {
  for (i in x) {
    #  require returns TRUE invisibly if it was able to load package
    if (!require(i , character.only = TRUE)) {
      #  If package was not able to be loaded then re-install
      install.packages(i , dependencies = TRUE)
      #  Load package after installing
      require(i , character.only = TRUE)
    }
  }
}

#  Then try/install packages...

packages <- c("tidyverse",'officer','readxl','rvg','mschart','extrafontdb','flextable')
load_package(packages)
