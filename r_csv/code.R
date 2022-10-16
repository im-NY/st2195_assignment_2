library(rvest)
library(dplyr)

website <- read_html('https://en.wikipedia.org/wiki/Comma-separated_values') # Reads in the source code
scraped_table <- website %>% html_elements('.wikitable') %>% html_table() %>% .[[1]]
scraped_table

# Writing to csv
write.csv(scraped_table, file = 'cars.csv', row.names=FALSE)

# Read the csv
cars <- read.csv('cars.csv')
cars
#F