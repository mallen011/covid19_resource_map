
## GIS and visualization stuff
library(leafpop)
library(sf)
library(tidyverse)
library(waffle)
library(ggiraph)
library(ggtextures)
library(htmltools)
library(ggimage)
library(extrafont)
library(magick)
library(leaflet)
library(rgdal)
library(ggplot2)
library(leafpop)
library(tidyr)
library(sp)
library(data.table)
library(dplyr)
library(data.tree)
library(circlepackeR) 
library(ggwaffle)
library(hrbrthemes)
library(stringr)
## SET PATH ##
path <- "C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/"
setwd(path)

################################# LOADING DATA #########################################
  
####Poverty
poverty <- read.csv("US_counties_poverty.csv")
poverty <-data.frame(poverty)

#### Counties - polygons
counties <- readOGR("shps/us_counties.shp")
## manually organize county data so it matches with covid data for querying
counties$STATE_NAME <- gsub("Alabama", "AL", counties$STATE_NAME)
counties$NAME <- 
  with(counties, ifelse(counties$STATE_NAME == 'AL', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Arkansas", "AR", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'AR', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Arizona", "AZ", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'AZ', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("California", "CA", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'CA', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Colorado", "CO", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'CO', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Connecticut", "CT", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'CT', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Delaware", "DE", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'DE', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Florida", "FL", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'FL', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Georgia", "GA", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'GA', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Idaho", "ID", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'ID', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Illinois", "IL", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'IL', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Indiana", "IN", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'IN', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Iowa", "IA", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'IA', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Kansas", "KS", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'KS', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Kentucky", "KY", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'KY', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Louisana", "LA", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'LA', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Maine", "ME", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'ME', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Maryland", "MD", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'MD', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Massachusetts", "MA", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'Massachusetts', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Michigan", "MI", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'MI', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Minnesota", "MN", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'MN', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Mississipi", "MS", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'MS', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Missouri", "MO", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'MO', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Montana", "MT", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'MT', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Nebraska", "NE", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'NE', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Nevada", "NV", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'NV', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("New Hampshire", "NH", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'NH', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("New Jersey", "NJ", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'NJ', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("New Mexico", "NM", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'NM', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("New York", "NY", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'NY', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("North Carolina", "NC", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'NC', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("North Dakota", "ND", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'ND', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Ohio", "OH", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'OH', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Oklahoma", "OK", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'OK', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Oregon", "OR", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'OR', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Pennsylvania", "PA", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'PA', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Rhode Island", "RI", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'RI', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("South Carolina", "SC", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'SC', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("South Dakota", "SD", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'SD', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Tennessee", "TN", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'TN', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Texas", "TX", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'TX', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Utah", "UT", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'UT', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Vermont", "VT", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'VT', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Virginia", "VA", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'VA', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Washington", "WA", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'WA', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$NAME <-gsub("District of Columbia", "Washington", counties$NAME)
counties$STATE_NAME <- gsub("WA, DC", "DC", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'DC', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("West VA", "WV", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'WV', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Wisconsin", "WI", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'WI', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))
counties$STATE_NAME <- gsub("Wyoming", "WY", counties$STATE_NAME)
counties[["NAME"]] <- 
  with(counties, ifelse(counties$STATE_NAME == 'WY', paste0(counties$NAME, "-", counties$STATE_NAME), counties$NAME))

counties1 <-data.frame(counties)
counties1 <- merge(poverty, counties1, by=c("NAME"))
##join poverty to county polyons
##get rid of additional columns made from the merge
counties1 <- subset(counties1, select = -c(STATE_NAME.y, STATEFP, COUNTYFP) )


##make poverty data into character, by first creating a new column and inserting poverty
## as character, as to keep the original poverty data as numeric
counties1["charpov"] <- char_poverty<- as.character(counties1$All.Ages.in.Poverty.Percent)
counties1["not_pov"] <-(100-counties1$All.Ages.in.Poverty.Percent)
counties1["charnot_pov"]<-charnot_pov <- as.character(counties1$not_pov)




####Industry
library(stringr)
industry <- read.csv("industry.csv")
industry <- data.frame(industry)
industry$industry.Industry <- as.factor(industry$industry.Industry)
industry$industry.total <- as.numeric(industry$industry.total)
library(tidyverse)
#library(ggtextures)
library(magick)
library(rsvg)

#ind_color <- observe({
#  req(gender_sub)
#})


####race
race <- read.csv("race.csv")
race <-data.frame(race)
race$gender <- as.factor(race$gender)
race$hispanic <- as.factor (race$hispanic)
race$race <-as.factor(race$race)
race$makeup <- as.factor(race$makeup)
race$STATE_NAME <-as.character(race$STATE_NAME)
###make nodes
race$pathString <- paste("world", race$gender, race$hispanic, race$race, race$makeup, sep = "/")



#### Land
land <- read.csv("land.csv")
land <-data.frame(land)
land$NAME <- poverty$NAME[match(poverty$ID, land$geoid)]
land <- land[, c(1, 12, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11)]

land2<- subset(land, NAME=="Autauga-AL")
land2$water <- as.numeric(land2$water)
land2$urban <- as.numeric(land2$urban)
land2$scrub <- as.numeric(land2$scrub)
land2$barren <- as.numeric(land2$barren)
land2$grass <- as.numeric(land2$grass)
land2$agland <- as.numeric(land2$agland)
land2$wetland <-as.numeric(land2$wetland)
land2$forest <-as.numeric(land2$forest)
############################COVID19 DATA#############################

## County Level data covid
us_confirmed_long_jhu <- read.csv(file="https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_US.csv")
#only use necessary columns (take out the rest)
us_confirmed_long_jhu = subset(us_confirmed_long_jhu, select = -c(iso2, iso3, code3, Country_Region, UID) )

#make longer date, so it's not so wide (all dates in one column, all cases one column under "value")
new_covid <- pivot_longer(us_confirmed_long_jhu, starts_with("X"), names_to = "date")

#put in in a data frame
df <- data.frame(new_covid)

#delete all unnecessary rows
library(stringr)

#Delete unnessary data from Province_State column
delete <- c("Alaska", "American Samoa", "Puerto Rico", "Virgin Islands", "Guam", "Hawaii", 
            "Northern Mariana Islands", "Grand Princess", "Diamond Princess")
df <- df[ !grepl(paste(delete, collapse="|"), df$Province_State),]

#Delete unnecessary data from Admin2
delete2 <- c("Unassigned", "Out of")
df <- df[ !grepl(paste(delete2, collapse="|"), df$Admin2),]


##reformat so dates are in standard format
 
#take out the "X" character in "date" column
df$date <-substring(df$date,2)
#Take out first row
df <- df[-c(1),]
#replace all periods in "date" with forward slash
df$date <- str_replace_all(df$date, '\\.', '/')
#convert to standard
df$date<- as.Date(as.character(df$date), format = "%m/%d/%y")

###manually reformat covid data so it matches county data for querying
df$Province_State <- gsub("Alabama", "AL", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'AL', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Arkansas", "AR", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'AR', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Arizona", "AZ", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'AZ', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("California", "CA", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'CA', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Colorado", "CO", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'CO', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Connecticut", "CT", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'CT', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Delaware", "DE", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'DE', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Florida", "FL", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'FL', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Georgia", "GA", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'GA', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Idaho", "ID", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'ID', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Illinois", "IL", df$Province_State)
df[["Admin2"]]<- 
  with(df, ifelse(Province_State == 'IL', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Indiana", "IN", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'IN', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Iowa", "IA", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'IA', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Kansas", "KS", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'KS', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Kentucky", "KY", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'KY', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Louisiana", "LA", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'LA', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Maine", "ME", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'ME', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Maryland", "MD", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'MD', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Massachusetts", "MA", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'MA', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Michigan", "MI", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'MI', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Minnesota", "MN", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'MN', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Mississippi", "MS", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'MS', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Missouri", "MO", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'MO', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Montana", "MT", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'MT', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Nebraska", "NE", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'NE', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Nevada", "NV", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'NV', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("New Hampshire", "NH", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'NH', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("New Jersey", "NJ", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'NJ', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("New Mexico", "NM", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'NM', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("New York", "NY", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'NY', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("North Carolina", "NC", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'NC', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("North Dakota", "ND", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'ND', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Ohio", "OH", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'OH', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Oklahoma", "OK", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'OK', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Oregon", "OR", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'OR', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Pennsylvania", "PA", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'PA', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Rhode Island", "RH", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'RH', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("South Carolina", "SC", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'SC', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("South Dakota", "SD", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'SD', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Tennessee", "TN", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'TN', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Texas", "TX", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'TX', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Utah", "UT", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'UT', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Vermont", "VT", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'VT', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Virginia", "VA", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'VA', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Washington", "WA", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'WA', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("District of Columbia", "DC", df$Province_State)
df$Admin2 <-gsub("District of Columbia", "Washington", df$Admin2)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'DC', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("West Virginia", "WV", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'WV', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Wisconsin", "WI", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'WI', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Wyoming", "WY", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'WY', paste0(Admin2, "-", Province_State), Admin2))

#convert value from int to num to plot
df$value <-as.numeric(df$value)



### deaths
death <- read.csv(file = "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv")
death  = subset(death, select = -c(iso2, iso3, code3, Country_Region, UID, Combined_Key) )
death <-pivot_longer(death, starts_with("X"), names_to = "date")
death <- data.frame(death)
delete3 <- c("Alaska", "American Samoa", "Puerto Rico", "Virgin Islands", "Guam", "Hawaii", 
             "Northern Mariana Islands", "Grand Princess", "Diamond Princess")
death <- death[ !grepl(paste(delete3, collapse="|"), death$Province_State),]
delete4 <- c("Unassigned", "Out of")
death <- death[ !grepl(paste(delete4, collapse="|"), death$Admin2),]
death$date <-substring(death$date,2)
#Take out first row
#death <- death[-c(1),]
#replace all periods in "date" with forward slash
death$date <- str_replace_all(death$date, '\\.', '/')
#convert to standard
death$date<- as.Date(as.character(death$date), format = "%m/%d/%y")

death$Province_State <- gsub("Alabama", "AL", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'AL', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Arkansas", "AR", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'AR', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Arizona", "AZ", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'AZ', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("California", "CA", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'CA', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Colorado", "CO", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'CO', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Connecticut", "CT", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'CT', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Delaware", "DE", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'DE', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Florida", "FL", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'FL', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Georgia", "GA", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'GA', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Idaho", "ID", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'ID', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Illinois", "IL", death$Province_State)
death[["Admin2"]]<- 
  with(death, ifelse(Province_State == 'IL', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Indiana", "IN", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'IN', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Iowa", "IA", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'IA', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Kansas", "KS", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'KS', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Kentucky", "KY", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'KY', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Louisiana", "LA", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'LA', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Maine", "ME", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'ME', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Maryland", "MD", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'MD', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Massachusetts", "MA", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'MA', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Michigan", "MI", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'MI', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Minnesota", "MN", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'MN', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Mississippi", "MS", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'MS', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Missouri", "MO", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'MO', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Montana", "MT", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'MT', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Nebraska", "NE", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'NE', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Nevada", "NV", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'NV', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("New Hampshire", "NH", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'NH', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("New Jersey", "NJ", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'NJ', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("New Mexico", "NM", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'NM', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("New York", "NY", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'NY', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("North Carolina", "NC", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'NC', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("North Dakota", "ND", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'ND', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Ohio", "OH", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'OH', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Oklahoma", "OK", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'OK', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Oregon", "OR", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'OR', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Pennsylvania", "PA", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'PA', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Rhode Island", "RH", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'RH', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("South Carolina", "SC", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'SC', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("South Dakota", "SD", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'SD', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Tennessee", "TN", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'TN', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Texas", "TX", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'TX', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Utah", "UT", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'UT', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Vermont", "VT", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'VT', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Virginia", "VA", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'VA', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Washington", "WA", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'WA', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("District of Columbia", "DC", death$Province_State)
death$Admin2 <-gsub("District of Columbia", "Washington", death$Admin2)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'DC', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("West Virginia", "WV", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'WV', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Wisconsin", "WI", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'WI', paste0(Admin2, "-", Province_State), Admin2))
death$Province_State <- gsub("Wyoming", "WY", death$Province_State)
death[["Admin2"]] <- 
  with(death, ifelse(Province_State == 'WY', paste0(Admin2, "-", Province_State), Admin2))

death$value <-as.numeric(death$value)

rm(us_industry, us_confirmed_long_jhu, public19, race_BakerOR)
