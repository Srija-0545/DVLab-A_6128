#Load the Data
data(iris)

#Understand the Data
str(iris)
View(iris)
class(iris)
?iris

#Basic Box Plot
boxplot(iris$Sepal.Length)

#Add Title & Labels
boxplot(iris$Sepal.Length,
        main ="Box plot for Sepal Length",
        ylab = "Sepal_length",
        col = "skyblue")

#Grouprd Box plot (by Species)
boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length",
        col = c('pink', 'green', 'skyblue'))

#Multi-Variable Box Plot
boxplot(iris[,1:4],
        main = "Multi Variable Box Plot",
        col = c('pink', 'green', 'skyblue', 'orange'))

#Using Custom color Palette
species_colors <- c("setosa" = "red",
                    "versicolor" = "steelblue",
                    "virginica" = "green")
boxplot(
  Sepal.Length ~ species_colors,
  data = iris,
  col = species_colors,
  main = 
)

#GGPlot2
library(ggplot2)
ggplot(iris,
       aes(x=Species, y = Sepal.Length))+
  geom_boxplot()
#Colored box plot by species
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species))+
  geom_boxplot()
theme_minimal()
#Using Manual Color Palettes
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  scale_fill_manual(
    values = c(
      "setosa" = "red",
      "versicolor" = "steelblue",
      "virginica" = "green"
    )
  ) +
  theme_minimal()

