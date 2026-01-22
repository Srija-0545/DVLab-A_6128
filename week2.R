#Load Air passengers Data set 
data(AirPassengers)


#verify the dataset
?AirPassengers
class(AirPassengers)
View(AirPassengers)

#Convert the dataset to dataframe
ap_df <- data.frame(
  year <- time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)

# data Frame with year and months separately 
ap_df_months <-data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)
ap_df_months

#Basic Plot
plot(AirPassengers)

# plot with title, Axis labels and color
plot(AirPassengers,
     type = 'l',
     main ="Air Passengers Trend Analysis",
     xlab = "Months",
     ylab = "No.of. Passengers",
     col= "red")
points(AirPassengers,
       type = 'o',
       pch = 16,
       col = "blue")
grid()
library(ggplot2)

ggplot(ap_df,
       aes(x = year, y =passengers))+
  geom_line(color='darkgreen', linewidth = 0.5)+
  labs(
    title = 'Trend Analysis os Air Passengers',
    subtitle = 'From 1949-1960',
    caption = 'Using Built-in Air Passengers Dataset',
    x = 'Months',
    y = 'No.of Passengers') +
  geom_point(color = 'red', size=0.5)+
  geom_smooth(se=FALSE,color ='orange') +
  theme_minimal()+
  theme(
    plot.title = element_text(face = "bold", size = 14),
    plot.subtitle = element_text(size = 10))