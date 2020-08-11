
## GIS and visualization stuff
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

## SET PATH ##
path <- "C:/Users/user/Desktop/Countyapp/Countyapp/test_covid/"
setwd(path)

################################# LOADING DATA #########################################

poverty <- read.csv("US_counties_poverty.csv")
poverty <-data.frame(poverty)


#industry <- read.csv("US_IND.csv")

counties <- readOGR("shps/us_counties.shp")

counties1 <- data.frame(counties)

## manually organize county data so it matches with covid data for querying
counties1$STATE_NAME <- gsub("Alabama", "AL", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'AL', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Arkansas", "AR", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'AR', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Arizona", "AZ", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'AZ', paste0(NAME, "-", STATE_NAME), NAME))
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
counties1$STATE_NAME <- gsub("Rhode Island", "RI", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'RI', paste0(NAME, "-", STATE_NAME), NAME))
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
counties1$NAME <-gsub("District of Columbia", "Washington", counties1$NAME)
counties1$STATE_NAME <- gsub("WA, DC", "DC", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'DC', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("West VA", "WV", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'WV', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Wisconsin", "WI", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'WI', paste0(NAME, "-", STATE_NAME), NAME))
counties1$STATE_NAME <- gsub("Wyoming", "WY", counties1$STATE_NAME)
counties1[["NAME"]] <- 
  with(counties1, ifelse(STATE_NAME == 'WY', paste0(NAME, "-", STATE_NAME), NAME))


##join poverty to county polyons
counties1 <- merge(poverty, counties1, by=c("NAME"))

##get rid of additional columns made from the merge
counties1 <- subset(counties1, select = -c(STATE_NAME.y, STATEFP, COUNTYFP, NAMELSAD) )


##make poverty data into character, by first creating a new column and inserting poverty
## as character, as to keep the original poverty data as numeric
counties1["charpov"] <- char_poverty<- as.character(counties1$All.Ages.in.Poverty.Percent)

counties1["not_pov"] <-(100-counties1$All.Ages.in.Poverty.Percent)

counties1["charnot_pov"]<-charnot_pov <- as.character(counties1$not_pov)


########################### INDUSTRY EDITS ########################
#library(stringr)

#us_industry <- read.csv("C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/US_industry/us_industry.csv")
#data.frame(us_industry)
#us_industry <-select(us_industry, -contains("Margin"))
#us_industry <-select(us_industry, -contains("Male"))
#us_industry <-select(us_industry, -contains("Female"))
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Alabama', '-AL')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Arizona', '-AZ')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Arkansas', '-AR')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, California', '-CA')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Colorado', '-CO')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Connecticut', '-CT')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Delaware', '-DE')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Florida', '-FL')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Georgia', '-GA')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Iowa', '-IA')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Illinois', '-IL')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Indiana', '-IN')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Idaho', '-ID')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Kansas', '-KS')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Kentucky', '-KY')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Louisiana', '-LA')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Maryland', '-MD')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Maine', '-ME')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Massachussetts', '-MA')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Michigan', '-MI')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Mississippi', '-MS')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Missouri', '-MO')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Montana', '-MT')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Nebraska', '-NE')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Nevada', '-NV')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, North Dakota', '-ND')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, North Carolina', '-NC')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, New Jersey', '-NJ')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, New York', '-NY')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, New Hampshire', '-NH')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, New Mexico', '-NM')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Ohio', '-OH')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Oklahoma', '-OK')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Oregon', '-OR')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Pennsylvania', '-PA')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Rhode Island', '-RI')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, South Dakota', '-SD')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, South Carolina', '-SC')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Tennessee', '-TN')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Texas', '-TX')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Utah', '-UT')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Virginia', '-VA')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Vermont', '-VT')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Washington', '-AL')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, West Virginia', '-WV')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Wisconsin', '-WI')
#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Wyoming', '-WY')


## pivot the industry data longer so can make a bar graph
#industry <- industry %>% 
# pivot_longer(-c(NAME, GEOID), names_to = "type", values_to = "count") 
#industry$count <- as.numeric(industry$count)
#industry <- write.csv(industry, "C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/US_IND.csv", row.names = FALSE)
industry <- read.csv("US_IND.csv")
industry <- data.frame(industry)


###race###
race <- read.csv("race.csv")
race <-data.frame(race)
race$gender <- as.factor(race$gender)
race$hispanic <- as.factor (race$hispanic)
race$race <-as.factor(race$race)
race$makeup <- as.factor(race$makeup)
race$STATE_NAME <-as.character(race$STATE_NAME)
###make nodes
race$pathString <- paste("world", race$gender, race$hispanic, race$race, race$makeup, sep = "/")


#https://www.census.gov/data/datasets/time-series/demo/popest/2010s-counties-detail.html
  
################COVID19 DATA
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
