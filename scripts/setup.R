##########################################################
## The following uses renv to help with reproducibility ##
##########################################################

# Uncomment the codes in this section if you would like to use it with your
# Check if renv is installed and load it
# if (!require("renv", character.only = TRUE)) {
#   install.packages("renv")
#   library("renv", character.only = TRUE)
# }

# Initialize renv and restore packages from the lockfile
# renv::init()
# renv::restore()

########################################
## The following sets the python path ##
########################################
# library(reticulate)
# use_python("C:/Python312/python.exe")
# py_config()
# reticulate::use_condaenv("NAME_OF_YOUR_ENVIRONMENT")

# if (!require(kableExtra)) {
#   install.packages('kableExtra')
# }

#############################################
## The following loads the needed packages ##
#############################################

# load the required packages
packages <- c(
  "here", # for the project's organization
  "tidyverse", # for wrangling
  "ggrepel", "gghighlight", "patchwork", "maps", "scales", 'readxl', 'dygraphs', 'xts',# for plotting
  "fpp3", 'viridis', 'plotly', 'kableExtra', "readxl", "kableExtra"
)
purrr::walk(packages, function(pkg){
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg)
  }
})

#############################s#########################
## The following sets a few option for nice reports ##
######################################################

# general options
options(
  digits = 3,
  str = strOptions(strict.width = "cut"),
  width = 69,
  tibble.width = 69,
  cli.unicode = FALSE
)

# ggplot options
theme_set(theme_light())

# knitr options
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  # cache = TRUE,
  fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  dpi = 300,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.height = 4,
  fig.asp = 0.618,
  fig.show = "hold",
  message = FALSE,
  echo = TRUE
)

