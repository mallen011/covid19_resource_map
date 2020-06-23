
## GIS and visualization stuff
library(leaflet)
library(sp)
library(rgdal)
library(ggplot2)
library(tidyr)
library(leafpop)
library(tidyr)
library(sp)
library(jsonlite)
library(data.table)
library(dplyr)


## SET PATH ##
path <- "C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/"
setwd(path)

################################# LOADING DATA #########################################
################POLYGONS

counties <- readOGR("shps/us_counties.shp")

counties1 <- data.frame(counties)

## manually organize county data so it matches with covid data for querying
counties1$STATE_NAME <- gsub("Alabama", "AL", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'AL', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Arkansas", "AK", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'AK', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Arizona", "AR", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'Arizona', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("California", "CA", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'CA', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Colorado", "CO", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'CO', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Connecticut", "CT", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'CT', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Delaware", "DE", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'DE', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Florida", "FL", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'FL', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Georgia", "GA", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'GA', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Idaho", "ID", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'ID', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Illinois", "IL", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'IL', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Indiana", "IN", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'IN', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Iowa", "IA", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'IA', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Kansas", "KS", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'KS', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Kentucky", "KY", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'KY', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Louisana", "LA", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'LA', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Maine", "ME", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'ME', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Maryland", "MD", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'MD', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Massachusetts", "MA", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'Massachusetts', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Michigan", "MI", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'MI', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Minnesota", "MN", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'MN', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Mississipi", "MS", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'MS', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Missouri", "MO", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'MO', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Montana", "MT", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'MT', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Nebraska", "NE", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'NE', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Nevada", "NV", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'NV', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("New Hampshire", "NH", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'NH', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("New Jersey", "NJ", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'NJ', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("New Mexico", "NM", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'NM', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("New York", "NY", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'NY', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("North Carolina", "NC", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'NC', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("North Dakota", "ND", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'ND', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Ohio", "OH", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'OH', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Oklahoma", "OK", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'OK', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Oregon", "OR", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'OR', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Pennsylvania", "PA", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'PA', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Rhode Island", "RH", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'RH', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("South Carolina", "SC", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'SC', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("South Dakota", "SD", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'SD', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Tennessee", "TN", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'TN', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Texas", "TX", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'TX', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Utah", "UT", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'UT', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Vermont", "VT", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'VT', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Virginia", "VA", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'VA', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Washington", "WA", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'WA', paste0(NAME, "-", STATE_NAME), NAME))
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'Washington, D.C.', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("West Virginia", "WV", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'WV', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Wisconsin", "WI", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'WI', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Wyoming", "WY", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'WY', paste0(NAME, "-", STATE_NAME), NAME))
#counties <- read.csv("us_counties1.csv")


################COVID19 DATA
## County Level data covid
us_confirmed_long_jhu <- read.csv(file="updates/coviddata.csv")

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
df$Province_State <- gsub("Arkansas", "AK", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'AK', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Arizona", "AR", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'Arizona', paste0(Admin2, "-", Province_State), Admin2))
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
df$Province_State <- gsub("Louisana", "LA", df$Province_State)
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
df$Province_State <- gsub("Mississipi", "MS", df$Province_State)
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
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'Washington, D.C.', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("West Virginia", "WV", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'WV', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Wisconsin", "WI", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'WI', paste0(Admin2, "-", Province_State), Admin2))
df$Province_State <- gsub("Wyoming", "WY", df$Province_State)
df[["Admin2"]] <- 
  with(df, ifelse(Province_State == 'WY', paste0(Admin2, "-", Province_State), Admin2))

#convert value from int to num to plot?
df$value <-as.numeric(df$value)
