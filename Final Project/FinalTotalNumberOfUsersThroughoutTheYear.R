
colnames(year_summary)

#Line Graph for Total Yearly Riders
Total_Users <- ggplot(data=year_summary, 
                      aes(x=month, y=total, color=member_casual, group=member_casual))+ #data being used
  geom_line(size=1)+ #line graph, line size=1
  labs(x="Month", y="Number of Riders", caption= "Data from Cyclistic (Motivate International Inc.)", 
       title= "Total Yearly Riders", subtitle= "Member vs. Casual Riders")+ #labels and titles
  theme(axis.text.x = element_text(angle= 90, vjust = 0.5, hjust = 1))+ #changes angle of x-axis tick labels
  scale_x_discrete("Month", limits = month.name)+  # months not in alphabetical order
  scale_y_continuous(labels  = 
                       label_number(scale = 1e0, accuracy = 1)) #changes y values to big number
  
  
  
 
  