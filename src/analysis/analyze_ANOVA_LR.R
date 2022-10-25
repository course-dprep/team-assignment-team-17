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


#Anova test
Canal_parade_aov <- lm(adjusted_price ~ `Centrum-Oost`*date_cp + `Zuid`*date_cp + `Oostelijk Havengebied - Indische Buurt`*date_cp+`Noord-West`*date_cp+`De Aker - Nieuw Sloten`*date_cp+`Westerpark`*date_cp+`De Aker - Nieuw Sloten`*date_cp+`Westerpark`*date_cp+`Watergraafsmeer`*date_cp+`Oud-Noord`*date_cp+`Bijlmer-Centrum`+`Bos en Lommer`*date_cp+`Gaasperdam - Driemond`*date_cp+`De Pijp - Rivierenbuurt`*date_cp+`Centrum-West`*date_cp+`Oud-Oost`*date_cp+`Noord-Oost`*date_cp+`Buitenveldert - Zuidas`*date_cp+`IJburg - Zeeburgereiland`*date_cp+`Osdorp`*date_cp+`Slotervaart`*date_cp+`Geuzenveld - Slotermeer`*date_cp+`Bijlmer-Oost`*date_cp , airbnb)

anova(Canal_parade_aov)

#linear regression

canal_parade_lm <- lm(price_calendar ~ `Centrum-Oost`*date_cp + `Zuid`*date_cp + `Oostelijk Havengebied - Indische Buurt`*date_cp+`Noord-West`*date_cp+`De Aker - Nieuw Sloten`*date_cp+`Westerpark`*date_cp+`De Aker - Nieuw Sloten`*date_cp+`Westerpark`*date_cp+`Watergraafsmeer`*date_cp+`Oud-Noord`*date_cp+`Bijlmer-Centrum`+`Bos en Lommer`*date_cp+`Gaasperdam - Driemond`*date_cp+`De Pijp - Rivierenbuurt`*date_cp+`Centrum-West`*date_cp+`Oud-Oost`*date_cp+`Noord-Oost`*date_cp+`Buitenveldert - Zuidas`*date_cp+`IJburg - Zeeburgereiland`*date_cp+`Osdorp`*date_cp+`Slotervaart`*date_cp+`Geuzenveld - Slotermeer`*date_cp+`Bijlmer-Oost`*date_cp , airbnb)

summary(canal_parade_lm)