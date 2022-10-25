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
#both graph
temp <- airbnb %>% group_by(neighbourhood_cleansed, date_cp) %>% summarise(price_mean = mean(price_calendar))
ggplot(temp, aes(x=date_cp, y=price_mean,fill=as.factor(neighbourhood_cleansed)))+ 
  geom_col(position="dodge") +
  geom_text(aes(label=price_mean), vjust=0,srt=90) + 
  theme(legend.key.size = unit(0.2, 'cm')) + 
  theme(legend.text = element_text(size=5)) +
  theme(legend.title = element_text(size=10)) 

#Graph for False
tempfalse <- airbnb %>% group_by(neighbourhood_cleansed, date_cp = FALSE) %>% summarise(price_mean = mean(price_calendar))
ggplot(tempfalse, aes(x=date_cp, y=price_mean,fill=as.factor(neighbourhood_cleansed)))+ 
  geom_col(position="dodge") +
  geom_text(aes(label=price_mean), vjust=0,srt=90) + 
  theme(legend.key.size = unit(0.2, 'cm')) + 
  theme(legend.text = element_text(size=5)) +
  theme(legend.title = element_text(size=10))

#Graph for True
temptrue <- airbnb %>% group_by(neighbourhood_cleansed, date_cp = TRUE) %>% summarise(price_mean = mean(price_calendar))
ggplot(temptrue, aes(x=date_cp, y=price_mean,fill=as.factor(neighbourhood_cleansed)))+ 
  geom_col(position="dodge") +
  geom_text(aes(label=price_mean), vjust=0,srt=90) + 
  theme(legend.key.size = unit(0.2, 'cm')) + 
  theme(legend.text = element_text(size=5)) +
  theme(legend.title = element_text(size=10))

#code for saving as pdf
pdf("../../src/paper/output/neighbourhoods.pdf")
myplot <- ggplot(temp, aes(x=date_cp, y=price_mean, fill=as.factor(neighbourhood_cleansed)))+ geom_col(position="dodge")
print(myplot)
dev.off()




#Anova test
Canal_parade_aov <- lm(adjusted_price ~ `Centrum-Oost`*date_cp + `Zuid`*date_cp + `Oostelijk Havengebied - Indische Buurt`*date_cp+`Noord-West`*date_cp+`De Aker - Nieuw Sloten`*date_cp+`Westerpark`*date_cp+`De Aker - Nieuw Sloten`*date_cp+`Westerpark`*date_cp+`Watergraafsmeer`*date_cp+`Oud-Noord`*date_cp+`Bijlmer-Centrum`+`Bos en Lommer`*date_cp+`Gaasperdam - Driemond`*date_cp+`De Pijp - Rivierenbuurt`*date_cp+`Centrum-West`*date_cp+`Oud-Oost`*date_cp+`Noord-Oost`*date_cp+`Buitenveldert - Zuidas`*date_cp+`IJburg - Zeeburgereiland`*date_cp+`Osdorp`*date_cp+`Slotervaart`*date_cp+`Geuzenveld - Slotermeer`*date_cp+`Bijlmer-Oost`*date_cp , Airbnb)

anova(Canal_parade_aov)

#linear regression

canal_parade_lm <- lm(price_calendar ~ `Centrum-Oost`*date_cp + `Zuid`*date_cp + `Oostelijk Havengebied - Indische Buurt`*date_cp+`Noord-West`*date_cp+`De Aker - Nieuw Sloten`*date_cp+`Westerpark`*date_cp+`De Aker - Nieuw Sloten`*date_cp+`Westerpark`*date_cp+`Watergraafsmeer`*date_cp+`Oud-Noord`*date_cp+`Bijlmer-Centrum`+`Bos en Lommer`*date_cp+`Gaasperdam - Driemond`*date_cp+`De Pijp - Rivierenbuurt`*date_cp+`Centrum-West`*date_cp+`Oud-Oost`*date_cp+`Noord-Oost`*date_cp+`Buitenveldert - Zuidas`*date_cp+`IJburg - Zeeburgereiland`*date_cp+`Osdorp`*date_cp+`Slotervaart`*date_cp+`Geuzenveld - Slotermeer`*date_cp+`Bijlmer-Oost`*date_cp , Airbnb)

summary(canal_parade_lm)
