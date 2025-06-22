install.packages("MASS")
# loading of necessary libraries 
library(tidyverse)
library(readr)
library(janitor)
library(WDI)
library(ggplot2)

# Relationship Between Inflation(CPI as %) and the Unemployment Data

#search the indicators for the project.
WDIsearch("Inflation")
WDIsearch("Unemployment")

# Get the data from World bank 
data <- WDI(country = "IN", indicator = c("Inflation" = "FP.CPI.TOTL.ZG", "Unemployment" = "SL.UEM.TOTL.ZS"), start = 2000, end = 2022)
view(data)

#cleaning of data 
data <- data %>%
  clean_names() %>% 
  drop_na(inflation, unemployment)
names(data)

#model 
model <- lm(inflation~unemployment, data = data)
summary(model)


# the relationship between them on a graph 
ggplot(data, aes(x = unemployment, y = inflation))+
  geom_point(color = "black", size = 3)+
  geom_smooth(method = "lm", se = TRUE, color = "red")+
  labs(
    title = "Does Inflation effects the Unemployment In India ??",
    subtitle = "Relationship Between the Inflation and Unemployment",
    x = "Unemployment Rate(%)",
    y = "Inflation Rate(%)",
    caption = "Data source : World Bank Via WDI"
    
  ) + 
  theme_minimal()