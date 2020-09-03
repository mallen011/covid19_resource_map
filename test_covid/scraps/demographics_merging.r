
library(dplyr)
library(tidyr)
library(reshape2)
## SET PATH ##
path <- "C:/Users/user/Desktop/Countyapp/Countyapp/test_covid/"
setwd(path)

### download csv then read it.
demographics <- read.csv("dem.csv")

demographics <- data.frame(demographics)

### delete all rows in which col "year" doesn't equal != "12"
#demographics <- subset(demographics, YEAR>11 & AGEGRP==0)
#demographics <- unique(demographics)
#demographics <- subset(demographics, select = -c(STATE, SUMLEV, COUNTY, YEAR, AGEGRP,
 #                                                WA_MALE, WA_FEMALE, BA_FEMALE, BA_MALE,
#                                                 IA_MALE, IA_FEMALE, AA_MALE, AA_FEMALE,
#                                                 NA_MALE, NA_FEMALE, TOM_MALE,
#                                                 TOM_FEMALE, WAC_MALE, WAC_FEMALE, 
#                                                 BAC_MALE, BAC_FEMALE, IAC_MALE, IAC_FEMALE,
 #                                                AAC_MALE, AAC_FEMALE, NAC_MALE, NAC_FEMALE,
  #                                               TOT_POP))
#demographics <- demographics %>%  rename(STATE_NAME = STNAME,
 #        NAME = CTYNAME)

delete <- c("Alaska", "Hawaii")
demographics <- demographics[ !grepl(paste(delete, collapse="|"), demographics$STATE_NAME),]
# delete "County" string from each col NAME 
demographics$NAME <- stringr::str_replace(demographics$NAME, '\\ County', '')

# modify all NAME and STATE_NAME rows to be like the covid-19 and county data
demographics$STATE_NAME <- gsub("Alabama", "AL", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'AL', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Arkansas", "AR", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'AR', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Arizona", "AZ", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'AZ', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("California", "CA", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'CA', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Colorado", "CO", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'CO', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Connecticut", "CT", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'CT', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Delaware", "DE", demographics$STATE_NAME)
demographics[["NAME"]] <- 
 with(demographics, ifelse(STATE_NAME == 'DE', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Florida", "FL", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'FL', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Georgia", "GA", demographics$STATE_NAME)
demographics[["NAME"]] <- 
 with(demographics, ifelse(STATE_NAME == 'GA', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Idaho", "ID", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'ID', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Illinois", "IL", demographics$STATE_NAME)
demographics[["NAME"]] <- 
 with(demographics, ifelse(STATE_NAME == 'IL', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Indiana", "IN", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'IN', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Iowa", "IA", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'IA', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Kansas", "KS", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'KS', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Kentucky", "KY", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'KY', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Louisiana", "LA", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'LA', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Maine", "ME", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'ME', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Maryland", "MD", demographics$STATE_NAME)
demographics[["NAME"]] <- 
 with(demographics, ifelse(STATE_NAME == 'MD', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Massachusetts", "MA", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'MA', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Michigan", "MI", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'MI', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Minnesota", "MN", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'MN', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Mississippi", "MS", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'MS', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Missouri", "MO", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'MO', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Montana", "MT", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'MT', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Nebraska", "NE", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'NE', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Nevada", "NV", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'NV', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("New Hampshire", "NH", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'NH', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("New Jersey", "NJ", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'NJ', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("New Mexico", "NM", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'NM', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("New York", "NY", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'NY', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("North Carolina", "NC", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'NC', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("North Dakota", "ND", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'ND', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Ohio", "OH", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'OH', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Oklahoma", "OK", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'OK', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Oregon", "OR", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'OR', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Pennsylvania", "PA", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'PA', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Rhode Island", "RI", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'RI', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("South Carolina", "SC", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'SC', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("South Dakota", "SD", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'SD', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Tennessee", "TN", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'TN', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Texas", "TX", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'TX', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Utah", "UT", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'UT', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Vermont", "VT", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'VT', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Virginia", "VA", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'VA', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Washington", "WA", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'WA', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("District of Columbia", "DC", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'DC', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("West VA", "WV", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'WV', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME<- gsub("Wisconsin", "WI", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'WI', paste0(NAME, "-", STATE_NAME), NAME))
demographics$STATE_NAME <- gsub("Wyoming", "WY", demographics$STATE_NAME)
demographics[["NAME"]] <- 
  with(demographics, ifelse(STATE_NAME == 'WY', paste0(NAME, "-", STATE_NAME), NAME))

demographics$NAME <- stringr::str_replace(demographics$NAME, '-AL-AL-AL', '-AL')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-AR-AR-AR', '-AR')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-AZ-AZ-AZ', '-AZ')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-CA-CA-CA', '-CA')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-CO-CO-CO', '-CO')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-CT-CT-CT', '-CT')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-DE-DE-DE', '-DE')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-DC-DC-DC', '-DC')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-FL-FL-FL', '-FL')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-GA-GA-GA', '-GA')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-IA-IA-IA', '-IA')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-IL-IL-IL', '-IL')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-IN-IN-IN', '-IN')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-KS-KS-KS', '-KS')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-KY-KY-KY', '-KY')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-LA-LA-LA', '-LA')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-MD-MD-MD', '-MD')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-ME-ME-ME', '-ME')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-MA-MA-MA', '-MA')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-MI-MI-MI', '-MI')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-MS-MS-MS', '-MS')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-MO-MO-MO', '-MO')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-MT-MT-MT', '-MT')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-NE-NE-NE', '-NE')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-NV-NV-NV', '-NV')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-ND-ND-ND', '-ND')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-NC-NC-NC', '-NC')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-NJ-NJ-NJ', '-NJ')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-NY-NY-NY', '-NY')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-NH-NH-NH', '-NH')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-NM-NM-NM', '-NM')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-OH-OH-OH', '-OH')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-OK-OK-OK', '-OK')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-OR-OR-OR', '-OR')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-PA-PA-PA', '-PA')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-RI-RI-RI', '-RI')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-SD-SD-SD', '-SD')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-SC-SC-SC', '-SC')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-TN-TN-TN', '-TN')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-TX-TX-TX', '-TX')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-UT-UT-UT', '-UT')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-VA-VA-VA', '-VA')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-VT-VT-VT', '-VT')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-WA-WA-WA', '-WA')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-WV-WV-WV', '-WV')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-WI-WI-WI', '-WI')
demographics$NAME <- stringr::str_replace(demographics$NAME, '-WY-WY-WY', '-WY')





##############
##write csv into directory for hispanic population
write.csv(demographics, "C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/dem.csv", row.names = FALSE)
##############
 demographics <- read.csv("dem.csv")


##GENDER
dem <- melt(demographics, id.vars=c("NAME", "STATE_NAME",
                              # "male", "female",
                               "NH_MALE","NH_FEMALE",
                               "NHWA_MALE", "NHWA_M1", "NHWA_FEMALE", "NHWA_F1", "NHBA_MALE",
                              "NHBA_M1", "NHBA_FEMALE", "NHBA_F1", "NHIA_MALE", "NHIA_M1", "NHIA_FEMALE", "NHAA_MALE",
                              "NHIA_F1", "NHAA_FEMALE", "NHAA_M1", "NHAA_F1", "NHTOM_MALE",  "NHTOM_FEMALE", "NHWAC_MALE",
                               "NHWAC_FEMALE", "NHBAC_MALE", "NHBAC_FEMALE", "NHIAC_MALE",
                               "NHIAC_FEMALE", "NHNAC_MALE", "NHNAC_FEMALE",
                               "H_MALE", "H_FEMALE",
                               "HWA_MALE", "HWA_M1", "HWA_FEMALE", "HWA_F1", "HBA_MALE",
                              "HBA_M1", "HBA_FEMALE", "HBA_F1", "HIA_MALE", "HIA_M1", "HIA_FEMALE", "HIA_F1","HAA_MALE",
                              "HAA_M1", "HAA_FEMALE", "HAA_F1", "HTOM_MALE", "HTOM_FEMALE", "HWAC_MALE",
                               "HWAC_FEMALE", "HBAC_MALE", "HBAC_FEMALE", "HIAC_MALE",
                               "HIAC_FEMALE", "HNAC_MALE", "HNAC_FEMALE"
                               ), 
                 measure.vars = c("TOT_MALE", "TOT_FEMALE"),
                variable.name = "gender", value.name="g_count")

dem2 <- melt(dem, id.vars=c("NAME", "STATE_NAME"
                                      ), 
                  measure.vars = c("NH_MALE", "NH_FEMALE"),
              variable.name = "hispanic", value.name="H_count")

dem3 <- melt(dem, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("H_MALE", "H_FEMALE"),
variable.name = "hispanic", value.name="H_count")


dem4 <- rbind(dem3, dem2)
dem4<- unique(dem4)
#dem4["gender"]<- ifelse(dem4$hispanic endsWith("_MALE"), "MALE", "FEMALE")
library(dplyr)
dem4$gender <-ifelse(grepl("FEMALE", dem4$hispanic), "female",
                     ifelse(grepl("MALE", dem4$hispanic), "male", "other"))

dem4<- unique(dem4)

dem4 <- dem4[, c(1, 2, 5, 3, 4)]

##HISPANIC
dem4$hispanic <- stringr::str_replace(dem4$hispanic, 'NH_MALE', 'nonhispanic')
dem4$hispanic <- stringr::str_replace(dem4$hispanic, 'NH_FEMALE', 'nonhispanic')

dem4$hispanic <- stringr::str_replace(dem4$hispanic, 'H_MALE', 'hispanic')
dem4$hispanic <- stringr::str_replace(dem4$hispanic, 'H_FEMALE', 'hispanic')


###########RACE#############
##WHITE

#white dudes
#nonhispanic
dem_test <-melt(demographics, id.vars=c("NAME", "STATE_NAME"
  ), 
  measure.vars = c("NHWA_M1", "NHWAC_MALE"),
  variable.name = "race", value.name="r_count")
#hispanic
dem_test2 <- melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("HWA_M1", "HWAC_MALE"),
variable.name = "race", value.name="r_count")

#white girls
#nonhispanic
dem_test3 <-melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("NHWA_F1", "NHWAC_FEMALE"),
variable.name = "race", value.name="r_count")
#hispanic
dem_test4 <- melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("HWA_F1", "HWAC_FEMALE"),
variable.name = "race", value.name="r_count")

#dem5<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("NHWA_MALE", "NHWA_FEMALE"),
#variable.name = "race", value.name="r_count")

#dem6<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("HWA_MALE", "HWA_FEMALE"),
#variable.name = "race", value.name="r_count")

white<- rbind(dem_test, dem_test2, dem_test3, dem_test4)

##BLACK
#men
#nonhispanic
dem_test5 <-melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("NHBA_M1", "NHBAC_MALE"),
variable.name = "race", value.name="r_count")
#hispanic
dem_test6 <- melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("HBA_M1", "HBAC_MALE"),
variable.name = "race", value.name="r_count")

#women
#nonhispanic
dem_test7 <-melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("NHBA_F1", "NHBAC_FEMALE"),
variable.name = "race", value.name="r_count")
#hispanic
dem_test8 <- melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("HBA_F1", "HBAC_FEMALE"),
variable.name = "race", value.name="r_count")

#dem8<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("NHBA_MALE", "NHBA_FEMALE"),
#variable.name = "race", value.name="r_count")

#dem9<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("HBA_MALE", "HBA_FEMALE"),
#variable.name = "race", value.name="r_count")

black<- rbind(dem_test5, dem_test6, dem_test7, dem_test8)

##NATIVE
#men
#nonhispanic
dem_test9 <-melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("NHIA_M1", "NHIAC_MALE"),
variable.name = "race", value.name="r_count")
#hispanic
dem_test10 <- melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("HIA_M1", "HIAC_MALE"),
variable.name = "race", value.name="r_count")

#women
#nonhispanic
dem_test11 <-melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("NHIA_F1", "NHIAC_FEMALE"),
variable.name = "race", value.name="r_count")
#hispanic
dem_test12 <- melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("HIA_F1", "HIAC_FEMALE"),
variable.name = "race", value.name="r_count")

#dem11<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("NHIA_MALE", "NHIA_FEMALE"),
#variable.name = "race", value.name="r_count")

#dem12<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("HIA_MALE", "HIA_FEMALE"),
#variable.name = "race", value.name="r_count")

native<- rbind(dem_test9, dem_test10, dem_test11, dem_test12)


##ASIAN
#men
#nonhispanic
dem_test13 <-melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("NHAA_M1", "NHAAC_MALE"),
variable.name = "race", value.name="r_count")
#hispanic
dem_test14 <- melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("HAA_M1", "HAAC_MALE"),
variable.name = "race", value.name="r_count")

#women
#nonhispanic
dem_test15 <-melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("NHAA_F1", "NHAAC_FEMALE"),
variable.name = "race", value.name="r_count")
#hispanic
dem_test16 <- melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("HAA_F1", "HAAC_FEMALE"),
variable.name = "race", value.name="r_count")


#dem14<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("NHAA_MALE", "NHAA_FEMALE"),
#variable.name = "race", value.name="r_count")

#dem15<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("HAA_MALE", "HAA_FEMALE"),
#variable.name = "race", value.name="r_count")

asian<- rbind(dem_test13, dem_test14, dem_test15, dem_test16)

##ISLANDER
#men
#nonhispanic
dem_test17 <-melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("NHNA_M1", "NHNAC_MALE"),
variable.name = "race", value.name="r_count")
#hispanic
dem_test18 <- melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("HNA_M1", "HNAC_MALE"),
variable.name = "race", value.name="r_count")

#women
#nonhispanic
dem_test19 <-melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("NHNA_F1", "NHNAC_FEMALE"),
variable.name = "race", value.name="r_count")
#hispanic
dem_test20 <- melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("HNA_F1", "HNAC_FEMALE"),
variable.name = "race", value.name="r_count")


#dem17<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("NHIA_MALE", "NHIA_FEMALE"),
#variable.name = "race", value.name="r_count")

#dem18<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("HIA_MALE", "HIA_FEMALE"),
#variable.name = "race", value.name="race_count")

islander<- rbind(dem_test17, dem_test18, dem_test19, dem_test20)


##TWO OR MORE
dem20<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("NHTOM_MALE", "NHTOM_FEMALE"),
variable.name = "race", value.name="r_count")

dem21<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
), 
measure.vars = c("HTOM_MALE", "HTOM_FEMALE"),
variable.name = "race", value.name="r_count")

tom<- rbind(dem20, dem21)


##WHITE COMBO
#dem23<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("NHWAC_MALE", "NHWAC_FEMALE"),
#variable.name = "race", value.name="r_count")

#dem24<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("HWAC_MALE", "HWAC_FEMALE"),
#variable.name = "race", value.name="r_count")

#wc<- rbind(dem23, dem24)


##BLACK COMBO
#dem26<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("NHBAC_MALE", "NHBAC_FEMALE"),
#variable.name = "race", value.name="r_count")

#dem27<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("HBAC_MALE", "HBAC_FEMALE"),
#variable.name = "race", value.name="r_count")

#bc<- rbind(dem26, dem27)


##NATIVE COMBO
#dem29<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("NHIAC_MALE", "NHIAC_FEMALE"),
#variable.name = "race", value.name="r_count")

#dem30<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("HIAC_MALE", "HIAC_FEMALE"),
#variable.name = "race", value.name="r_count")

#nc<- rbind(dem29, dem30)


##ASIAN COMBO
#dem32<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("NHAAC_MALE", "NHAAC_FEMALE"),
#variable.name = "race", value.name="r_count")

#dem33<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("HAAC_MALE", "HAAC_FEMALE"),
#variable.name = "race", value.name="r_count")

#ac<- rbind(dem32, dem33)


##ISLANDER COMBO
#dem35<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("NHNAC_MALE", "NHNAC_FEMALE"),
#variable.name = "race", value.name="r_count")

#dem36<- melt(demographics, id.vars=c("NAME", "STATE_NAME"
#), 
#measure.vars = c("HNAC_MALE", "HNAC_FEMALE"),
#variable.name = "race", value.name="r_count")

#ic<- rbind(dem35, dem36)


rm(dem_test, dem_test2, dem_test3, dem_test4, dem_test5, dem_test6, dem_test7, dem_test8,
   dem_test9, dem_test10, dem_test11, dem_test12, dem_test13, dem_test14, dem_test15, 
   dem_test16, dem_test17, dem_test18, dem_test19, dem_test20,
   dem, dem2, dem20, dem21, dem3, dem4
  #dem4, dem5,
  #dem6, dem7, dem8, dem9, dem10, dem11, dem12, dem13, dem14, dem15, dem16, dem17, dem18,
  #dem19, dem20, dem21, dem22, dem23, dem24, dem25, dem26, dem27, dem28, dem29, dem30,
  #dem31, dem32, dem33, dem34, dem35, dem36, dem37,
  #dem_merge, dem_merge3, dem_merge4, dem_merge5, fuck_this, his_melt2
  )


##combine the races into one column

race <- rbind(white, black, asian, islander, native, tom)

race$gender <-ifelse(grepl("F", race$race), "female",
                     ifelse(grepl("M", race$race), "male", "other"))

race$hispanic <-ifelse(grepl("NH", race$race), "nonhispanic",
                     ifelse(grepl("H", race$race), "hispanic", "other"))

race$makeup <- ifelse(grepl("WAC", race$race), "in combination",
                     ifelse(grepl("BAC", race$race), "in combination",
                     ifelse(grepl("IAC", race$race), "in combination",
                     ifelse(grepl("AAC", race$race), "in combination",
                     ifelse(grepl("NAC", race$race), "in combination",
                     ifelse(grepl("TOM", race$race), "two or more",
                            "one race"))))))

#WA-WAC= one race, so make new column before splitting the columns, baby dummy.


race$race <- stringr::str_replace(race$race, 'NHWA_M1', 'white')
race$race <- stringr::str_replace(race$race, 'NHWA_F1', 'white')
race$race <- stringr::str_replace(race$race, 'HWA_M1', 'white')
race$race <- stringr::str_replace(race$race, 'HWA_F1', 'white')
race$race <- stringr::str_replace(race$race, 'NHBA_M1', 'black')
race$race <- stringr::str_replace(race$race, 'NHBA_F1', 'black')
race$race <- stringr::str_replace(race$race, 'HBA_M1', 'black')
race$race <- stringr::str_replace(race$race, 'HBA_F1', 'black')
race$race <- stringr::str_replace(race$race, 'NHIA_M1', 'native')
race$race <- stringr::str_replace(race$race, 'NHIA_F1', 'native')
race$race <- stringr::str_replace(race$race, 'HIA_M1', 'native')
race$race <- stringr::str_replace(race$race, 'HIA_F1', 'native')
race$race <- stringr::str_replace(race$race, 'NHAA_M1', 'asian')
race$race <- stringr::str_replace(race$race, 'NHAA_F1', 'asian')
race$race <- stringr::str_replace(race$race, 'HAA_M1', 'asian')
race$race <- stringr::str_replace(race$race, 'HAA_F1', 'asian')
race$race <- stringr::str_replace(race$race, 'NHNA_M1', 'islander')
race$race <- stringr::str_replace(race$race, 'NHNA_F1', 'islander')
race$race <- stringr::str_replace(race$race, 'HNA_M1', 'islander')
race$race <- stringr::str_replace(race$race, 'HNA_F1', 'islander')



race$race <- stringr::str_replace(race$race, 'NHWAC_MALE', 'white')
race$race <- stringr::str_replace(race$race, 'NHWAC_FEMALE', 'white')
race$race <- stringr::str_replace(race$race, 'HWAC_MALE', 'white')
race$race <- stringr::str_replace(race$race, 'HWAC_FEMALE', 'white')

race$race <- stringr::str_replace(race$race, 'NHBAC_MALE', 'black')
race$race <- stringr::str_replace(race$race, 'NHBAC_FEMALE', 'black')
race$race <- stringr::str_replace(race$race, 'HBAC_MALE', 'black')
race$race <- stringr::str_replace(race$race, 'HBAC_FEMALE', 'black')

race$race <- stringr::str_replace(race$race, 'NHIAC_MALE', 'native')
race$race <- stringr::str_replace(race$race, 'NHIAC_FEMALE', 'native')
race$race <- stringr::str_replace(race$race, 'HIAC_MALE', 'native')
race$race <- stringr::str_replace(race$race, 'HIAC_FEMALE', 'native')

race$race <- stringr::str_replace(race$race, 'NHAAC_MALE', 'asian')
race$race <- stringr::str_replace(race$race, 'NHAAC_FEMALE', 'asian')
race$race <- stringr::str_replace(race$race, 'HAAC_MALE', 'asian')
race$race <- stringr::str_replace(race$race, 'HAAC_FEMALE', 'asian')

race$race <- stringr::str_replace(race$race, 'NHNAC_MALE', 'islander')
race$race <- stringr::str_replace(race$race, 'NHNAC_FEMALE', 'islander')
race$race <- stringr::str_replace(race$race, 'HNAC_MALE', 'islander')
race$race <- stringr::str_replace(race$race, 'HNAC_FEMALE', 'islander')

race$race <- stringr::str_replace(race$race, 'NHTOM_MALE', 'two or more')
race$race <- stringr::str_replace(race$race, 'NHTOM_FEMALE', 'two or more')
race$race <- stringr::str_replace(race$race, 'HTOM_MALE', 'two or more')
race$race <- stringr::str_replace(race$race, 'HTOM_FEMALE', 'two or more')

race$makeup <- stringr::str_replace(race$makeup, 'NHWAC_MALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'NHWAC_FEMALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'HWAC_MALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'HWAC_FEMALE', 'in combination')

race$makeup <- stringr::str_replace(race$makeup, 'NHBAC_MALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'NHBAC_FEMALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'HBAC_MALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'HBAC_FEMALE', 'in combination')

race$makeup <- stringr::str_replace(race$makeup, 'NHIAC_MALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'NHIAC_FEMALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'HIAC_MALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'HIAC_FEMALE', 'in combination')

race$makeup <- stringr::str_replace(race$makeup, 'NHAAC_MALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'NHAAC_FEMALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'HAAC_MALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'HAAC_FEMALE', 'in combination')

race$makeup <- stringr::str_replace(race$makeup, 'NHNAC_MALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'NHNAC_FEMALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'HNAC_MALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'HNAC_FEMALE', 'in combination')

race$makeup <- stringr::str_replace(race$makeup, 'NHTOM_MALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'NHTOM_FEMALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'HTOM_MALE', 'in combination')
race$makeup <- stringr::str_replace(race$makeup, 'HTOM_FEMALE', 'in combination')

race <- race[, c(1, 2, 5, 6, 3, 7, 4)]

race$gender <- as.factor(race$gender)
race$hispanic <- as.factor (race$hispanic)
race$race <-as.factor(race$race)
race$STATE_NAME <-as.character(race$STATE_NAME)
race$makeup <- as.factor(race$makeup)
race$pathString <- paste("world", race$gender, race$hispanic, race$race, race$makeup, sep = "/")

race <- unique(race)

write.csv(race, "C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/race.csv", row.names = FALSE)
##############

rm(dem, dem_sub, dem2, dem3, ac, asian, bc, black, ic, islander, native, nc, race_hispanic, tom, wc, white)

library(devtools)
devtools::install_github("jeromefroe/circlepackeR")

#########into dendagramland, oh god
library(data.tree)
library(circlepackeR) 

race <- read.csv("race.csv")
race <- data.frame(race)
race$gender <- as.factor(race$gender)
race$hispanic <- as.factor (race$hispanic)
race$race <-as.factor(race$race)
race$STATE_NAME <-as.factor(race$STATE_NAME)
race$makeup<-as.factor(race$makeup)


#um_nodes <- as.Node(race)


#p <- circlepackeR(um_nodes, size = "r_count", 
#                  color_max = "hsl(228, 95%, 57%)",
#                  color_min = "hsl(228, 95%, 1%)"
#                  )

#print(p)
