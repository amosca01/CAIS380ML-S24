library(ggplot2)
library(tidyverse)
library(ISLR2)

ds <- Hitters
ds <- Hitters %>%
  drop_na(Salary)

summary(ds$Salary)

ds$Salary <- ifelse(ds$Salary <= 425.0, "High", "Low")

ggplot(ds, aes( x = Years, y = Salary)) + 
  geom_point()

ggplot(ds, aes( x = Hits, y = Salary)) + 
  geom_point()

ggplot(ds, aes( x = RBI, y = Salary)) + 
  geom_point()