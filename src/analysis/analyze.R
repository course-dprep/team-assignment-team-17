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

#Graph for weekends without Canal Parade
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

#Graph for weekends with Canal parade
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

#Anova test
Canal_parade_aov <- lm(adjusted_price ~ `Centrum-Oost`*date_cp + `Zuid`*date_cp + `Oostelijk Havengebied - Indische Buurt`*date_cp+`Noord-West`*date_cp+`De Aker - Nieuw Sloten`*date_cp+`Westerpark`*date_cp+`De Aker - Nieuw Sloten`*date_cp+`Westerpark`*date_cp+`Watergraafsmeer`*date_cp+`Oud-Noord`*date_cp+`Bijlmer-Centrum`+`Bos en Lommer`*date_cp+`Gaasperdam - Driemond`*date_cp+`De Pijp - Rivierenbuurt`*date_cp+`Centrum-West`*date_cp+`Oud-Oost`*date_cp+`Noord-Oost`*date_cp+`Buitenveldert - Zuidas`*date_cp+`IJburg - Zeeburgereiland`*date_cp+`Osdorp`*date_cp+`Slotervaart`*date_cp+`Geuzenveld - Slotermeer`*date_cp+`Bijlmer-Oost`*date_cp , airbnb)

anova(Canal_parade_aov)

#linear regression

canal_parade_lm <- lm(price_calendar ~ `Centrum-Oost`*date_cp + `Zuid`*date_cp + `Oostelijk Havengebied - Indische Buurt`*date_cp+`Noord-West`*date_cp+`De Aker - Nieuw Sloten`*date_cp+`Westerpark`*date_cp+`De Aker - Nieuw Sloten`*date_cp+`Westerpark`*date_cp+`Watergraafsmeer`*date_cp+`Oud-Noord`*date_cp+`Bijlmer-Centrum`+`Bos en Lommer`*date_cp+`Gaasperdam - Driemond`*date_cp+`De Pijp - Rivierenbuurt`*date_cp+`Centrum-West`*date_cp+`Oud-Oost`*date_cp+`Noord-Oost`*date_cp+`Buitenveldert - Zuidas`*date_cp+`IJburg - Zeeburgereiland`*date_cp+`Osdorp`*date_cp+`Slotervaart`*date_cp+`Geuzenveld - Slotermeer`*date_cp+`Bijlmer-Oost`*date_cp , airbnb)

summary(canal_parade_lm)