# DAC Testing R Programming
# test 1

# instalar el producto para acceso a datos faciles
install.packages("dplyr")
library(dplyr)

chicago <- readRDS("chicago.rds")
str(chicago)
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

nrow(ozone)
ncol(ozone)

x [ 1:10 , ]

unique(x$A)
summary(x$A)
quantile(x$A)

zz <- filter( x, A > 148839 & B< 286255 ) %>%
  select( A, B ) %>%
  as.data.frame

zx <- filter( y, Ozone <30 & Temp > 56 & Month == 5 & y$Day < 15) %>%
 select( median(Solar.R)) %>% 
 as.data.frame

select(ozone, State.Name) %>% unique %>% nrow

filter(ozone, State.Name != "Puerto Rico"
           & State.Name != "Georgia"
           & State.Name != "Hawaii") %>%
  group_by(region) %>%
  summarize(mean = mean(Sample.Measurement, na.rm = TRUE),
              median = median(Sample.Measurement, na.rm = TRUE
              ))

pnorm(30, mean = mean(x), sd = sd(x), lower.tail = FALSE)

x <- factor(c("yes", "yes", "no", "yes", "no"))
table(x)
unclass(x)

colnames(m) <- c("h", "f")
rownames(m) <- c("x", "z")

dput(x)
yyyyy <-dget("aaa.txt")


dump(c("x", "y"), file = "data.R")
source("data.R")



## Save everything to a file
save.image(file = "mydata.RData")

## load all objects in this file
load("mydata.RData")

x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

x[-2]

good <- complete.cases(x)

rep( "aaa", 10)

x <- as.Date("1970-01-01")
x <- Sys.time()

# select : return a subset of the columns of a data frame, using a flexible notation
# filter : extract a subset of rows from a data frame based on logical conditions
# arrange : reorder rows of a data frame
# rename : rename variables in a data frame
# mutate : add new variables/columns or transform existing variables
# summarise / summarize : generate summary statistics of different variables in the data frame,
# possibly within strata
#  %>% : the “pipe” operator is used to connect multiple verb actions together into a pipeline

f <- function() {
    cat("Hello, world!\n")
 }

s <- split(airquality, airquality$Month)

# sapply(s, function(x) {
#   colMeans(x[, c("Ozone", "Solar.R", "Wind")],
#              na.rm = TRUE)
#  })

gl(3, 5)

system.time(readLines("http://192.168.10.2"))

rnorm(10)
x <- rnorm(10, 20, 2)
summary(x)


#  definir un lote de nros al azar definidos
set.seed(1)

