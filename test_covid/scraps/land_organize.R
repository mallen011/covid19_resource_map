path <- "C:/Users/user/Desktop/Countyapp/Countyapp/test_covid/"
setwd(path)

land <- read.csv("land.csv")
land <-data.frame(land)
land$NAME <- poverty$NAME[match(poverty$ID, land$geoid)]
land <- land[, c(1, 11, 2, 3, 4, 5, 6, 7, 8, 9, 10)]
land$water <-as.numeric

land2<- subset.data.frame(land, NAME=="Autauga-AL")

water <- melt(land2, id.vars=c("X", "NAME", "geoid"), 
              measure.vars = c("water"),
              variable.name = "cover_type", value.name="percent")

urban <- melt(land2, id.vars=c("X", "NAME", "geoid"), 
              measure.vars = c("urban"),
              variable.name = "cover_type", value.name="percent")

barren <- melt(land2, id.vars=c("X", "NAME", "geoid"), 
               measure.vars = c("barren"),
               variable.name = "cover_type", value.name="percent")

forest <- melt(land2, id.vars=c("X", "NAME", "geoid"), 
               measure.vars = c("forest"),
               variable.name = "cover_type", value.name="percent")

scrub <- melt(land2, id.vars=c("X", "NAME", "geoid"), 
              measure.vars = c("scrub"),
              variable.name = "cover_type", value.name="percent")

ag <- melt(land2, id.vars=c("X", "NAME", "geoid"), 
           measure.vars = c("agland"),
           variable.name = "cover_type", value.name="percent")

wetland <- melt(land2, id.vars=c("X", "NAME", "geoid"), 
                measure.vars = c("wetland"),
                variable.name = "cover_type", value.name="percent")

land2 <- rbind(water, urban, barren, forest, scrub, ag, wetland)




