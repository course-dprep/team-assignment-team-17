######################
##### merge data #####
######################

library(dplyr)
library(tidyr)
#Opening files
calendar_x <- read.csv("../../gen/temp/calendar_cleaned.csv")
View(calendar_x)

listing_x <- read.csv("../../gen/temp/listings_cleaned.csv")
View(listing_x)

#Merging

calendar_listing_merge <- calendar_x %>% left_join(listing_x, by = c("listing_id" = "id"), suffix = c("_calendar", "_listing"))

#Remove NA's
calendar_listing <- calendar_listing_merge %>% drop_na(price_calendar)
calendar_listing <- calendar_listing_merge %>% drop_na(adjusted_price)

#Checking NA's
sum(is.na(calendar_listing$price_calendar))
sum(is.na(calendar_listing$adjusted_price))

#copy of neigbourhood_cleansed
calendar_listing$neighbourhood_cleansed_copy <- calendar_listing$neighbourhood_cleansed


# Filter dataset
only_saturdays <- calendar_listing %>% filter(date == "2022-08-06"|date == "2022-08-13"|date == "2022-07-30" |date == "2022-08-20"|date == "2022-07-23")

#check filtered dataset
unique(only_saturdays$date)

#Widen dataset
#Pivot wider
airbnb <- only_saturdays %>% mutate(n=1) %>% pivot_wider(names_from = "neighbourhood_cleansed_copy", values_from = n, values_fill= list(n=0))

#Additional column
airbnb$date_cp <- airbnb$date == "2022-08-06"

write.csv(airbnb, "../../gen/temp/airbnb_merged.csv")
