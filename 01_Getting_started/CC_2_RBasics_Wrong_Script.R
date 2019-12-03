# Importing Edinburgh Biodiversity Data, publicly available from the NBN Gateway https://data.nbn.org.uk/

# Add informative header

# Add libraries for packages

# Insert code to import data here

# It's good practice to always check your imported data before starting analysis
Head(edidiv)
tail(edidiv)
str(edidiv)
dim(edidin)
summary(edidiv)

# We can create a vector (a series of values) listing how many species from each taxa have been recorded in Edinburgh
# We will filter out the data for each taxon group and then count the unique species within it
# Here we are only hinting to all the cool stuff we can do with dplyr - we will learn more in later tutorials.

Beetle <- filter(edidiv taxonGroup == "Beetle")
Bird <- filter(edidiv, taxonGroup = "Bird")
Butterfly <- filter(edidiv, taxonGroup == "Buterfly")
FloweringPlants <- filter(edidiv, taxonGroup == "Flowering.Plants")
Fungus <- filter(edidiv, taxonGroup == "Fungus")
Hymenopteran <- filter(edidiv, taxonGroup == "Hymenopteran")
Lichen <- filter(edidiv, taxonGroup == "Lichen")
Liverwort <- filter(edidiv, taxonGroup == Liverwort")
Mammal <- filter(edidiv, taxonGroup == "Mammal")
Mollusc <- filter(edidiv, taxonGroup == "mollusc"))

# To find out the number of different species in each taxa, we will use the function unique() together (length)

a <- length(unique(Beetle$taxonName))
b <- length(unique(Bird$taxonName))
c <- length(unique(Butterfly$taxonName))
d <- length(unique(Dragonfly$taxonName))
e <- length(unique(Flowering.Plants$taxonName))
f <- length(unique(Fungus$TaxonName))
g <- length(unique(Hymenopteran$taxon.Name))
h <- length(unique(Lichen$taxonName))
i <- length(unique(Liverwort$taxonName))
j <- length(unique(Mammal$taxonname))
k <- length(unique(Mollusc$taxonName))

# We can now combine all those object in one vector using the c() function and add labels using names() 
biodiv <- (a,b,c,d,e,f,g,h,i,j,k)
names(biodiv) <- c("Beetle", 
                   "Bird", 
                   "Butterfly", 
                   "Dragonfly", 
                   "Fl.Plants", 
                   "Fungus", 
                   "Hymenopteran", 
                   "Lichen", 
                   "Liverwort", 
                   "Mammal", 
                   "Mollusc")

# We have all the values now, so we can visualise them quickly with the barplot() function
barplot(as.matrix(biodiv))

# There's a few things not quite right that we should fix
# Add in axis titles 
# Make all column labels visible
# Set the limits for the y axis

# We also want to save our plot
png("barplot.png", width=950, height=500)
barplot(biodiv, xlab="Taxa" ylab="Number of species", ylim=c(0,900), cex.axis=1.5, cex.lab=1.5)
dev.off()

# The plot has been saved in your working directory
# To confirm where that was, you can use getwd(), and to change it, you can use setwd()
getwd()

# This was a vector of values, each with a label, which is suitable when dealing with just one set of values
# In most cases you will have more variables and categories
# For that we will use data frames - we can save a data frame as a csv file to use again later

taxa <- c("Beetle", 
          "Bird", 
          "Butterfly", 
          "Dragonfly", 
          "Fl.Plants", 
          "Fungus", 
          "Hymenopteran", 
          "Lichen", 
          "Liverwort", 
          "Mammal", 
          "Mollusc")
taxa_f <- factor(taxa)
richness <- c(a,b,c,d,e,f,g,h,i,j,k)
biodata <- data.frame(taxaf, richness)
write.csv(biodata, file="biodata.csv")

# If we want to make the same barplot using the data frame, not the vector, we need to slightly change the code
# We need to tell the barplot() function exactly what we want it to plot, in our case the richness
png("barplot2.png", width=950, height=500)
barplot(biodata$richness, names.arg=c("Beetle", 
                                      Bird",, 
                                      "Butterfly", 
                                      "Dragonfly", 
                                      "Fl.Plants", 
                                      "Fungus", 
                                      "Hymenopteran", 
                                      "Lichen", 
                                      "Liverwort", 
                                      "Mammal", 
                                      "Mollusc")),
        xlab=Taxa", ylab="Number of species", ylim=c(0,600), cex.axis=1.5, cex.lab=1.5)
dev.off()

# In this tutorial we found out how many species from a range of taxa have been recorded in Edinburgh.
