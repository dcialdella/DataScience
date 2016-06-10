# DAC Testing R Programming
# test 1

# Sys.setenv(http_proxy="http://192.168.10.145:8080")
# Sys.setenv(https_proxy="https://192.168.10.145:8080")


# instalar el producto para acceso a datos faciles
install.packages("dplyr")
library(dplyr)

chicago <- readRDS("chicago.rds")
str(chicago)
names(chicago)[1:3]
subset <- select(chicago, ends_with("2"))
subset <- select(chicago, starts_with("d"))
chic.f <- filter(chicago, pm25tmean2 > 30)
summary(chic.f$pm25tmean2)

chic.f <- filter(chicago, pm25tmean2 > 30 & tmpd > 80)
select(chic.f, date, tmpd, pm25tmean2)


x <- read.csv2("test.csv")
ozone <- read.csv2 ("daily.csv", sep =",")
unique(x$A)
summary(x$A)
quantile(x$A)




y <- read.csv2 ("hw1_data.csv", sep =",")
nrow(y)
ncol(y)

str(y)

y [ 1:10 , ]  # primeros registros
y [ 1:10 , 1:2]  # primeros registros y solo dos columnas


filter(y, y$Ozone>41)   # mostrar y donde campo Ozone sea mayor a 41
filter(y, y$Ozone>41 || y$Temp>30)   # filter AND



# filter() (and slice())
# arrange()
# select() (and rename())
# distinct()
# mutate() (and transmute())
# summarise()
# sample_n() and sample_frac()


# target <- c("Tom", "Lynn")
# filter(dat, name %in% target)


# library("swirl")
# swirl()
# ?InstallCourses

# AQUI MAS COSAS

