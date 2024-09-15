library(tidymodels)
library(readxl)
library(lubridate)

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




# Second Data Visualizatoins


cleaned_data2 = cleaned_data

cleaned_data2$time_posted = as.Date(cleaned_data$time_posted)



daily_plot = cleaned_data2 %>%
    group_by(time_posted) %>%
    summarise(Count = n()) %>%
    ggplot(aes(x = time_posted, y = Count))+
    geom_line()+
    theme_minimal()+
    labs(x = 'Date', y = 'Frequency',title = 'Postings Per Day')

daily_plot

weekly_plot = cleaned_data2 %>%
    mutate(week = floor_date(time_posted, unit = "week")) %>%  # Create a new 'week' column by rounding dates to the start of the week
    group_by(week) %>%
    summarise(Count = n()) %>%  # Summarize the number of posts per week
    ggplot(aes(x = week, y = Count)) +
    geom_line() +  # Create a bar plot
    labs(title = "Weekly New Car Postings", x = "Week", y = "Number of Cars Posted") +
    theme_minimal()

