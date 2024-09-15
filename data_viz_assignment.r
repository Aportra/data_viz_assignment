library(tidymodels)
library(readxl)
library(lubridate)

car_data <- read_xlsx("Data Viz Assignment_ Carbitrage Data.xlsx")

View(car_data)

summary(car_data)


# Cleaning Data with tidymodels this is for plotting the most popular cars

cleaned_data <- recipe(~., data = car_data) %>%
    step_naomit(all_predictors()) %>%
    prep() %>%
    juice()


# First Visuzalizations
data_for_viz = cleaned_data %>%
    group_by(make, model) %>%
    summarise(count = n()) %>%
    arrange(desc(count))


top_car_counts <- head(data_for_viz, 50)

ggplot(data = top_car_counts, aes(y = reorder(paste(make, model), count), x = count, fill = count)) +
    geom_bar(stat = "identity") +
    scale_fill_gradient(low = "lightblue", high = "darkblue") +
    theme_minimal() +
    labs(y = "Car Make and Model", x = "Count", title = "Most Popular Car Makes") +
    theme(legend.position = 'none')

# Second Data Visualizatoins


cleaned_data2 <- cleaned_data

cleaned_data2$time_posted <- as.Date(cleaned_data$time_posted)



# daily_plot <- cleaned_data2 %>%
#     group_by(time_posted) %>%
#     summarise(Count = n()) %>%
#     ggplot(aes(x = time_posted, y = Count)) +
#     geom_line() +
#     theme_minimal() +
#     labs(x = "Date", y = "Frequency", title = "Postings Per Day") +
#     geom_text(aes(label = ifelse(time_posted == as.Date("2024-07-03"), Count, "")), vjust = -1, hjust = 1) +
#     geom_point(aes(x = time_posted, y = Count))

# daily_plot

weekly_data <- cleaned_data2 %>%
    mutate(week = floor_date(time_posted, unit = "week")) %>% # Create a new 'week' column by rounding dates to the start of the week
    group_by(week) %>%
    summarise(Count = n())

ggplot(data = weekly_data, aes(x = week, y = Count)) +
    geom_line() +
    labs(title = "Weekly New Car Postings", x = "Week", y = "Number of Cars Posted") +
    geom_text(aes(label = ifelse(week == as.Date("2024-06-30"), Count, "")), vjust = -1, hjust = 1) +
    geom_point(aes(x = week, y = Count)) +
    theme_minimal()


# Third Visualization

