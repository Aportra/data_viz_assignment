library(tidymodels)
library(readxl)

car_data = read_xlsx('Data Viz Assignment_ Carbitrage Data.xlsx')

View(car_data)

summary(car_data)


# Cleaning Data with tidymodels this is for plotting the most popular cars

cleaned_data = recipe(~., data = car_data) %>%
    step_naomit(all_predictors()) %>%
    prep() %>%
    juice()
    

#First Visuzalizations

ggplot(data = cleaned_data, aes(y = reorder(make, table(make)[make]))) +
    geom_bar(stat = 'count', aes(fill = after_stat(count))) +
    scale_color_gradient()+
    theme_minimal() +
    labs(y = "Car Make", x = "Count", title = "Most Popular Car Makes")



ggplot(data = cleaned_data, aes(y = reorder(model, table(model)[model]))) +
    geom_bar(stat = 'count', aes(fill = after_stat(count))) +
    theme_minimal() +
    labs(y = "Car Make", x = "Count", title = "Most Popular Car Models")




list_models = c()

for(models in cleaned_data$model){
    if(!models %in% list_models && !is.na(models)){
        list_models =  c(list_models,models)
    }
}

print(length(list_models))

list_makes = c()

for(makes in cleaned_data$make){
    if(!makes %in% list_makes && !is.na(makes)){
        list_makes =  c(list_makes,makes)
    }
}


ggplot(data = cleaned_data, aes(y = reorder(make, table(make)[make]), fill = model)) +
    geom_bar(position = "stack", stat = "count") +
    theme_minimal()


# Second Data Visualizatoins
cleaned_data2 = cleaned_data
cleaned_data2$time_posted = as.Date(cleaned_data$time_posted)


dates = c()
freq = c()

for(date in unique(cleaned_data2$time_posted)){
    dates = c(dates,(as.Date(date)))
    freq = c(freq, sum(cleaned_data2$time_posted == date))
}

date_freq = tibble(dates = as.Date(dates), freq = freq)


date_freq = date_freq[date_freq$freq >= 30,]

date_freq$freq[5]

ggplot(data = cleaned_data, aes(x = time_posted, y = freq))+
geom_line()

dates2 = c()
freq2 = c()

for(date in unique(cleaned_data$time_posted)){
    dates2 = c(dates2,date)
    freq2 = c(freq2, sum(cleaned_data$time_posted == date))
}

date_freq2 = tibble(dates = dates, freq = freq)
