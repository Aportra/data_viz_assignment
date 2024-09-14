TSWD: Data Visualization Assignment
Introduction
Welcome to the assignment for Module 1 of "Telling Stories with Data"! As we have ventured into the world of data-driven storytelling as it relates to data visualization and now it's time for you to apply the knowledge and techniques you have learned.
Assignment Overview
1. Synthesis of Knowledge: This assignment is designed to combine the various concepts, tools, and methodologies we covered in Module 1. Your task will be to communicate complex information effectively and meaningfully through the art of data visualization.
2. Your Visualization Task: You will be required to create and submit five distinct visualizations. How you choose these visualizations is up to you, but you'll make your selections from a pool of options with varying levels of complexity.
3. Choice of Visualizations: To ensure a balanced approach, we've categorized the visualization options into three tiers:
• Easy Choices (7 Options): Choose any three.
• Medium Choices (3 Options): Choose one.
• Difficult Choices (3 Options): Choose one.
By blending easy, medium, and hard visualizations, you will be challenged to diversify your skill set and push your boundaries while giving space for foundational practice. I expect that you will build the visualizations in Microsoft Excel or Google Sheets unless you are a graduate student selecting the technical option, in which case you will use ggplot in R. For every visualization, go through the data visualization checklist by Ann Emery and report your score for the submitted visualization. (If you like, you can just make copies of the PDF, fill them out for the visualizations, combine them into one PDF, and submit those.)
The hard visualizations generally require you to do more data manipulation to prepare the data for charting. They also provide an opportunity to create richer stories that make use of the larger data sets.
Data Sources
The visualizations will be based on three datasets.
• Carbitrage: You have access to data from a personal passion project, where I am scraping all cars listed on Craigslist across the country. You will have the option to explore these data and determine how we communicate results to people shopping for cars or interested in car trends. These data will be used on our dashboard project.
• The Dram Shop: Explore data patterns from one of our favorite local watering holes, the Dram Shop. This is a preview of the data we will work with on our presentation project.

• City of Missoula Unhoused Data: Engage with vital data concerning the unhoused population in Missoula, understanding demographics, patterns, and the challenges faced.
The sections below are organized by data source so that the context makes sense. You are welcome to select any projects from any sections, as long as you adhere to the guidelines of three “easy” visualizations, one medium, and one difficult.
Carbitrage
For years I have been interested in using the tools of data science to find good values in the used car market. Starting July 1, 2023, I have been scraping every car listed on Craigslist across the entire US. These data are available to you on Canvas. Key fields you might be interested in are make, model, location, price, time_posted, and odometer.
The data for these tasks are on Moodle in this assignment’s section, saved in a workbook under “Carbitrage Raw Data”. This data is pretty large, with more than 10 columns and 388,663 rows. You’ll want to do some data cleaning and data summarization for the particular visualization you work on. Let me know if you are having a hard time making a particular summarization of the data and I can help you. Data similar to these will be the data underlying the dashboard assignment.
Note, most of this data is scraped directly from Craiglist listings and it can be super messy and unreliable. People routinely misspell car models, put fake mileages (e.g., 0), and prices (e.g., $1 or $1234). You are expected to do some quality control on this so that you do not plot data that makes no sense. Feel free to ask me and classmates for more information if you are confused about what to do.
Carbitrage Visualization Tasks
• (Easy) Build a visualization that illustrates what makes and models of cars are most popular.
• (Easy) Build a visualization that illustrates the rate at which new cars are posted by day or by week. Optionally, add information on location.
• (Easy) Build a visualization that communicates the different rates at which cars are posted across the Craigslist locations. For instance, you could look at number of posts per week for a set of locations.
• (Medium) Build a visualization that attempts to answer this question: When do cars tend to be posted by location? Highlight an interesting feature of the data.
• (Difficult) Ultimately, one way people will interact with this data set is when they arrive at a hosted site that helps them understand car prices and helps them find a good deal on a car. For this task, assume that the user has given you a make and model to focus on and optionally, a range of years. Create a visualization that captures the interplay between age and mileage for a given make and model.
The Dram Shop
The Dram Shop is a tap house in Missoula, selling beer, wine, cider, and kombucha. We work with their data to help them run their business more effectively and efficiently. The data for the Dram Shop is available on Canvas. These data only cover a period through last autumn—I’m still working on putting together the data set we’ll use for the presentation assignment. There are several sheets in this document that I believe will cover the use cases for the visualizations below but let me know if you’d like to see the data a different way.

Dram Visualization Tasks
• (Easy) Build a visualization that illustrates the popularity of various beer types (in the Category field) over time.
• (Easy) Build a visualization that illustrates the patterns in purchases by day of week for both the Front Street and Central locations.
• (Easy) Build a visualization that illustrates the patterns in purchases by time of day for both the Front Street and Central locations. Feel free to limit your analysis to either working days (M-Th) or weekends (Fr-Su).
• (Medium) Build a visualization that compares the performance of the two locations (Front and Central) across the entire history of the Dram Shop.
• (Difficult) Build a visualization that explores trends in beer consumption. (I recommend you use the “category” data in the spreadsheets, but if you would like item-level data, let me know.) Your goal is to analyze the types of beers that consumers are purchasing and build a visualization that highlights patterns you have found.
City of Missoula Unhoused Data
We partner with the city of Missoula’s “Community Planning, Development, and Innovation” (CPDI) department and specifically with the Community Development Division. The city has worked for years to better understand and monitor Missoula’s unhoused population. As part of this effort, they joined the Homeless Management Information System (HMIS) data collection effort and have created a coordinated entry system. They have graciously made this data available for our use. The data is available on Canvas. This data is similar to the data we will analyze for the “report” section of our class.
City Visualization Tasks
• (Easy) Build a visualization that explores an aspect of client age, potentially across time.
• (Easy) Build a visualization that visualizes the annual pattern of entries into the HMIS.
• (Easy) Build a visualization demonstrating the change across time in the unhoused
population.
• (Medium) Build a visualization that illustrates the demographic make-up of clients across
ages and genders.
• (Difficult) Clients can enter the HMIS multiple times if they have multiple periods
unhoused. For each client, calculate their total time in the system. Build a visualization that explores this measure of unhoused duration and illustrates a facet of the data that you think merits discussion in our report at the end of the semester.
Submission instructions
Submit your visualizations in a PDF by the due date indicated on Canvas. Don’t hesitate to reach out to me with questions.
