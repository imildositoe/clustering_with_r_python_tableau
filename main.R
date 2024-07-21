# Import necessary libraries
library(ggplot2)

# Defining data for the dataframe
data <- data.frame(
  Basket = c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P'),
  Apples = c(10, 20, 30, 56, 40, 40, 67, 47, 40, 4, 49, 52, 5, 56, 35, 45),
  Bananas = c(15, 6, 3, 45, 67, 44, 45, 11, 14, 18, 13, 12, 1, 34, 12, 12)
)

# Calculate the sums
sum_apples <- sum(data$Apples)
sum_bananas <- sum(data$Bananas)

# Print the dataframe
print(data)

# Create a data frame for the sums
sums_data <- data.frame(
  Fruit = c('Apples', 'Bananas'),
  Total = c(sum_apples, sum_bananas)
)

# Create a bar chart
ggplot(sums_data, aes(x = Fruit, y = Total, fill = Fruit)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c('red', 'blue')) +
  ggtitle('Comparison of total Apples and Bananas') +
  theme_minimal()
