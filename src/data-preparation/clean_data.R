#####################
#### clean data #####
#####################

library(dplyr)
library(stringr)
#opening files
listings <- read.csv("../../data/listings.csv")
calendar <- read.csv("../../data/calendar.csv")

#Duplicates 

#Count the number of unique id's
#Count the number of unique listing_id's in the calendar dataset and the number of unique id's in the listings dataset 

calendar_unique <- unique(calendar$listing_id)
length(calendar_unique)

listings_unique <- unique(listings$id)
length(listings_unique)

#Count the number of full duplicates in the calendar and listings datset

sum(duplicated(calendar))
sum(duplicated(listings))

# Dropping columns 

calendar_x <- select(calendar, c("listing_id", "price", "available", "adjusted_price", "date"))
listing_x <- select(listings, c("id", "neighbourhood_cleansed", "price", "availability_365"))

#Checking data types

is.numeric(listing_x$id)
is.character(listing_x$neighbourhood_cleansed)
is.numeric(listing_x$price)
is.numeric(listing_x$availability_365)
sapply(calendar_x, class)

#Changing data types
#Editing
listing_x$price = str_remove(listing_x$price,",")
listing_x$price = as.numeric(gsub("\\$", "", listing_x$price))

#Converting
as.numeric(listing_x$price)

#Checking data type and NA's
is.numeric(listing_x$price)

sum(is.na(listing_x$price))
sum(is.na(listings$price))

#Editing
calendar_x$price = str_remove(calendar_x$price, ",")
calendar_x$adjusted_price = str_remove(calendar_x$adjusted_price,",")

calendar_x$price = as.numeric(gsub("\\$", "", calendar_x$price))
calendar_x$adjusted_price = as.numeric(gsub("\\$", "", calendar_x$adjusted_price))

#Converting
as.numeric(calendar_x$price)
as.numeric(calendar_x$adjusted_price)

#Checking data type and NA's
is.numeric(calendar_x$price)
is.numeric(calendar_x$adjusted_price)

sum(is.na(listing_x$price))
sum(is.na(calendar_x$price))
sum(is.na(calendar_x$adjusted_price))

#save file
dir.create('../../gen')
dir.create('../../gen/temp')
write.csv(calendar_x, "../../gen/temp/calendar_cleaned.csv")
write.csv(listing_x, "../../gen/temp/listings_cleaned.csv")



