#########################################################
#                                                       #
#        Coding Club workshop 1st Feb 2017              #
#     Beautiful and informative data visualisation      #
#                                                       #
#  Written by NAME DATE EMAIL                           #
#                                                       #
#########################################################


# Libraries
library(tidyr)
library(dplyr)
library(ggplot2)
library(readr)
library(gridExtra)

# First we will import and format data and then you can write some code to beautify the graphs :).

# Import data from the Living Planet Index - population trends of vertebrate species from 1970 to 2014
LPI <- read.csv(file.choose())  # find where you saved LPIdata_CC.csv

# Notice the data are in a wide format - the different years are column names, when really they should be rows
# We will reshape the data using the gather() function from the tidyr package

# Reshape data into long form
# By adding 9:53, we select rows from 9 to 53, the ones for the different years of monitoring
LPI2 <- gather(LPI, "year", "abundance", 9:53)
view(LPI2)

# Notice that there is an 'X' in front of all the years - when we imported the data, all column names become characters
# R put an 'X' in front of the years to turn the numbers into characters
# Now that the years are rows, not columns, we need them to be numbers
LPI2$year <- parse_number(LPI2$year)

# When manipulating data it's always good check if the variables have stayed how we want them
# Use the str() function
str(LPI2)

# Abundance is a character variable, when it should be numeric, let's fix that
LPI2$abundance <- as.numeric(LPI2$abundance)

##########################################################

# GRAPH 1

# Population trends of two species
# Choose two species from the LPI data and display their population trends using a scatterplot and a linear model fit

# HINT - use unique() to create a list of species names to choose from
# e.g. unique(LPI2$taxonGroup)

# HINT - use filter() from the dplyr package
# e.g. my_species <- filter(LPI2, Common.Name == c("Reed bunting", "Corn bunting"))
# Careful with the spelling, needs to be exactly like it is in the data

# Some code to get you started
# (scatter_plot <- ggplot(your_species, aes (x=year, y=abundance)) + geom_point() +  geom_smooth(method=lm))

# Save the plot using ggsave(object_name, file="filename.png", width=NUMBER, height=NUMBER)

##########################################################

# GRAPH 2

# Comparing abundance between countries
# Sticking with your two species, filter the data to include only records from FIVE countries of your choice
# Make a boxplot to compare how the abundance of those two species varies between the five countries

# Some code to get you started
# (boxplot <- ggplot(your_species2, aes(Country.list, abundance)) + geom_bowxplot())

# Save the plot using ggsave()

# Create a panel of the two graphs and save it again using ggsave()

##########################################################

# Upload the panel in the Google Drive https://drive.google.com/open?id=0B7mgZ2NLgHGMT3BUV0ZrcV9teHc
