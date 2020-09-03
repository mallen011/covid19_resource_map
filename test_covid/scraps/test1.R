library(ggplot2)
library(tidyr)
library(leafpop)
library(sp)
library(data.table)
library(stringr)
library(waffle)
library(extrafont)

library(emojifont)
library(hrbrthemes)
extrafont::font_import (path="C:/Users/Clown Baby/Desktop", pattern = "awesome", prompt = FALSE)
extrafont::loadfonts(quiet = TRUE)

path <- "C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/"
setwd(path)

source("C:/Users/Clown Baby/Desktop/Countyapp/Countyapp/test_covid/load_and_organize.R")


#read file
#us_confirmed_long_jhu <- read.csv(file="updates/coviddata.csv")

#create data table
#us_confirmed_long_jhu <- data.table(us_confirmed_long_jhu)

#only use necessary columns (take out the rest)
#us_confirmed_long_jhu = subset(us_confirmed_long_jhu, select = -c(iso2, iso3, code3, Country_Region, UID) )

#make longer date, so it's not so wide (all dates in one column)
#new_covid <- pivot_longer(us_confirmed_long_jhu, starts_with("X"), names_to = "date")

#put in in a data frame
#df <- data.frame(new_covid)

#subset example
ouachita <- subset.data.frame(df, Combined_Key == "Ouachita, Arkansas, US")

#take out the "X" character in "date" column
#ouachita$date <-substring(ouachita$date,2)
#Take out first row
#ouachita <- ouachita[-c(1),]
#replace all periods in "date" with forward slash
#ouachita$date <- str_replace_all(ouachita$date, '\\.', '/')
#replace all forwardslashes to slashes in "Date"
#ouachita$date <- str_replace_all(ouachita$date, '/', '-')

#ouachita$date<- as.Date(as.character(ouachita$date), format = "%m/%d/%y")
#data(ouachita)
#head(ouachita)

#plot
plot <- ggplot(data= ouachita, aes(x= date, y = value)) + 
      geom_line(color = "#2E9AFE", size = 1.5) +  
      
      theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        plot.background=element_rect(fill = '#262626'),
        panel.background = element_rect(fill = '#262626'),
        axis.text = element_text(color = 'white'),
        axis.line.x = element_line(color = "grey"),
        axis.line.y = element_line(color = "grey"),
        plot.title = element_text(color = 'white'),
        axis.title = element_text(color = 'white'),
        text = element_text(family = 'Source Code Pro', size = 14)
)

print(plot + ggtitle("Coronovirus Cases per Day"))


##MAKE A WAFFLE CHART ###
ouachita <- subset.data.frame(counties1, NAME == "Ouachita-AR")
pov <- as.numeric(ouachita$All.Ages.in.Poverty.Percent, ouachita$not_pov)
waffle1 <- waffle(c( ouachita$All.Ages.in.Poverty.Percent, ouachita$not_pov),
                  rows = 10, flip = TRUE, use_glyph = "male", 
                  colors = c("#ec9d26", "#2E9AFE")
                  )

print(waffle1)


pcts <- round(prop.table(ouachita$All.Ages.in.Poverty.Percent)*100)

con <- url("https://experiential-binder.000webhostapp.com/EKY_Resources/user.png",
           open='rb')
rawpng <- readBin(con, what='raw', n=50000)
close(con)

img <- readPNG(rawpng)
h <- dim(img)[1]
w <- dim(img)[2]

pos1 <- which(apply(img[,,1], 1, function(y) any(y==1)))
mn1 <- min(pos1)
mx1 <- max(pos1)
pospctM <- round((mx1-mn1)*pcts[1]/100+mn1)
#pospctF <- round((mx1-mn1)*pcts[1]/100+mn1)

imgmtx <- img[h:1,,1]
whitemtx <- (imgmtx==1)
colmtx <- matrix(rep(FALSE,h*w),nrow=h)
midpt <- round(w/2)-10
colmtx[mx1:pospctM,1:midpt] <- TRUE
#colmtx[mx1:pospctF,(midpt+1):w] <- TRUE
#colmtx[mx1:pcts, midpt] <- TRUE
imgmtx[whitemtx & colmtx] <- 1


df <- reshape2::melt(imgmtx)
head(df)

#ols <- c(rgb(3,255,208, maxColorValue = 255), 
        #  rgb(7,126,116, maxColorValue = 126),
 #         rgb(0,3,3, maxColorValue = 3))


ggplot(df, aes(x = Var2, y = Var1, fill = factor(value)))+
  geom_tile() 
#  scale_fill_manual(values = cols) +
 # theme(legend.position = "none")



