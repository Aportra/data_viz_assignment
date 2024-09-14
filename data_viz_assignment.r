library(tidymodels)
library(readxl)

car_data = read_xlsx('Data Viz Assignment_ Carbitrage Data.xlsx')

View(car_data)

summary(car_data)

max(count(car_data['model']))
