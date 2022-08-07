install.packages("tidyverse")
install.packages("ggplot2", dependencies=TRUE)
install.packages("scales")
library(scales)
library(tidyverse)
library(ggplot2)
year_summary <- read.csv("Year Summary.csv")
colnames(year_summary)


#Average Ride Length Bar Chart (in minutes)
Ride_Length <- ggplot(data=year_summary, #data being used
             aes(x=month, y=avg.ride_length, fill= member_casual))+ 
  geom_bar(stat= "identity", position= "dodge")+ #bar chart with two variables
  labs(x= "Month", y= "Average Ride Length (in minutes)", 
       caption= "Data from Cyclistic (Motivate International Inc.)", 
       title= "Average Ride Length by Month",
       subtitle= "Member vs. Casual Riders")+ #labels and captions
  theme(axis.text.x = element_text(angle= 90, vjust = 0.5, hjust = 1))+ # month names perpendicular
  scale_x_discrete("Month", limits = month.name) #months not alphabetical
