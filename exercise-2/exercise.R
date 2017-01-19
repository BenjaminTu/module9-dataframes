# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
# Hint: use the `paste()` function to produce the list
	employee <- c(paste("Employee",1 : 100))

# Create a vector of 100 random salaries for the year 2014
# Use the `runif()` function to pick a random number between 40000 and 50000
	salary.2014 <- c(runif(100, 40000, 50000))

# Create a vector of 100 salaries in 2015 that have increased from 2014 by some amount
# Hint: use `runif()` to add a random number to 2014's salaries. Starting from a
# _negative_ number so that salaries may decrease!
	salary.2015 <-c(runif(100, -5000, 5000))  + salary.2014

# Create a data.frame 'salaries' by combining the 3 vectors you just made
# Remember to set `stringsAsFactors=FALSE`!
	my.data <- data.frame(employee, salary.2014, salary.2015, stringsAsFactors = FALSE)

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
	my.data$raise <- salary.2015 - salary.2014

# Create a column 'got.raise' that is TRUE if the person got a raise
	my.data$got.raise <- my.data$raise > 0

### Retrieve values from your data frame to answer the following questions
### Note that you should get the value as specific as possible (e.g., a single
### cell rather than the whole row!)

# What was the 2015 salary of employee 57
	my.data["57", "salary.2015"]

# How many employees got a raise?
	length(my.data$got.raise[my.data$got.raise])

# What was the value of the highest raise?
	max.raise <- max(my.data["raise"])

# What was the "name" of the employee who received the highest raise?
	my.data$employee[my.data$raise == max.raise]

# What was the largest decrease in salaries between the two years?
	min.raise <- min(my.data["raise"])

# What was the name of the employee who recieved largest decrease in salary?
	my.data$employee[which(my.data$raise == min.raise)]
# What was the average salary increase?
	mean(my.data$raise[1:100])

### Bonus ###

# Write a .csv file of your salaries to your working directory
	write.csv(my.data, 'my_data.csv')

# For people who did not get a raise, how much money did they lose?
	sum(my.data$raise[!my.data$got.raise[1:100]])	

# Is that what you expected them to lose based on how you generated their salaries?
	#IDK