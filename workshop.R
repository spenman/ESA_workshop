.libPaths("C:/R/R-3.6.0/library")

install.packages("usethis")

remotes::install_github("karthik/holepunch")


library(usethis)


# Holepunch is a great way to assign a description file so that I can assign 
# metadata/description so that I know who made it, what the dependencies are, 
# and any licensing information

holepunch::write_compendium_description()


#### Functions ####

source("R/data_cleaning_function.R")

# Here I am writing some amazing stuff

