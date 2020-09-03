library(dplyr)
library(tidyr)
library(reshape2)

library(stringr)

us_industry <- read.csv("C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/US_industry/us_industry1.csv")
us_industry <-data.frame(us_industry)
us_industry <-select(us_industry, -contains("Margin"))
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Alabama', '-AL')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Arizona', '-AZ')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Arkansas', '-AR')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, California', '-CA')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Colorado', '-CO')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Connecticut', '-CT')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Delaware', '-DE')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Florida', '-FL')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Georgia', '-GA')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Iowa', '-IA')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Illinois', '-IL')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Idaho', '-ID')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Indiana', '-IN')#us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Idaho', '-ID')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Kansas', '-KS')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Kentucky', '-KY')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ Parish, Louisiana', '-LA')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Maryland', '-MD')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Maine', '-ME')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Massachusetts', '-MA')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Michigan', '-MI')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Mississippi', '-MS')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Missouri', '-MO')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Minnesota', '-MN')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Montana', '-MT')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Nebraska', '-NE')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Nevada', '-NV')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, 'Carson City, Nevada', 'Carson City-NV')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, North Dakota', '-ND')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, North Carolina', '-NC')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, New Jersey', '-NJ')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, New York', '-NY')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, New Hampshire', '-NH')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, New Mexico', '-NM')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Ohio', '-OH')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Oklahoma', '-OK')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Oregon', '-OR')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Pennsylvania', '-PA')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Rhode Island', '-RI')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, South Dakota', '-SD')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, South Carolina', '-SC')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Tennessee', '-TN')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Texas', '-TX')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Utah', '-UT')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Virginia', '-VA')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Vermont', '-VT')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Washington', '-WA')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, West Virginia', '-WV')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Wisconsin', '-WI')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, '\\ County, Wyoming', '-WY')
us_industry$NAME <- stringr::str_replace(us_industry$NAME, 'District of Columbia, District of Columbia', 'Washington-DC')




#AG
ag1 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_ag_forestry_hunting, us_industry$male_percent, us_industry$female_percent)
ag2 <- melt(ag1, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
            measure.vars = c("us_industry.total_ag_forestry_hunting"),
            variable.name = "Industry", value.name="total")
ag <- merge(ag1, ag2)
rm(ag1, ag2)
ag <-select(ag, -contains("us_industry.total_ag_forestry_hunting"))
ag <- ag[, c(1, 2, 5, 6, 3, 4)]
ag$Industry <- stringr::str_replace(ag$Industry, 'us_industry.total_ag_forestry_hunting', 'Agriculture and Environment')
ag$male <- ag$us_industry.male_percent
ag$female <- ag$us_industry.female_percent
ag <-select(ag, -contains("us_industry.male_percent"))
ag <-select(ag, -contains("us_industry.female_percent"))


#MINING
mining2<-data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_mining_extraction, us_industry$male_percent.1, us_industry$female_percent.1)
mining3 <- melt(mining2, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
            measure.vars = c("us_industry.total_mining_extraction"),
            variable.name = "Industry", value.name="total")
mining <- merge(mining2, mining3)
rm(mining2, mining3)
mining <-select(mining, -contains("us_industry.total_mining_extraction"))
mining <- mining[, c(1, 2, 3, 4, 5, 6)]
mining$Industry <- stringr::str_replace(mining$Industry, 'us_industry.total_mining_extraction', 'Mining and Extraction')
mining$male <- mining$us_industry.male_percent.1
mining$female <- mining$us_industry.female_percent.1
mining <-select(mining, -contains("us_industry.male_percent.1"))
mining <-select(mining, -contains("us_industry.female_percent.1"))

#CONSTRUCTION
construction3 <-data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_construction, us_industry$male_percent.2, us_industry$female_percent.2) 
construction2 <- melt(construction3, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
                measure.vars = c("us_industry.total_construction"),
                variable.name = "Industry", value.name="total")
construction <- merge(construction2, construction3)
rm(construction2, construction3)
construction <-select(construction, -contains("us_industry.total_construction"))
construction <- construction[, c(1, 2, 5, 6, 3, 4)]
construction$Industry <- stringr::str_replace(construction$Industry, 'us_industry.total_construction', 'Construction')
construction$male <- construction$us_industry.male_percent.2
construction$female <- construction$us_industry.female_percent.2
construction <-select(construction, -contains("us_industry.male_percent.2"))
construction <-select(construction, -contains("us_industry.female_percent.2"))

#MANUFACTURING
manufacturing4 <-data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_manufacturing, us_industry$male_percent.3, us_industry$female_percent.3)
manufacturing2 <- melt(manufacturing4, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
                      measure.vars = c("us_industry.total_manufacturing"),
                      variable.name = "Industry", value.name="total")
manufacturing <- merge(manufacturing4, manufacturing2)
rm(manufacturing4, manufacturing2)
manufacturing <-select(manufacturing, -contains("us_industry.total_manufacturing"))
manufacturing <- manufacturing[, c(1, 2, 5, 6, 3, 4)]
manufacturing$Industry <- stringr::str_replace(manufacturing$Industry, 'us_industry.total_manufacturing', 'Manufacturing')
manufacturing$male <- manufacturing$us_industry.male_percent.3
manufacturing$female <- manufacturing$us_industry.female_percent.3
manufacturing <-select(manufacturing, -contains("us_industry.male_percent.3"))
manufacturing <-select(manufacturing, -contains("us_industry.female_percent.3"))

#WHOLESALE
wholesale5 <-data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_wholesale_trade, us_industry$male_percent.4, us_industry$female_percent.4)
wholesale2 <- melt(wholesale5, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
                       measure.vars = c("us_industry.total_wholesale_trade"),
                       variable.name = "Industry", value.name="total")
wholesale <- merge(wholesale5, wholesale2)
rm(wholesale5, wholesale2)
wholesale <-select(wholesale, -contains("us_industry.total_wholesale_trade"))
wholesale <- wholesale[, c(1, 2, 5, 6, 3, 4)]
wholesale$Industry <- stringr::str_replace(wholesale$Industry, 'us_industry.total_wholesale_trade', 'Wholesale Trade')
wholesale$male <- wholesale$us_industry.male_percent.4
wholesale$female <- wholesale$us_industry.female_percent.4
wholesale <-select(wholesale, -contains("us_industry.male_percent.4"))
wholesale<-select(wholesale, -contains("us_industry.female_percent.4"))

#RETAIL
retail6 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_retail_trade, us_industry$male_percent.5, us_industry$female_percent.5)
retail2 <- melt(retail6, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
                   measure.vars = c("us_industry.total_retail_trade"),
                   variable.name = "Industry", value.name="total")
retail <- merge(retail6, retail2)
rm(retail6, retail2)
retail <-select(retail, -contains("us_industry.total_retail_trade"))
retail <- retail[, c(1, 2, 5, 6, 3, 4)]
retail$Industry <- stringr::str_replace(retail$Industry, 'us_industry.total_retail_trade', 'Retail Trade')
retail$male <- retail$us_industry.male_percent.5
retail$female <- retail$us_industry.female_percent.5
retail <-select(retail, -contains("us_industry.male_percent.5"))
retail <-select(retail, -contains("us_industry.female_percent.5"))

#TRANSPORTATION
transportation7 <-data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_transportation_warehousing_utilities, us_industry$male_percent.6, us_industry$female_percent.6)
transportation2 <- melt(transportation7, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
                measure.vars = c("us_industry.total_transportation_warehousing_utilities"),
                variable.name = "Industry", value.name="total")
transportation <- merge(transportation7, transportation2)
rm(transportation7, transportation2)
transportation <-select(transportation, -contains("total_transportation_warehousing_utilities"))
transportation <- transportation[, c(1, 2, 5, 6, 3, 4)]
transportation$Industry <- stringr::str_replace(transportation$Industry, 'us_industry.total_transportation_warehousing_utilities', 'Transportation and Warehousing')
transportation$male <- transportation$us_industry.male_percent.6
transportation$female <- transportation$us_industry.female_percent.6
transportation <-select(transportation, -contains("us_industry.male_percent.6"))
transportation <-select(transportation, -contains("us_industry.female_percent.6"))

#INFORMATION
information8 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_information, us_industry$male_percent.7, us_industry$female_percent.7)
information2 <- melt(information8, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
                        measure.vars = c("us_industry.total_information"),
                        variable.name = "Industry", value.name="total")
information <- merge(information8, information2)
rm(information8, information2)
information <-select(information, -contains("us_industry.total_information"))
information <- information[, c(1, 2, 5, 6, 3, 4)]
information$Industry <- stringr::str_replace(information$Industry, 'us_industry.total_information', 'Information')
information$male <- information$us_industry.male_percent.7
information$female <- information$us_industry.female_percent.7
information <-select(information, -contains("us_industry.male_percent.7"))
information <-select(information, -contains("us_industry.female_percent.7"))

#FINANCE
finance9 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_finance_insurance, us_industry$male_percent.8, us_industry$female_percent.8)
finance2 <- melt(finance9, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
                     measure.vars = c("us_industry.total_finance_insurance"),
                     variable.name = "Industry", value.name="total")
finance <- merge(finance9, finance2)
rm(finance9, finance2)
finance <-select(finance, -contains("us_industry.total_finance_insurance"))
finance <- finance[, c(1, 2, 5, 6, 3, 4)]
finance$Industry <- stringr::str_replace(finance$Industry, 'us_industry.total_finance_insurance', 'Finance and Insurance')
finance$male <- finance$us_industry.male_percent.8
finance$female <- finance$us_industry.female_percent.8
finance <-select(finance, -contains("us_industry.male_percent.8"))
finance <-select(finance, -contains("us_industry.female_percent.8"))

#REAL ESTATE
real_estate10 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_real_estate_rental_leasing, us_industry$male_percent.9, us_industry$female_percent.9)
real_estate2 <- melt(real_estate10, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
                 measure.vars = c("us_industry.total_real_estate_rental_leasing"),
                 variable.name = "Industry", value.name="total")
real_estate <- merge(real_estate10, real_estate2)
rm(real_estate10, real_estate2)
real_estate <-select(real_estate, -contains("us_industry.total_real_estate_rental_leasing"))
real_estate <- real_estate[, c(1, 2, 5, 6, 3, 4)]
real_estate$Industry <- stringr::str_replace(real_estate$Industry, 'us_industry.total_real_estate_rental_leasing', 'Real Estate and Leasing')
real_estate$male <- real_estate$us_industry.male_percent.9
real_estate$female <- real_estate$us_industry.female_percent.9
real_estate <-select(real_estate, -contains("us_industry.male_percent.9"))
real_estate <-select(real_estate, -contains("us_industry.female_percent.9"))

#TECH
tech11 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_professional_scientific_technical_services, us_industry$male_percent.10, us_industry$female_percent.10)
tech2 <- melt(tech11, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
                     measure.vars = c("us_industry.total_professional_scientific_technical_services"),
                     variable.name = "Industry", value.name="total")
tech <- merge(tech11, tech2)
rm(tech11, tech2)
tech <-select(tech, -contains("us_industry.total_professional_scientific_technical_services"))
tech <- tech[, c(1, 2, 5, 6, 3, 4)]
tech$Industry <- stringr::str_replace(tech$Industry, 'us_industry.total_professional_scientific_technical_services', 'Science and Technology')
tech$male <- tech$us_industry.male_percent.10
tech$female <- tech$us_industry.female_percent.10
tech <-select(tech, -contains("us_industry.male_percent.10"))
tech <-select(tech, -contains("us_industry.female_percent.10"))

#MANAGEMENT
management12 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_management_of_companies_enterprises, us_industry$male_percent.11, us_industry$female_percent.11)
management2 <- melt(management12, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
              measure.vars = c("us_industry.total_management_of_companies_enterprises"),
              variable.name = "Industry", value.name="total")
management <- merge(management12, management2)
rm(management12, management2)
management <-select(management, -contains("us_industry.total_management_of_companies_enterprises"))
management <- management[, c(1, 2, 5, 6, 3, 4)]
management$Industry <- stringr::str_replace(management$Industry, 'us_industry.total_management_of_companies_enterprises', 'Business Management')
management$male <- management$us_industry.male_percent.11
management$female <- management$us_industry.female_percent.11
management <-select(management, -contains("us_industry.male_percent.11"))
management <-select(management, -contains("us_industry.female_percent.11"))

#ADMIN
admin13 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_administrative_and_support_and_waste_management_services, us_industry$male_percent.12, us_industry$female_percent.12)
admin2 <- melt(admin13, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
                    measure.vars = c("us_industry.total_administrative_and_support_and_waste_management_services"),
                    variable.name = "Industry", value.name="total")
admin <- merge(admin13, admin2)
rm(admin13, admin2)
admin <-select(admin, -contains("us_industry.total_administrative_and_support_and_waste_management_services"))
admin <- admin[, c(1, 2, 5, 6, 3, 4)]
admin$Industry <- stringr::str_replace(admin$Industry, 'us_industry.total_administrative_and_support_and_waste_management_services', 'Support and Waste Management')
admin$male <- admin$us_industry.male_percent.12
admin$female <- admin$us_industry.female_percent.12
admin <-select(admin, -contains("us_industry.male_percent.12"))
admin <-select(admin, -contains("us_industry.female_percent.12"))


#EDU
edu14 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_educational_services, us_industry$male_percent.13, us_industry$female_percent.13)
edu2 <- melt(edu14, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
               measure.vars = c("us_industry.total_educational_services"),
               variable.name = "Industry", value.name="total")
edu <- merge(edu14, edu2)
rm(edu14, edu2)
edu <-select(edu, -contains("us_industry.total_educational_services"))
edu <- edu[, c(1, 2, 5, 6, 3, 4)]
edu$Industry <- stringr::str_replace(edu$Industry, 'us_industry.total_educational_services', 'Education')
edu$male <- edu$us_industry.male_percent.13
edu$female <- edu$us_industry.female_percent.13
edu <-select(edu, -contains("us_industry.male_percent.13"))
edu <-select(edu, -contains("us_industry.female_percent.13"))

#HEALTHCARE
healthcare15 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_healthcare_social_assistance, us_industry$male_percent.14, us_industry$female_percent.14)
healthcare2 <- melt(healthcare15, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
             measure.vars = c("us_industry.total_healthcare_social_assistance"),
             variable.name = "Industry", value.name="total")
healthcare <- merge(healthcare15, healthcare2)
rm(healthcare15, healthcare2)
healthcare <-select(healthcare, -contains("us_industry.total_healthcare_social_assistance"))
healthcare <- healthcare[, c(1, 2, 5, 6, 3, 4)]
healthcare$Industry <- stringr::str_replace(healthcare$Industry, 'us_industry.total_healthcare_social_assistance', 'Healthcare and Social Assistance')
healthcare$male <- healthcare$us_industry.male_percent.14
healthcare$female <- healthcare$us_industry.female_percent.14
healthcare <-select(healthcare, -contains("us_industry.male_percent.14"))
healthcare <-select(healthcare, -contains("us_industry.female_percent.14"))

#ARTS
arts16 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_arts_entertainment_and_recreation, us_industry$male_percent.15, us_industry$female_percent.15)
arts2 <- melt(arts16, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
                    measure.vars = c("us_industry.total_arts_entertainment_and_recreation"),
                    variable.name = "Industry", value.name="total")
arts <- merge(arts16, arts2)
rm(arts16, arts2)
arts <-select(arts, -contains("us_industry.total_arts_entertainment_and_recreation"))
arts <- arts[, c(1, 2, 5, 6, 3, 4)]
arts$Industry <- stringr::str_replace(arts$Industry, 'us_industry.total_arts_entertainment_and_recreation', 'Arts, Entertainment and Recreation')
arts$male <- arts$us_industry.male_percent.15
arts$female <- arts$us_industry.female_percent.15
arts <-select(arts, -contains("us_industry.male_percent.15"))
arts <-select(arts, -contains("us_industry.female_percent.15"))

#ACCOMODATION
accomodation17 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_accommodation_and_food_services, us_industry$male_percent.16, us_industry$female_percent.16)
accomodation2 <- melt(accomodation17, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
              measure.vars = c("us_industry.total_accommodation_and_food_services"),
              variable.name = "Industry", value.name="total")
accomodation <- merge(accomodation17, accomodation2)
rm(accomodation17, accomodation2)
accomodation <-select(accomodation, -contains("us_industry.total_accommodation_and_food_services"))
accomodation <- accomodation[, c(1, 2, 5, 6, 3, 4)]
accomodation$Industry <- stringr::str_replace(accomodation$Industry, 'us_industry.total_accommodation_and_food_services', 'Food and Hospitality')
accomodation$male <- accomodation$us_industry.male_percent.16
accomodation$female <- accomodation$us_industry.female_percent.16
accomodation <-select(accomodation, -contains("us_industry.male_percent.16"))
accomodation <-select(accomodation, -contains("us_industry.female_percent.16"))

#OTHER
other18 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_other, us_industry$male_percent.17, us_industry$female_percent.17)
other2 <- melt(other18, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
                      measure.vars = c("us_industry.total_other"),
                      variable.name = "Industry", value.name="total")
other <- merge(other18, other2)
rm(other18, other2)
other <-select(other, -contains("us_industry.total_other"))
other <- other[, c(1, 2, 5, 6, 3, 4)]
other$Industry <- stringr::str_replace(other$Industry, 'us_industry.total_other', 'Other')
other$male <- other$us_industry.male_percent.17
other$female <- other$us_industry.female_percent.17
other <-select(other, -contains("us_industry.male_percent.17"))
other <-select(other, -contains("us_industry.female_percent.17"))

#PUBLIC
public19 <- data.frame(us_industry$GEOID, us_industry$NAME, us_industry$total_public_administration, us_industry$male_percent.18, us_industry$female_percent.18)
public2 <- melt(public19, id.vars=c("us_industry.GEOID", "us_industry.NAME"), 
               measure.vars = c("us_industry.total_public_administration"),
               variable.name = "Industry", value.name="total")
public <- merge(public19, public2)
rm(public19, public2)
public <-select(public, -contains("us_industry.total_public_administration"))
public <- public[, c(1, 2, 5, 6, 3, 4)]
public$Industry <- stringr::str_replace(public$Industry, 'us_industry.total_public_administration', 'Public Administration')
public$male <- public$us_industry.male_percent.18
public$female <- public$us_industry.female_percent.18
public <-select(public, -contains("us_industry.male_percent.18"))
public <-select(public, -contains("us_industry.female_percent.18"))


industry <- rbind(accomodation, ag, admin, arts, construction, edu, finance, healthcare, information, management,
                  manufacturing, mining, other, real_estate, retail, tech, transportation, wholesale, public)

rm(accomodation, ag, admin, arts, construction, edu, finance, healthcare, information, management,
   manufacturing, mining, other, real_estate, retail, tech, transportation, wholesale, public)

#need to pivot_longer()/gather()/or melt()? so male and female are in 1 column under "gender"

industrym <- data.frame(industry$us_industry.GEOID, industry$us_industry.NAME, 
                                  industry$Industry, industry$total, industry$male)
industrym <- melt(industrym, id.vars=c("industry.us_industry.GEOID", "industry.us_industry.NAME", "industry.Industry", "industry.total"), 
                  measure.vars = c("industry.male"),
                  variable.name = "gender", value.name="percentage")
industryf<- data.frame(industry$us_industry.GEOID, industry$us_industry.NAME, 
                      industry$Industry, industry$total, industry$female)
industryf <- melt(industryf, id.vars=c("industry.us_industry.GEOID", "industry.us_industry.NAME", "industry.Industry", "industry.total"), 
                  measure.vars = c("industry.female"),
                  variable.name = "gender", value.name="percentage")
industry<- rbind(industrym, industryf)
rm(industrym, industryf)

industry$gender<- stringr::str_replace(industry$gender, 'industry.male', 'Male')
industry$gender<- stringr::str_replace(industry$gender, 'industry.female', 'Female')

industry$industry.us_industry.NAME <- as.factor(industry$industry.us_industry.NAME)
industry$industry.Industry <- as.factor(industry$industry.Industry)
industry$gender <- as.factor(industry$gender)
industry$percentage <- as.numeric(industry$percentage)
industry$industry.total <- as.numeric(industry$industry.total)

industry$image <- ifelse(grepl("Wholesale", industry$industry.Industry, ignore.case = T), 
                         "https://experiential-binder.000webhostapp.com/industry/wholesale.svg", 
                         ifelse(grepl("Transportation", industry$industry.Industry, ignore.case = T), 
                                "https://experiential-binder.000webhostapp.com/industry/transportation.svg",
                         ifelse(grepl("Retail", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/retail.svg",
                         ifelse(grepl("Real", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/real_estate.svg",
                         ifelse(grepl("Public", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/public_admin.svg",
                         ifelse(grepl("Science", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/science.svg",  
                         ifelse(grepl("Other", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/other.svg",
                         ifelse(grepl("Mining", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/mining.svg",
                         ifelse(grepl("Manufacturing", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/manufacturing.svg",
                         ifelse(grepl("Business", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/management.svg",
                         ifelse(grepl("Information", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/information.svg",
                        ifelse(grepl("Health", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/healthcare.svg",
                        ifelse(grepl("Financ", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/finance.svg",
                        ifelse(grepl("Education", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/education.svg",
                        ifelse(grepl("Construction", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/construction.svg",
                        ifelse(grepl("Art", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/arts.svg",
                        ifelse(grepl("Agricultur", industry$industry.Industry, ignore.case = T), 
                                  "https://experiential-binder.000webhostapp.com/industry/agriculture.svg",
                        ifelse(grepl("Waste", industry$industry.Industry, ignore.case = T), 
                                 "https://experiential-binder.000webhostapp.com/industry/admin.svg",
                        ifelse(grepl("Food", industry$industry.Industry, ignore.case = T), 
                                  "https://experiential-binder.000webhostapp.com/industry/accomodation.svg",
                                                      "Other")))))))))))))))))))


industry$color <- ifelse(grepl("Wholesale", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"', 
                  ifelse(grepl("Transportation", industry$industry.Industry, ignore.case = T), 
                         '"#2C91EF"',
                  ifelse(grepl("Retail", industry$industry.Industry, ignore.case = T), 
                         '"#2B8FEC"',
                  ifelse(grepl("Real", industry$industry.Industry, ignore.case = T), 
                         '"#2A8BE5"',
                  ifelse(grepl("Public", industry$industry.Industry, ignore.case = T), 
                         '"#2781D5"',
                  ifelse(grepl("Science", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',  
                  ifelse(grepl("Other", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                  ifelse(grepl("Mining", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                  ifelse(grepl("Manufacturing", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                  ifelse(grepl("Business", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                  ifelse(grepl("Information", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                  ifelse(grepl("Health", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                  ifelse(grepl("Financ", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                  ifelse(grepl("Education", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                  ifelse(grepl("Construction", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                  ifelse(grepl("Art", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                  ifelse(grepl("Agricultur", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                  ifelse(grepl("Waste", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                  ifelse(grepl("Food", industry$industry.Industry, ignore.case = T), 
                         '"#2E9AFE"',
                           "Other")))))))))))))))))))

write.csv(industry, "C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/industry.csv", row.names = FALSE)

