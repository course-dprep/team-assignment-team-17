######################
#### analyse data ####
######################

library(reshape2)
library(dplyr)
library(ggplot2)
library(readr)

airbnb <- read_csv("../../gen/temp/airbnb_merged.csv")
summary(airbnb)

#creating right folders
dir.create('../../src/paper')
dir.create('../../src/paper/output')

#Visualization of the model

#Graph for False
tempfalse <- airbnb %>% group_by(neighbourhood_cleansed, date_cp = FALSE) %>% summarise(price_mean = mean(price_calendar))
ggplot(tempfalse, aes(x=date_cp, y=price_mean,fill=as.factor(neighbourhood_cleansed)))+ 
  geom_col(position="dodge") +
  theme(legend.key.size = unit(0.2, 'cm')) + 
  theme(legend.text = element_text(size=5)) +
  theme(legend.title = element_text(size=10))
#save as pdf
pdf("../../src/paper/output/graph_other_weekends.pdf")
plotfalse <- ggplot(tempfalse, aes(x=date_cp, y=price_mean,fill=as.factor(neighbourhood_cleansed)))+ 
  geom_col(position="dodge") +
  theme(legend.key.size = unit(0.2, 'cm')) + 
  theme(legend.text = element_text(size=5)) +
  theme(legend.title = element_text(size=10))
print(plotfalse)
dev.off()

#Graph for True
temptrue <- airbnb %>% group_by(neighbourhood_cleansed, date_cp = TRUE) %>% summarise(price_mean = mean(price_calendar))
ggplot(temptrue, aes(x=date_cp, y=price_mean,fill=as.factor(neighbourhood_cleansed)))+ 
  geom_col(position="dodge") +
  theme(legend.key.size = unit(0.2, 'cm')) + 
  theme(legend.text = element_text(size=5)) +
  theme(legend.title = element_text(size=10))
#save as pdf
pdf("../../src/paper/output/graph_canal_parade.pdf")
plottrue <- ggplot(temptrue, aes(x=date_cp, y=price_mean,fill=as.factor(neighbourhood_cleansed)))+ 
  geom_col(position="dodge") +
  theme(legend.key.size = unit(0.2, 'cm')) + 
  theme(legend.text = element_text(size=5)) +
  theme(legend.title = element_text(size=10))
print(plottrue)
dev.off()



