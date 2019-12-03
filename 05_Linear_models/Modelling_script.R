############################################################
#                                                          #
#                Coding Club 01-03-2017                    #
# Practicing modelling using  different data distributions #
#                                                          #
############################################################


# This is a sample script outlining the different tasks for this tutorial
# Edit this script to add in your own code

# Libraries ----
library(lme4)
library(ggplot2)

# Defining a ggplot2 theme we will use for plotting later
theme.clean <- function(){
  theme_bw()+
    theme(axis.text.x=element_text(size=12, angle=45, vjust=1, hjust=1),
          axis.text.y=element_text(size=12),
          axis.title.x=element_text(size=14, face="plain"),             
          axis.title.y=element_text(size=14, face="plain"),             
          panel.grid.major.x=element_blank(),                                          
          panel.grid.minor.x=element_blank(),
          panel.grid.minor.y=element_blank(),
          panel.grid.major.y=element_blank(),  
          plot.margin = unit(c(0.5, 0.5, 0.5, 0.5), units = , "cm"),
          plot.title = element_text(size=20, vjust=1, hjust=0.5),
          legend.text = element_text(size=12, face="italic"),          
          legend.title = element_blank(),                              
          legend.position=c(0.9, 0.9))
}

# Load data ----

# For a simple linear model

install.packages("agridat")
library(agridat)

# Using a sample dataset from the agridat package

apples <- agridat::archbold.apple

# Using population trend data for the European Shag from the Living Planet Index
# Import the shagLPI.csv file from the project's directory

# Using a dataset on weevil damage to Scott's pine
# Import the Weevil_damage.csv file from the project's directory

# A simple linear model ----

# Generalised linear models ----

# Poisson distribution

# Binomial distribution