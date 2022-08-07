year_summary <- read.csv("Year Summary.csv")

colnames(year_summary)

#Most Frequent Day by Month Scatter Plots
Day_Frequency <- ggplot(year_summary, #data being used
            aes(x=month, y=mode.day_of_week, color=member_casual))+  #which elements are on each axis
  geom_point()+ #Scatter plot, shape and color different for casual and member riders
  labs(caption= "Source: Cyclistic (Motivate International Inc.)", 
       title="Most Frequent Day of the Week by Month", 
       subtitle="Member vs. Casual Riders")+ #gives graph title, subtitle, and caption
  scale_color_discrete(name= "Rider Type", breaks= c("casual", "member"), labels= c("Casual", "Member"))+
  theme(axis.text.x = element_text(angle= 90, vjust = 0.5, hjust = 1))+ #changes angle of x-axis tick labels
  scale_x_discrete("Month", limits = month.name)+ #Changed from alphabetical to month order
  #Changes y axis tick labels and width
  scale_y_discrete("Day of the Week",
                   limits= c(1,2,3,4,5,6,7),
                   breaks= c(1, 2, 3, 4, 5, 6, 7), position= 'left',
                   labels= c("1"="Sunday", "2"="Monday", "3"="Tuesday", "4"="Wednesday", "5"="Thursday", "6"="Friday", "7"="Saturday"))+
   facet_wrap(~member_casual)
   
  
