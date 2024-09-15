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
    


for (makes in list_makes) {
    print(sum(cleaned_data$make == makes))
}

ggplot(data = cleaned_data, aes(y = reorder(make, table(make)[make]))) +
    geom_bar(stat = 'count', aes(fill = after_stat(count))) +
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
